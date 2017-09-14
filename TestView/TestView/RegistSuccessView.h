//
//  RegistSuccessView.h
//  TestView
//
//  Created by 赵博 on 2017/9/14.
//  Copyright © 2017年 赵博. All rights reserved.
//


#import <UIKit/UIKit.h>
@interface RegistSuccessView : NSObject


/**
 跳转

 @param parentview 父视图
 @param time 几秒之后跳转
 @param success 成功返回
 */
+  (void)showView:(UIView *)parentview dismissTime:(NSInteger)time success:(void(^)(bool isSuccess))success;
@end
