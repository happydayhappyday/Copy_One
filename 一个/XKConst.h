//
//  XKConst.h
//  iSwust
//
//  Created by WayneLiu on 16/2/27.
//  Copyright (c) 2016年 weixvn. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MBProgressHUD.h"
#import "XKHttpConst.h"
#import "TalkingData.h"


#ifdef DEBUG
#define XKLog(FORMAT, ...)  fprintf(stderr,"%s:%d\t%s\t%s\n",[[[NSString stringWithUTF8String:__FILE__] lastPathComponent] UTF8String], __LINE__, __func__,[[NSString stringWithFormat:FORMAT, ##__VA_ARGS__] UTF8String]);
#else
#define XKLog(FORMAT, ...) nil
#endif


#define XKColor(r,g,b,a) [UIColor colorWithRed:r/255.0f green:g/255.0f blue:b/255.0f alpha:a]
#define XKRGB(r,g,b) XKColor(r,g,b,1.0f)


#define XKWeather XKColor(140,207,231,1)
#define XKTintRGBA XKColor(65,184,231,1)

#define XKGlobalBg XKColor(81, 81, 81, 1)    //XKColor(29, 200, 248, 1)
#define XKNotificationCenter [NSNotificationCenter defaultCenter]

//plist固定表
//#define AdsPlistPath  [[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)objectAtIndex:0]stringByAppendingPathComponent:@"Ads.plist"];

#define XKItemH 25
#define XKItemW (XK_SCREEN_WIDTH-padding*(itemPerLine+1))/itemPerLine
#define itemPerLine 4
#define XKListBarH 32
#define XKArrowW 40
#define XKAnimationTime 0.8

#define requrstOldNews 2
#define requestNewNews 1
#define XKListBarH 32
//获取屏幕 宽度、高度
#define XK_SCREEN_WIDTH ([UIScreen mainScreen].bounds.size.width)
#define XK_SCREEN_HEIGHT ([UIScreen mainScreen].bounds.size.height)

/**
 *  课表UI
 */
#define kStatusHeight 20
#define kScreenW [UIScreen mainScreen].bounds.size.width
#define kScreenH [UIScreen mainScreen].bounds.size.height
#define RGBColor(r,g,b) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1.0]
#define RGBColorAlpha(r,g,b,a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:(a)]

typedef enum{
    topViewClick = 0,
    FromTopToTop = 1,
    FromTopToTopLast = 2,
    FromTopToBottomHead = 3,
    FromBottomToTopLast = 4
}animateType;



//#define Api_key @"K9okinPSIOLcyY6qDJAA09w2rWffkKCF"
//#define Secret_Key @"ilHie7HYD4i7w5H45663MButJ41LAuuR"


extern NSString * const XKUpdateNoticeMessageCountNotification;
extern NSString * const XKUpdateNoticeMessageCountName;
extern NSString * const XKRefleshData;

