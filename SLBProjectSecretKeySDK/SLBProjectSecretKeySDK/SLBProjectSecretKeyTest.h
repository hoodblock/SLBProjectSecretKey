//
//  SLBProjectSecretKeyTest.h
//  SLBProjectSecretKeySDK
//
//  Created by mac on 2022/2/9.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, SLBProjectSecretKeyType) {
    /// AES  ECB加密
    SLBProjectSecretKeyTypeAESEncryptECB = 0,
    /// AES  ECB解密
    SLBProjectSecretKeyTypeAESDecryptECB = 1,
    /// AES  CBC加密
    SLBProjectSecretKeyTypeAESEncryptCBC = 2,
    /// AES  CBC解密
    SLBProjectSecretKeyTypeAESDecryptCBC = 3,
    /// DES ECB加密
    SLBProjectSecretKeyTypeDESEncryptECB = 4,
    /// DES ECB解密
    SLBProjectSecretKeyTypeDESDecryptECB = 5,
    /// DES CBC加密
    SLBProjectSecretKeyTypeDESEncryptCBC = 6,
    /// DES CBC解密
    SLBProjectSecretKeyTypeDESDecryptCBC = 7,
    /// RSA 加密
    SLBProjectSecretKeyTypeRSAEncryptPublicKey = 8,
    /// RSA 解密
    SLBProjectSecretKeyTypeRSADecryptPrivateKey = 9,
};

NS_ASSUME_NONNULL_BEGIN

@interface SLBProjectSecretKeyTest : NSObject

/**
 description :  加密解密接口
 @param sourceString 要加密的字符串
 @param subSecretKey 加密 or 解密时，前半段秘钥
 @param secretKeyType 加密 or 解密方式
 @return NSString 返回加密or 解密后的字符串
 */

+ (NSString *)projectSecretKeySourceString:(NSString *)sourceString subSecretKey:(NSString *)subSecretKey encryptType:(SLBProjectSecretKeyType)secretKeyType isDebug:(BOOL)isDebug;

/**
 description :  加密解密接口
 @param sourceData 要加密的数据
 @param subSecretKey 加密 or 解密时，前半段秘钥
 @param secretKeyType 加密 or 解密方式
 @return NSString 返回加密or 解密后的字符串
 */
+ (NSData *)projectSecretKeySourceData:(NSData *)sourceData subSecretKey:(NSString *)subSecretKey encryptType:(SLBProjectSecretKeyType)secretKeyType;

@end

NS_ASSUME_NONNULL_END
