//
//  ONEViewController.m
//  一个
//
//  Created by xiayuanqun on 16/10/10.
//  Copyright © 2016年 xiayuanqun. All rights reserved.
//

#import "ONEViewController.h"
#import "SearchoneViewController.h"
#import "UserViewController.h"
#import "OneConst.h"
#import "UserViewController.h"
@interface ONEViewController ()

@end

@implementation ONEViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //第一种写法
//    UIBarButtonItem *item = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"zoomoutsolids.png"] style:UIBarButtonItemStyleBordered target:self action:@selector(ViewChangeTo_Search)];
//    item.enabled = YES;
//    item.tintColor = [UIColor grayColor];
//    self.navigationItem.leftBarButtonItem = item;
    //第二种写法
     self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"zoomoutsolids.png"] style:UIBarButtonItemStyleBordered target:self action:@selector(ViewChangeTo_Search)];
     self.navigationItem.leftBarButtonItem.tintColor = PICColor;
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"个人.png"] style:UIBarButtonItemStyleBordered target:self action:@selector(ViewChangeTo_UserInfo)];
    self.navigationItem.rightBarButtonItem.tintColor = PICColor;
   // self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemSearch target:self action:@selector(ViewChangeTo_Search)];
 //   self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemSave target:self action:@selector(ViewChangeTo_Search)];
    

    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
    
}
-(void) ViewChangeTo_Search{
   SearchoneViewController *searchVC = [self.storyboard instantiateViewControllerWithIdentifier:@"SearchVC"];
   // 　SearchoneViewController * searchVC=[[SearchoneViewController alloc]init];
    
    　　 [self presentViewController:searchVC animated:YES completion:^{
        
        NSLog(@"present成功，从ViewController切换到FirstViewController");//此方法调用了会执行这行代码
        
    }];
   
}
-(void) ViewChangeTo_UserInfo{
    UserViewController *userVC = [self.storyboard instantiateViewControllerWithIdentifier:@"UserVC"];
    [userVC setHidesBottomBarWhenPushed:YES];
    [self.navigationController pushViewController:userVC animated:YES];
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
