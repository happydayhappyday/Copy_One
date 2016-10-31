//
//  UserViewController.h
//  一个
//
//  Created by xiayuanqun on 16/10/18.
//  Copyright © 2016年 xiayuanqun. All rights reserved.
//

#import <UIKit/UIKit.h>





@interface UserViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *ShowTableview;

@end
