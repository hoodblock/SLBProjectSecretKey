//
//  SLBProjectSecretKeyTest.m
//  SLBProjectSecretKeySDK
//
//  Created by mac on 2022/2/9.
//

#import "SLBProjectSecretKeyTest.h"
#import "SLBProjectSecretKeyEncryptionTools.h"

//私有部分，加密的后半段秘钥
static NSString * const SLBProjectSecretKeyTestKeyString_DEBUG = @"sHuQkSWJq69thrKU";

static NSString * const SLBProjectSecretKeyTestKeyString_RELEASE = @"jYIDy1qJsS63NhzN";


@implementation SLBProjectSecretKeyTest

+ (NSString *)projectSecretKeySourceString:(NSString *)sourceString subSecretKey:(NSString *)subSecretKey encryptType:(SLBProjectSecretKeyType)secretKeyType isDebug:(BOOL)isDebug {
    NSData *ivData = [NSData data];
    NSString *KSecretKey = @"";
    if (isDebug) {
        ivData = [[subSecretKey stringByAppendingString:SLBProjectSecretKeyTestKeyString_DEBUG] dataUsingEncoding:NSUTF8StringEncoding];
        KSecretKey = [subSecretKey stringByAppendingString:SLBProjectSecretKeyTestKeyString_DEBUG];
    } else {
        ivData = [[subSecretKey stringByAppendingString:SLBProjectSecretKeyTestKeyString_RELEASE] dataUsingEncoding:NSUTF8StringEncoding];
        KSecretKey = [subSecretKey stringByAppendingString:SLBProjectSecretKeyTestKeyString_RELEASE];
    }
    NSString *returnString = nil;
    if (secretKeyType == SLBProjectSecretKeyTypeAESEncryptECB) {
        returnString = [SLBProjectSecretKeyEncryptionTools aesEncryptString:sourceString keyString:KSecretKey iv:[NSData data]];
    } else if (secretKeyType == SLBProjectSecretKeyTypeAESDecryptECB) {
        returnString = [SLBProjectSecretKeyEncryptionTools aesDecryptString:sourceString keyString:KSecretKey iv:[NSData data]];
    } else if (secretKeyType == SLBProjectSecretKeyTypeAESEncryptCBC) {
        returnString = [SLBProjectSecretKeyEncryptionTools aesEncryptString:sourceString keyString:KSecretKey iv:ivData];
    } else if (secretKeyType == SLBProjectSecretKeyTypeAESDecryptCBC) {
        returnString = [SLBProjectSecretKeyEncryptionTools aesDecryptString:sourceString keyString:KSecretKey iv:ivData];
    } else if (secretKeyType == SLBProjectSecretKeyTypeDESEncryptECB) {
        returnString = [SLBProjectSecretKeyEncryptionTools desEncryptString:sourceString keyString:KSecretKey iv:[NSData data]];
    } else if (secretKeyType == SLBProjectSecretKeyTypeDESDecryptECB) {
        returnString = [SLBProjectSecretKeyEncryptionTools desDecryptString:sourceString keyString:KSecretKey iv:[NSData data]];
    } else if (secretKeyType == SLBProjectSecretKeyTypeDESEncryptCBC) {
        returnString = [SLBProjectSecretKeyEncryptionTools desEncryptString:sourceString keyString:KSecretKey iv:ivData];
    } else if (secretKeyType == SLBProjectSecretKeyTypeDESDecryptCBC) {
        returnString = [SLBProjectSecretKeyEncryptionTools desDecryptString:sourceString keyString:KSecretKey iv:ivData];
    } else if (secretKeyType == SLBProjectSecretKeyTypeRSAEncryptPublicKey) {
        returnString = [SLBProjectSecretKeyEncryptionTools rsaEncryptString:sourceString keyString:KSecretKey];
    } else if (secretKeyType == SLBProjectSecretKeyTypeRSADecryptPrivateKey) {
        returnString = [SLBProjectSecretKeyEncryptionTools rsaDecryptString:sourceString keyString:KSecretKey];
    }
    return returnString;
}

//+ (NSData *)projectSecretKeySourceData:(NSData *)sourceString subSecretKey:(NSString *)subSecretKey encryptType:(SLBProjectSecretKeyType)secretKeyType {
//    
//}


@end
