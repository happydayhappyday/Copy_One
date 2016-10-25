//
//  ReadViewController.m
//  一个
//
//  Created by xiayuanqun on 16/10/10.
//  Copyright © 2016年 xiayuanqun. All rights reserved.
//

#import "ReadViewController.h"
#import "XMGPageView.h"
#import "ONEConst.h"
@interface ReadViewController ()
@property (nonatomic, strong) XMGPageView *pageView;
@end

@implementation ReadViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    XMGPageView *pageView = [XMGPageView pageView];
    pageView.frame = CGRectMake(0, 64, ONE_SCREEN_WIDTH, 150);
    pageView.imageNames = @[@"img_00", @"img_01", @"img_02", @"img_03", @"img_04"];
    pageView.otherColor = [UIColor grayColor];
    pageView.currentColor = [UIColor orangeColor];
    [self.view addSubview:pageView];
    self.pageView = pageView;
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
