//
//  UserViewController.m
//  一个
//
//  Created by xiayuanqun on 16/10/18.
//  Copyright © 2016年 xiayuanqun. All rights reserved.
//

#import "UserViewController.h"

@interface UserViewController ()

@end

@implementation UserViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.ShowTableview.delegate = self;
    self.ShowTableview.dataSource = self;
    //去掉多余的cell线
    self.ShowTableview.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
}

- (IBAction)GobackClick:(UIButton *)sender {
    NSLog(@"你点击了");
    [self.navigationController popViewControllerAnimated:YES];

}
- (IBAction)ToXiaojiClick:(UIButton *)sender {
    NSLog(@"跳转到小记");
}
- (IBAction)ToGedanClick:(UIButton *)sender {
     NSLog(@"跳转到歌单");
}

- (IBAction)To:(UIButton *)sender {
      NSLog(@"跳转到vhfjk");
}



-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 0;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)sectio
{
    return 6;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
}

-(void)viewWillAppear:(BOOL)animated{
    [self.navigationController setNavigationBarHidden:YES animated:animated];
    [super viewWillAppear:animated];
}
-(void)viewWillDisappear:(BOOL)animated{
    [self.navigationController setNavigationBarHidden:NO animated:animated];
    [super viewWillDisappear:animated];
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
