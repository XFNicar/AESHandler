//
//  AESHandler.m
//  XFDESTool
//
//  Created by YanYi on 2018/12/1.
//  Copyright © 2018 YanYi. All rights reserved.
//

#import "AESHandler.h"
#import "NSString+AES.h"

// 使用时请先设置 kAESCryptorIV 和 kAESCryptorKEY
//static NSString * const kAESCryptorIV   = @"kAESCryptorIV";
//static NSString * const kAESCryptorKEY  = @"kAESCryptorKEY";

@implementation AESHandler

+ (NSString *)kAESCryptorIV {
    NSLog(@"请重写%s",__func__);
    return  nil;
}

+ (NSString *)kAESCryptorKEY {
    NSLog(@"请重写%s",__func__);
    return  nil;
}

+ (NSString *)decryptorAESObject:(id)AESObject {
    if ([AESObject isKindOfClass:[NSString class]]) {
        return [self getStringWithAESString:AESObject];
    } else if ([AESObject isKindOfClass:[NSData class]]) {
        return [self getStringWithAESData:AESObject];
    } else {
        NSLog(@"解密对象对象不是string或data类型");
        return nil;
    }
}

/**
 将data 转化为 经过AES加密的data
 
 @param data 未加密的data
 @return AES加密的data
 */
+ (NSData *)getAESDataWithData:(NSData *)data {
    NSString *string = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    NSString *aesString = [NSString encryptAESString:string key:[self kAESCryptorKEY] giv:[self kAESCryptorIV]];
    return [aesString dataUsingEncoding:NSUTF8StringEncoding allowLossyConversion:YES];
}


/**
 将 string 转化为 经过AES 加密的 data
 
 @param string 未加密的string
 @return AES加密的data
 */
+ (NSData *)getAESDataWithString:(NSString *)string {
    NSString *aesString = [NSString encryptAESString:string key:[self kAESCryptorKEY] giv:[self kAESCryptorIV]];
    return [aesString dataUsingEncoding:NSUTF8StringEncoding allowLossyConversion:YES];
}

// 返回经过AES加密的 String


/**
 将data 转化为 AES 加密的 string
 
 @param data data
 @return AES加密的data
 */
+ (NSString *)getAESStringWithData:(NSData *)data {
    NSString *string = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    return [NSString encryptAESString:string key:[self kAESCryptorKEY] giv:[self kAESCryptorIV]];
}


/**
 将 string 转化为AES加密的data
 
 @param string string
 @return AES加密的data
 */
+ (NSString *)getAESStringWithString:(NSString *)string {
   return [NSString encryptAESString:string key:[self kAESCryptorKEY] giv:[self kAESCryptorIV]];
}

// 返回经过AES解密的 Data

/**
 将经过AES加密的data转化成未加密的data
 
 @param AESData AES 加密的data
 @return 未加密的data
 */
+ (NSData *)getDataWithAESData:(NSData *)AESData  {
    NSString *aesString = [[NSString alloc] initWithData:AESData encoding:NSUTF8StringEncoding];
    NSString *string = [NSString decryptAESString:aesString key:[self kAESCryptorKEY] giv:[self kAESCryptorIV]];
    return [string dataUsingEncoding:NSUTF8StringEncoding allowLossyConversion:YES];
}


/**
 将经过AES加密的string 转化为为加密的data
 
 @param AESString AES 加密的string
 @return 未加密的data
 */
+ (NSData *)getDataWithAESString:(NSString *)AESString {
    NSString *string = [NSString decryptAESString:AESString key:[self kAESCryptorKEY] giv:[self kAESCryptorIV]];
    return [string dataUsingEncoding:NSUTF8StringEncoding allowLossyConversion:YES];
}

// 返回经过AES解密的 String


/**
 将 AES加密的data转化为string
 
 @param AESData AES加密的data
 @return string
 */
+ (NSString *)getStringWithAESData:(NSData *)AESData  {
    NSString *aesString = [[NSString alloc] initWithData:AESData encoding:NSUTF8StringEncoding];
    return [NSString decryptAESString:aesString key:[self kAESCryptorKEY] giv:[self kAESCryptorIV]];
}


/**
 将AES加密的string转化为string
 
 @param AESString AESstring
 @return string
 */
+ (NSString *)getStringWithAESString:(NSString *)AESString {
    return [NSString decryptAESString:AESString key:[self kAESCryptorKEY] giv:[self kAESCryptorIV]];
}

@end
