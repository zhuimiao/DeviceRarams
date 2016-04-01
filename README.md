# DeviceRarams
Various parameters of IOS device

## 运营商
### 中国移动，中国联通，中国电信，wifi
+ (NSString *)carriername;

## 客户端版本号
###  1.0  2.0

+ (NSString *)client_v;

##  设备名称
### 老王的iphone

+ (NSString *)devicename;

## mac地址
### 只有ios6以下能取到

+ (NSString *)macid;

## android,iphone
### iphone

+ (NSString *)os;

##  ios版本号
### 9.3
+ (NSString *)osversion;


##  分辨率-宽度
###  @return 2208
+ (NSString *)screenwidth;


##  分辨率-高度
### 1242
+ (NSString *)screenheight;


##  渠道号
### 1001（AppStore）
+ (NSString *)sourceId;


## 时间戳
###   @"20160123112234555"
+ (NSString *)timereq;


## 网络类型
### wifi,4g,3g,2g
+ (NSString *)wantype;

##  用户设备唯一标识符
### xxxxxxx
+ (NSString *)udid;
