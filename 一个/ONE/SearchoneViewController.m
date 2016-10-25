//
//  SearchoneViewController.m
//  一个
//
//  Created by xiayuanqun on 16/10/11.
//  Copyright © 2016年 xiayuanqun. All rights reserved.
//

#import "SearchoneViewController.h"
#import "ONEConst.h"
@interface SearchoneViewController ()<UISearchBarDelegate>

@end

@implementation SearchoneViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.SearchBar becomeFirstResponder];//search自动获取焦点;
    self.SearchBar.delegate = self;//添加代理
   
    self.SearchBar.tintColor = WDColor;//修改字的颜色  还有取消按钮的字体颜色
    //将cancel改成取消
    [[UIBarButtonItem appearanceWhenContainedIn: [UISearchBar class], nil] setTitle:@"取消"];
}
//触发search 按钮
-(void)searchBarCancelButtonClicked:(UISearchBar *)searchBar
{
    [self cancelSearch];
    
}
-(IBAction) cancelSearch
{
    [self dismissViewControllerAnimated:YES completion:^{
        
        NSLog(@"dismiss成功，从FirstViewController返回到ViewController");
        
    }];
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
