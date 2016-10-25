//
//  HomeViewController.m
//  一个
//
//  Created by xiayuanqun on 16/10/10.
//  Copyright © 2016年 xiayuanqun. All rights reserved.
//

#import "HomeViewController.h"
#import "MJShareItem.h"
@interface HomeViewController ()


@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}
- (IBAction)ShareClick:(UIButton *)sender {
    NSArray *imageArray= @[[UIImage imageNamed:@"滑稽.jpg"],[UIImage imageNamed:@"滑稽.jpg"],[UIImage imageNamed:@"滑稽.jpg"],[UIImage imageNamed:@"滑稽.jpg"],[UIImage imageNamed:@"滑稽.jpg"],[UIImage imageNamed:@"滑稽.jpg"],[UIImage imageNamed:@"滑稽.jpg"],[UIImage imageNamed:@"滑稽.jpg"],[UIImage imageNamed:@"滑稽.jpg"]];
    NSMutableArray *mArray = [[NSMutableArray alloc]init];
    int i= 0;
    for(UIImage *image in imageArray){
        //本地路径
        NSString *str = NSSearchPathForDirectoriesInDomains(NSCachesDirectory,NSUserDomainMask,YES).firstObject;
        NSString *filePath = [NSString stringWithFormat:@"%@/huaji%d.jpg",str,i];
        //保存本地
        [UIImagePNGRepresentation(image) writeToFile:filePath atomically:YES];
        
        NSURL *fileURL = [NSURL fileURLWithPath:filePath];
        //把图片和路劲传进来
        MJShareItem *item = [[MJShareItem alloc] initWithImage:image andfile:fileURL];
        [mArray addObject:item];
        i++;
    }
    //里面initWithActivityItems  传的是数组  如何直接用图片数组的话  会经常出现 微信断开的错误
    UIActivityViewController *activityView = [[UIActivityViewController alloc]initWithActivityItems:mArray applicationActivities:nil];
    //需要忽略的分享
    //    activityView.excludedActivityTypes = @[UIActivityTypePrint, UIActivityTypeCopyToPasteboard,UIActivityTypeAssignToContact,UIActivityTypeSaveToCameraRoll,UIActivityTypePostToFacebook,UIActivityTypePostToTwitter,UIActivityTypePostToWeibo
    //                                           ,UIActivityTypeMessage
    //                                           ,UIActivityTypeMail,UIActivityTypePrint,UIActivityTypeCopyToPasteboard,UIActivityTypeAssignToContact,
    //                                           UIActivityTypeSaveToCameraRoll,UIActivityTypeAddToReadingList,UIActivityTypePostToFlickr,
    //                                                                                       UIActivityTypePostToVimeo,UIActivityTypePostToTencentWeibo,UIActivityTypeAirDrop,UIActivityTypeOpenInIBooks
    //                                           ];
    activityView.restorationIdentifier = @"activity";
    [activityView setTitle:@"分享"];
    [self presentViewController:activityView animated:TRUE completion:nil];

    
}
- (IBAction)XiaoJiClick:(UIButton *)sender {
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
