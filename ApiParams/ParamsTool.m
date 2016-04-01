//
//  ParamsTool.m
//  ApiParams
//
//  Created by miao on 16/4/1.
//  Copyright © 2016年 miao. All rights reserved.
//

#import "ParamsTool.h"
#import "UIDevice+Hardware.h"
#include <CoreTelephony/CoreTelephonyDefines.h>
#import <CoreTelephony/CTCarrier.h>
#import <CoreTelephony/CTTelephonyNetworkInfo.h>

@implementation ParamsTool

+ (NSString *)carriername
{
    CTTelephonyNetworkInfo *netInfo = [[CTTelephonyNetworkInfo alloc] init];
    CTCarrier *carrier = [netInfo subscriberCellularProvider];
    NSString *name;
    if (carrier == nil) {
        name = @"WiFi";
    }else {
        name = [carrier carrierName];
    }
    return name;
}

+ (NSString *)client_v
{
       return  [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"];
}

+ (NSString *)devicename
{
    return [[UIDevice currentDevice] model] ;
}

+ (NSString *)macid
{
    return [UIDevice macAddress];
}

+ (NSString *)os
{
    return @"ios";
}

+ (NSString *)osversion
{
   return [UIDevice systemVersion];
}

+ (NSString *)screenwidth
{
    NSInteger width = [UIScreen mainScreen].bounds.size.width * [UIScreen mainScreen].scale;
    return [NSString stringWithFormat:@"%ld",width];
}

+ (NSString *)screenheight
{
    NSInteger height = [UIScreen mainScreen].bounds.size.height * [UIScreen mainScreen].scale;
    return [NSString stringWithFormat:@"%ld",height];
}

+ (NSString *)sourceId
{
    return @"1001";
}

+ (NSString *)timereq
{
   NSDate *date =  [NSDate date];
    NSDateFormatter *formatter = [NSDateFormatter new];
    formatter.dateFormat = @"yyyyMMddHHmmssSSS";
    return [formatter stringFromDate:date];
}

+ (NSString *)wantype
{
    NSArray *subviews = [[[[UIApplication sharedApplication] valueForKey:@"statusBar"] valueForKey:@"foregroundView"]subviews];
    NSNumber *dataNetworkItemView = nil;
    
    for (id subview in subviews) {
        if([subview isKindOfClass:[NSClassFromString(@"UIStatusBarDataNetworkItemView") class]]) {
            dataNetworkItemView = subview;
            break;
        }
    }
    
    NSString *type;
    switch ([[dataNetworkItemView valueForKey:@"dataNetworkType"]integerValue]) {
        case 0:
            type = @"No wifi or cellular";
            break;
            
        case 1:
            type = @"2G";
            break;
            
        case 2:
            type = @"3G";
            break;
            
        case 3:
            type = @"4G";
            break;
            
        case 4:
            type = @"LTE";
            break;
            
        case 5:
            type = @"Wifi";
            break;
            
            
        default:
            break;
    }
    return type;
}

+ (NSString *)udid
{
    return nil;
}
@end
