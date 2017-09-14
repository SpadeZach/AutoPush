//
//  RegistSuccessView.m
//  TestView
//
//  Created by 赵博 on 2017/9/14.
//  Copyright © 2017年 赵博. All rights reserved.
//

#import "RegistSuccessView.h"
#import "SetHexColor.h"
#import "UIView+CustomSize.h"
@implementation RegistSuccessView

+ (void)showView:(UIView *)parentview dismissTime:(NSInteger)time success:(void (^)(bool))success{
    
    
    
    UIView *transparentView = [UIView new];
    transparentView.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height);
    transparentView.backgroundColor = [UIColor colorWithWhite:0 alpha:0.4];
    
    UIView *whiteView = [UIView new];
    whiteView.frame =CGRectMake([UIScreen mainScreen].bounds.size.width / 2 - 125, 200, 250, 120);
    whiteView.backgroundColor = [UIColor whiteColor];
    whiteView.layer.masksToBounds = YES;
    whiteView.layer.cornerRadius = 3;
    [transparentView addSubview:whiteView];
    
    
    //图片
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"welcome"]];
    imageView.frame = CGRectMake(whiteView.custom_width / 2 - 20, 20, 40, 40);
    [whiteView addSubview:imageView];
    
    //文字
    UILabel *lable = [UILabel new];
    lable.text = @"注册成功，欢迎使用xxx";
    lable.font = [UIFont systemFontOfSize:15];
    lable.textAlignment = NSTextAlignmentCenter;
    lable.textColor = [SetHexColor colorWithHexString:@"#333333"];
    lable.frame = CGRectMake(0, imageView.custom_botton + 15, whiteView.custom_width, 20);
    [whiteView addSubview:lable];
    [parentview addSubview:transparentView];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(time * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [transparentView removeFromSuperview];
        [whiteView removeFromSuperview];
        [imageView removeFromSuperview];
        [lable removeFromSuperview];
        success(true);
        
    });
    
    
}
@end
