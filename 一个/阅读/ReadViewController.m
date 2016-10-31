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
#import "ReadTableViewCell.h"
@interface ReadViewController ()
{
    ReadTableViewCell *cell_read;
}
@property (nonatomic, strong) XMGPageView *pageView;
@end

@implementation ReadViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.ReadTableView.delegate =self;
    self.ReadTableView.dataSource = self;
    
    XMGPageView *pageView = [XMGPageView pageView];
    pageView.frame = CGRectMake(0, 64, ONE_SCREEN_WIDTH, 150);
    pageView.imageNames = @[@"img_00", @"img_01", @"img_02", @"img_03", @"img_04"];
    pageView.otherColor = [UIColor grayColor];
    pageView.currentColor = [UIColor orangeColor];
    [self.view addSubview:pageView];
    self.pageView = pageView;
}
-(NSInteger )tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 3;
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    if(cell_read == nil){
        cell_read = [tableView dequeueReusableCellWithIdentifier:@"ReadCell"];
    }
    NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"ReadTableViewCell" owner:nil options:nil];
    cell_read = [nib objectAtIndex:0];
    cell_read.Title.text = @"邱驴打官司";
    cell_read.Author.text = @"囧叔";
    cell_read.Summary.text = @"到底是先有钱，还是先不要脸";
    
    
    if(indexPath.row == 0)
        [cell_read.TypeButton setTitle:@"短篇" forState:UIControlStateNormal];
       // cell_read.TypeButton.titleLabel.text = @"短篇";
    else if (indexPath.row == 1)
         [cell_read.TypeButton setTitle:@"连载" forState:UIControlStateNormal];
    else
         [cell_read.TypeButton setTitle:@"问答" forState:UIControlStateNormal];
    return cell_read;
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
