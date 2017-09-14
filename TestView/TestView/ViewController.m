//
//  ViewController.m
//  TestView
//
//  Created by 赵博 on 2017/9/14.
//  Copyright © 2017年 赵博. All rights reserved.
//

#import "ViewController.h"
#import "RegistSuccessView.h"
#import "OtherViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    // Do any additional setup after loading the view, typically from a

}
- (IBAction)click:(id)sender {
    [RegistSuccessView showView:self.view dismissTime:3 success:^(bool isSuccess) {
        OtherViewController *other = [[OtherViewController alloc] init];
        [self.navigationController pushViewController:other animated:YES];
        
    }];

    
}

@end
