//
//  UserViewController.m
//  一个
//
//  Created by xiayuanqun on 16/10/18.
//  Copyright © 2016年 xiayuanqun. All rights reserved.
//

#import "UserViewController.h"
#import "UserTableViewCell.h"
@interface UserViewController (){
    UserTableViewCell *cell_User;
    NSArray *typeArray1;
    NSArray *typeArray2;
}

@end

@implementation UserViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.ShowTableview.delegate = self;
    self.ShowTableview.dataSource = self;
    self.ScrollView.delegate = self;
    //去掉多余的cell线
    self.ShowTableview.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
    
     typeArray1= [[NSArray alloc]initWithObjects:@"图文",@"文章",@"电影",@"消息",@"夜间模式",@"其他设置",nil];
     //typeArray2= [[NSArray alloc]initWithObjects:, nil];
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
    return 2;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if(section == 0)
        return 4;
    else
        return 2;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    if(cell_User ==nil){
        cell_User = [tableView dequeueReusableCellWithIdentifier:@"UserCell"];
    }
    
    NSArray *nib = [[NSBundle mainBundle]loadNibNamed:@"UserTableViewCell" owner:nil options:nil];
    cell_User = [nib objectAtIndex:0];
    cell_User.typetext.text = [typeArray1 objectAtIndex:indexPath.row];
    
    
    return cell_User;
}
-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    if(section == 0)
        return @"收藏";
    else
        return @"设置";
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
