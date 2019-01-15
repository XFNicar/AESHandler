//
//  AESHandler.h
//  XFDESTool
//
//  Created by YanYi on 2018/12/1.
//  Copyright © 2018 YanYi. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AESHandler : NSObject



/**
 偏移量 该方法需要重写

 @return 偏移量字符串
 */
+ (NSString *)kAESCryptorIV;


/**
 密码值 该方法需要重写

 @return 密码值
 */
+ (NSString *)kAESCryptorKEY;


// 将经过aes加密的对象 （NSString / NSData）
+ (NSString *)decryptorAESObject:(id)AESObject ;

// 返回经过AES加密的 Data

/**
 将data 转化为 经过AES加密的data

 @param data 未加密的data
 @return AES加密的data
 */
+ (NSData *)getAESDataWithData:(NSData *)data;


/**
 将 string 转化为 经过AES 加密的 data

 @param string 未加密的string
 @return AES加密的data
 */
+ (NSData *)getAESDataWithString:(NSString *)string;

// 返回经过AES加密的 String


/**
 将data 转化为 AES 加密的 string

 @param data data
 @return AES加密的data
 */
+ (NSString *)getAESStringWithData:(NSData *)data;


/**
 将 string 转化为AES加密的 string

 @param string string
 @return AES加密的data
 */
+ (NSString *)getAESStringWithString:(NSString *)string;

// 返回经过AES解密的 Data

/**
 将经过AES加密的data转化成未加密的data

 @param AESData AES 加密的data
 @return 未加密的data
 */
+ (NSData *)getDataWithAESData:(NSData *)AESData ;


/**
 将经过AES加密的string 转化为为加密的data

 @param AESString AES 加密的string
 @return 未加密的data
 */
+ (NSData *)getDataWithAESString:(NSString *)AESString ;

// 返回经过AES解密的 String


/**
 将 AES加密的data转化为string

 @param AESData AES加密的data
 @return string
 */
+ (NSString *)getStringWithAESData:(NSData *)AESData ;


/**
 将AES加密的string转化为string

 @param AESString AESstring
 @return string
 */
+ (NSString *)getStringWithAESString:(NSString *)AESString ;

@end

NS_ASSUME_NONNULL_END
