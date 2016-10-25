//
//  XKHttpConst.h
//  iSwust
//
//  Created by WayneLiu on 16/2/29.
//  Copyright (c) 2016年 weixvn. All rights reserved.
//

#import <Foundation/Foundation.h>

//#define URL_XKHttpHostUrl @"https://api.iswust.cn/rest"
//#define XKHttpHostUrl @"http://api.iswust.cn/rest"
//#define URL_XKHttpHostUrl @"http://192.168.31.130:8080/iswustserver/iswust/"
//#define URL_XKHttpHostUrl @"http://192.168.31.44:8089/iswustserver/"

//#define URL_XKHttpHostUrl @"http://192.168.31.23:2000/iswustserver/"

//#define URL_XKHttpHostUrl @"http://192.168.31.88:8080/iswustserver/"
//
#define URL_XKHttpHostUrl @"http://115.28.71.12:8080/iswustserver/"
//#define URL_Library_Login @"http://202.115.162.45:8080/reader/redr_verify.php"
#define URL_ECard_Login1 @"http://ecard.swust.edu.cn/web/guest/home;jsessionid="
#define URL_ECard_Login2 @"?p_p_id=ext_login_png&p_p_action=1&p_p_state=normal&p_p_mode=view&p_p_col_id=column-1&p_p_col_count=1&_ext_login_png_struts_action=%2Fext%2Fextloginview&_ext_login_png_cmd=update"
#define ECard_login_cookie_Domain @"ecard.swust.edu.cn"
#define SysTem_Library 4

//////////加密相关//////////////
#define VERSION @"2.0"
//#define APP_KEY @"test"
#define APP_KEY @"K9okinPSIOLcyY6qDJAA09w2rWffkKCF"
#define Secret_Key @"ilHie7HYD4i7w5H45663MButJ41LAuuR"
/////////////////////////////////
//192.168.31.192



/**
 *  接口宏定义
 */


typedef enum{
    //login
    IswustRegister ,
    IswustSynchUserInfo,
    IswustChangePassword,
//    IswustFindPassword,
    
    ////刷新用户凭证
    IswustRefreshToken,
    
    IswustLogin,
    IswustLogout,
    /**
     *  本实例以"获取成绩"接口为标准,后面各位对应完善自己负责部分
     */
    IswustGetScore,
    //图书馆
	IswustLibraryInfo,
	IswustLibraryBorrow,
    IswustLibraryBorrow1,
	IswustLibraryBookDetail,
	IswustLibraryBookSearch,
	IswustLibraryRecommend,
    //课表
    IswustGetSchedule,
    IswustLabSchedule,
    IswustDownSchedule,
    ///绩点接口；
    IswustGetGradePoint,
    ////考试讯息接口；
    IswustGetExamData,
    
    IswustAccountSystem,
    
    IswustGetEcardDate,//一卡通起始日期
    IswustGetEcardDetail,//一卡通详细信息
    IswustEcardLost,//一卡通挂失
    IswustGetNewsChannel,
    IswustGetUserInfo,//用户信息
    IswustGetTeacherInfo,//用户信息
    IswustGetNewsList,
    IswustGetNewsDetails,
    
    //联系方式绑定
    IswustContractWay,
    //验证码
    IswustSecretVerify,
    IswustAppUpdate, 
    //GetWeather
}IswustServerIndex;

#define System_Dean 3
#define System_Library 4
#define System_Lab 5
#define System_ECard 6

#define Dean_login_cookie_Domain @".dean.swust.edu.cn"
#define URL_IswustRefreshToken @"iswust/token/refresh"//刷新用户凭证
#define ISwust_Server_cookie_Domain @"iswustservice.duapp.com"
#define URL_IswustGetContractWay @"iswust/contract/bind"
#define URL_IswustLibraryInfo @"iswust/library/info"
#define URL_IswustLibraryBorrow @"iswust/library/borrow"
#define URL_IswustLibraryBorrow1 @"iswust/library/borrow"
#define URL_IswustLibraryBookDetail @"iswust/library/book/detail"
#define URL_IswustLibraryBookSearch @"iswust/library/book/search"
#define URL_IswustLibraryRecommend @"iswust/library/recommend"
#define URL_IswustGetScore @"iswust/dean/score"
#define URL_IswustGetEcardDetail @"iswust/ecard/info"
#define URL_IswustGetGradePoint @"iswust/dean/gradepoint"
#define URL_IswustGetExamData @"iswust/dean/exam"
#define URL_IswustGetSchedule @"iswust/dean/course/search"

#define URL_IswustLabSchedule @"iswust/labcourse/sync"

#define URL_IswustDownSchedule @"iswust/dean/course/sync"
//#define URL_IswustDownSchedule @"345678"
#define URL_IswustGetEcardDate @"iswust/ecard/history"
#define URL_IswustGetNewsChannel @"iswust/news/channels"
#define URL_IswustGetNewsList @"iswust/news/list"
#define URL_IswustGetNewsDetails @"iswust/news/details"
#define URL_IswustEcardLost @"iswust/ecard/reportloss"

#define URL_ISwustRegister @"iswust/account/reg"
#define URL_ISwustLogin @"iswust/account/login"
#define URL_ISwustSynchUserInfo @"SyncUserInfo/action"
#define URL_ISwustChangePassword @"iswust/secret/reset"
#define URL_ISwustFindPassword @"RetrievePaswdAction.action"
#define URL_ISwustlogout @"iswust/account/logout"

#define URL_ISwustGetUserInfo @"iswust/account/sync"
#define URL_ISwustGetTeacherInfo @"iswust/account/syncteacher"
#define URL_ISwustSecretVerify @"iswust/secret/verify"

#define URL_ISwustAppUpdate @"iswust/app/update"

#define URL_ISwustAccountSystem @"iswust/account/bind"


#define SUCCESS @"OPERATION SUCCESS"

//#define URL_GetWeather @"https://api.heweather.com/x3/weather?cityid=CN101270401&key=10c06d08ef0a4a95af46125391498031"


#define Iswust_Login @"login"
#define Iswust_logout @"logout"

#define Register_NEW @"newRegister"
#define Register_OLD @"oldUser"

#define ISwust_USER_Type_Teacher @"Teacher"
#define ISwust_USER_Type_Student @"Student"

#define Dean_Identify @"Identify"

/** 
 *  判断数据解析是否成功
 */
#define URL_DATA_ERROR @"失败"
#define URL_DATA_SUCCESS @"成功"
#define URL_DATA_DB_ERROR @"插入数据库错误"

