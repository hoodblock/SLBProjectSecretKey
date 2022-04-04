//
//  SLBProjectSecretKeyEncryptionTools.h
//  SLBProjectSecretKeySDK
//
//  Created by mac on 2022/2/9.
//

#import <Foundation/Foundation.h>
#import <CommonCrypto/CommonCrypto.h>

NS_ASSUME_NONNULL_BEGIN

@interface SLBProjectSecretKeyEncryptionTools : NSObject

/**
 *  AES加密
 *
 *  @param string    要加密的字符串
 *  @param keyString 加密密钥
 *  @param iv        初始化向量(8个字节)
 *
 *  @return 返回加密后的base64编码字符串
 */
+ (NSString *)aesEncryptString:(NSString *)string keyString:(NSString *)keyString iv:(NSData *)iv;

/**
 *  AES解密
 *
 *  @param string    加密并base64编码后的字符串
 *  @param keyString 解密密钥
 *  @param iv        初始化向量(8个字节)
 *
 *  @return 返回解密后的字符串
 */
+ (NSString *)aesDecryptString:(NSString *)string keyString:(NSString *)keyString iv:(NSData *)iv;

/**
 *  DES加密
 *
 *  @param string    要加密的字符串
 *  @param keyString 加密密钥
 *  @param iv        初始化向量(8个字节)
 *
 *  @return 返回加密后的base64编码字符串
 */
+ (NSString *)desEncryptString:(NSString *)string keyString:(NSString *)keyString iv:(NSData *)iv;

/**
 *  DES解密
 *
 *  @param string    加密并base64编码后的字符串
 *  @param keyString 解密密钥
 *  @param iv        初始化向量(8个字节)
 *
 *  @return 返回解密后的字符串
 */
+ (NSString *)desDecryptString:(NSString *)string keyString:(NSString *)keyString iv:(NSData *)iv;

/**
 *  RSA 加密
 *
 *  @param string    加密并base64编码后的字符串
 *  @param keyString  加密公钥
 *  @return 返回加密后的字符串
 */
+ (NSString *)rsaEncryptString:(NSString *)string keyString:(NSString *)keyString;

/**
 *  RSA 加密
 *
 *  @param data    data数据
 *  @param keyString  加密公钥
 *  @return 返回加密data数据对象
 */
+ (NSData *)rsaEncryptData:(NSData *)data keyString:(NSString *)keyString;

/**
 *  RSA 解密
 *
 *  @param string    需要解密的数据
 *  @param keyString  解密私钥
 *  @return 返回加密后的字符串
 */
+ (NSString *)rsaDecryptString:(NSString *)string keyString:(NSString *)keyString;

/**
 *  RSA 解密
 *
 *  @param data    需要解密的数据
 *  @param keyString  解密私钥
 *  @return 返回加密后的数据
 */
+ (NSData *)rsaDecryptData:(NSData *)data keyString:(NSString *)keyString;

@end

NS_ASSUME_NONNULL_END
