//
//  NSString+AES.h
//  XFDESTool
//
//  Created by YanYi on 2018/12/1.
//  Copyright © 2018 YanYi. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN


@interface NSString (AES)


#pragma mark - base64
+ (NSString*)encodeBase64String:(NSString *)input;
+ (NSString*)decodeBase64String:(NSString *)input;

+ (NSString*)encodeBase64Data:(NSData *)data;
+ (NSString*)decodeBase64Data:(NSData *)data;

#pragma mark - AES加密
//将string转成加密的string
+ (NSString*)encryptAESString:(NSString*)string key:(NSString *)key giv:(NSString *)giv;
//将带密码的data转成string
+ (NSString*)decryptAESString:(NSString*)string key:(NSString *)key giv:(NSString *)giv;

@end

NS_ASSUME_NONNULL_END
