//
//  ONENavigationController.m
//  一个
//
//  Created by xiayuanqun on 16/10/10.
//  Copyright © 2016年 xiayuanqun. All rights reserved.
//

#import "ONENavigationController.h"
#import "OneConst.h"

@interface ONENavigationController ()


@end

@implementation ONENavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName :PICColor }];
    self.navigationBar.barTintColor = [UIColor whiteColor];
   
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
