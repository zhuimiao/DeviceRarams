//
//  ParamsTool.h
//  ApiParams
//
//  Created by miao on 16/4/1.
//  Copyright © 2016年 miao. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ParamsTool : NSObject

/**
 *  运营商
 *
 *  @return 中国移动，中国联通，中国电信，wifi
 */
+ (NSString *)carriername;

/**
 *  客户端版本号
 *
 *  @return 1.0  2.0
 */
+ (NSString *)client_v;

/**
 *  设备名称
 *
 *  @return 老王的iphone
 */
+ (NSString *)devicename;

/**
 *  mac地址
 *  只有ios6以下能取到
 */
+ (NSString *)macid;

/**
 *  android,iphone
 *
 *  @return iphone
 */
+ (NSString *)os;

/**
 *  ios版本号
 *
 *  @return 9.3
 */
+ (NSString *)osversion;


/**
 *  分辨率-宽度
 *
 *  @return 2208
 */
+ (NSString *)screenwidth;


/**
 *  分辨率-高度
 *
 *  @return 1242
 */
+ (NSString *)screenheight;


/**
 *  渠道号
 *
 *  @return 1001（AppStore）
 */
+ (NSString *)sourceId;

/**
 *  时间戳
 *
 *  @return @"20160123112234555"
 */
+ (NSString *)timereq;


/**
 *  网络类型
 *
 *  @return wifi,4g,3g,2g
 */
+ (NSString *)wantype;

/**
 *  用户设备广告标识符
 *  @return xxxxxxx
 */
+ (NSString *)idfa;

/**
 *  用户设备供应商标识符
 *
 */
+ (NSString *)idfv;

/**
 *  获取公共参数字符串
 *
 */
+ (NSString *)getCommonParamsString;

/**
 *  获取多盟参数字典
 *
 */
+ (NSDictionary *)getDuoMengParams;

@end
