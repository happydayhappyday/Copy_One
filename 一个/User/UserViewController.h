//
//  UserViewController.h
//  一个
//
//  Created by xiayuanqun on 16/10/18.
//  Copyright © 2016年 xiayuanqun. All rights reserved.
//

#import <UIKit/UIKit.h>





@interface UserViewController : UIViewController<UITableViewDataSource,UITableViewDelegate,UIScrollViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *ShowTableview;
@property (weak, nonatomic) IBOutlet UIScrollView *ScrollView;

@end
