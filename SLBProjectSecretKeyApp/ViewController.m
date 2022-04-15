//
//  ViewController.m
//  SLBProjectSecretKeyApp
//
//  Created by mac on 2022/2/9.
//

#import "ViewController.h"
#import <SLBProjectSecretKeySDK/SLBProjectSecretKeyTest.h>

@interface ViewController ()
@property (strong, nonatomic) UILabel *encryptLabel;
@property (strong, nonatomic) UILabel *decryptLabel;
@end



@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
//    NSString *pubkey = @"-----BEGIN PUBLIC KEY-----\nMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAtYwFOy6oRK1I+5tbLxoU\niUfAfqV5B1796dWuoii0sOPiYYgAj11xWwszMrQBxM2ATwK8OXHrmLO1qZ9XDh4/\n4yiFukLQl+rIsLnWGUVY17DsNucC53BeTnw2I1dX2+NBYCl9+hgCuNDGTiZ+jC3H\ncjpiZa8kfn1iGqnwmSVHudo277Hqx9CTS+qO+V4nNlGuEfkW0/lzA8fC+buO/suv\niaLzz7qdGBHkRQqI2L4Nz7KLEFhE1FAU/9eA4Sylsld7lZuDcFse+tUNzVY2MLSt\newQmMC0NZqBn0ZX6JVIOj6V8Q8tKXFqCzGQn/Wx0XUExqVTQjwp6ewRwyFUiN5MY\nsQIDAQAB\n-----END PUBLIC KEY-----";
//    NSString *privkey = @"-----BEGIN PRIVATE KEY-----\nMIIEvwIBADANBgkqhkiG9w0BAQEFAASCBKkwggSlAgEAAoIBAQC1jAU7LqhErUj7\nm1svGhSJR8B+pXkHXv3p1a6iKLSw4+JhiACPXXFbCzMytAHEzYBPArw5ceuYs7Wp\nn1cOHj/jKIW6QtCX6siwudYZRVjXsOw25wLncF5OfDYjV1fb40FgKX36GAK40MZO\nJn6MLcdyOmJlryR+fWIaqfCZJUe52jbvserH0JNL6o75Xic2Ua4R+RbT+XMDx8L5\nu47+y6+JovPPup0YEeRFCojYvg3PsosQWETUUBT/14DhLKWyV3uVm4NwWx761Q3N\nVjYwtK17BCYwLQ1moGfRlfolUg6PpXxDy0pcWoLMZCf9bHRdQTGpVNCPCnp7BHDI\nVSI3kxixAgMBAAECggEBAI8R1IGKSGMu6GgYS2i4Ndzl5cYoo1NywclIc0IpsBQC\n0sGny0EwE4f7MJLRlt9AT9B0SF9A7ri9Tvlor9NZdWGP6qsZwocmKJhVK2to4hXA\nwLaXoQtA26EgdA2v5HZOBpRAvp2b1HFPXifyYCIaZaYYarjVqH3iU7DNoeUeowLL\nprjb6Lue8nM7yhGQ+/2b1qrzSXpZIhJJR6bPuDzE0ZdlGj2QFnK0DaJeJeAm55P3\naL78Qt19h/RNebj0+TWHo0XBDg1mQVycrCLAgFBYC194KHCL03avhVkRjtgNbRia\niditdlYz3H/qOTpiYaiSXIfWsnr8NretaEBfKXeU740CgYEA7cvcYhiy3+5l5u0f\n00ipqvrgMgsnxtgHOu7n0FnZPZwAbk29lswToJ1YiYr29na/lYm5n6Q2y76nxKC9\npT3C711Ae+9hAdY0SpYVq+1YgbKXPYRFCf/a6bfhJ3BhFNYOPt13ahd5eZbhl9f4\nImQLQMxQLlJAyeHVjWCG44s9+mMCgYEAw3HUfDDCwRl4mGC7CAXnyzlZMzs8r6iK\ndXRBPRAs9ReR/Nj46ljPD0kAywsnyxV7ro73gBF1lANGW5QayUPEZqQpqUoBYa9y\nJA7n+lrzyKabprgCYg1zivmd8Xmh+//87gbPXOXNmOA4lAoON2aUrF2I8m3Ocd8d\n8lJFhjW8YtsCgYEAguVDw6/Kzt8gsrP2X8xQsPB19rYTSC5kFHmrmxHKNlKoHg+m\n+9oMN85FDTk0ZkjJftwYFJtFGnQxT1gX7FyJ8E7Jjy8em+84S5JADaqRnJsdC1zC\n0BVJgHuacaY3mkuV/d7Uu85+LIL0XSwhx3SAiUOuI0FdroMklTT8K0bbb/cCgYEA\noEH0Q6kP6JpkIj4e3mNJP4BUvgdyqW5/qfObkuBynL2o/TVEVZRgpF3uAo+xH3sM\nIYQlOaQXTzioNmto02N35dnyN1fxbhIYe6ylVsnBX+QNeVUkzxXMikZH1jswMZwj\n32FCIyBjx1kDy4+7PH4mpndD1dVoFEMpIQuI6pWhVUUCgYBFIa0kpeME9i+Vl7cb\nD8lYRb3bgWJ7eis9SpMJKXNRRXuLPC5y79AVap1O42CW3e9zWXrA6yTvbDlb558A\n+ug49bO78UutJR3yRVooOXjVzGNgAisqLiOYbJ0pfSaSgmHZD9KtY9/jSvkq3/vE\n5zEnZIRrFdLQnu7Uvh+rh0YFYA==\n-----END PRIVATE KEY-----";
//
//
//
//    NSString *pubkey = @"-----BEGIN PUBLIC KEY-----\nMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAlzewyC7NrZmfWDDPsk+L\nl1qlsnGjFuAvVmoPlF1Mf1TwlbAsGTGL43jyF2AGG2amevFyvV+uv6+XE3LebkrP\n8EtEH4fJfiABqXjuw03MyKrwcio3t+62Nb81GFf+lSrHwoKy404AU2WyyAi6fUnA\n4oi02UfMUJfK0FdvNZ5ZxbRFJPtJ1pb+D4np4hDGNk8gRz+BztKPcgSpuDAh+xk2\nbUugB7viJWNCMJwi56SZfEr0S/jF0LEyO9VcVIRJYQTL0q1swmiSoZu9x5poUKec\nP9ezTEeMkvyA48v8JmP0uydlmaT3VT1PT3VNPw7J4Irh2otJAF/Lqu8vyEFcYt9m\nnwIDAQAB\n-----END PUBLIC KEY-----";
//
//    NSString *privkey = @"-----BEGIN PRIVATE KEY-----\nMIIEogIBAAKCAQEAlzewyC7NrZmfWDDPsk+Ll1qlsnGjFuAvVmoPlF1Mf1TwlbAs\nGTGL43jyF2AGG2amevFyvV+uv6+XE3LebkrP8EtEH4fJfiABqXjuw03MyKrwcio3\nt+62Nb81GFf+lSrHwoKy404AU2WyyAi6fUnA4oi02UfMUJfK0FdvNZ5ZxbRFJPtJ\n1pb+D4np4hDGNk8gRz+BztKPcgSpuDAh+xk2bUugB7viJWNCMJwi56SZfEr0S/jF\n0LEyO9VcVIRJYQTL0q1swmiSoZu9x5poUKecP9ezTEeMkvyA48v8JmP0uydlmaT3\nVT1PT3VNPw7J4Irh2otJAF/Lqu8vyEFcYt9mnwIDAQABAoIBACE3foG6pjuID1SU\nBEuq5YLtypAUHjscK8nTqnBwvikKQ37eIBG4rH3fR26TDURfnBpNh2LJ7dz1eT4w\ncWPQ0zR5lBFJBp3J8hOEGQ6VvHIn+oFZfLvOl//ebI9YZPfnWdIEW79Klw+6uzbt\nk+mJlfEtDmzcNKlPbqGtUyR4EEg5JrNEPJqfA3Vk62rhcY1rSBjvKhwYWOkZVMGf\n3x3kMQZ42ZjCkY1AWqx2YMBCoj4V9Ta9w2B8zMLd+MWN9gM0xuXvDBBOZp0EWIdA\nz/jAq2pbVFkSbLxqj07gZxr1a8/7FKRWauU9vTMy6EYSIZSy5GZ7t9Py6S7ofter\nH/OwrcECgYEAwV6fHgFRJIy5o9RYEylVlqP5CJ0EsdsHeJsmj3PiOVfuyoV2NrKO\n0VZm+f9+nLZ9f8eSD5Y7fkitq7IDJ5JTy3M/9FVKhXMU+UV7GTmQo3XportvAUJR\n7/YHkUCukHl9P0/u6psGAWPkXl4/JaC+16tLjo/AGY/fm2SCecZOENkCgYEAyDH/\n/OgzUZKZD8jHxX5p5b+ZNzLBnPotPkqMy6+hIpfavAPw1zJ+X7IAAOJl0YMmPSo5\nuC4UceALGg8kz9gH9QPGxnfirSpZJS6pdXkYv0Lf7sWBKdC24G1zyoIv5p1NBzbO\nmn9O8pJLhM39YouLAbIOdvFSbW6cGmWzy6hLCDcCgYBa9ZOLnbr5omjAs+YqPUtR\nbRh8AMBwmUNObE0bNbu4lbBx+4279QpRVn9iIdkBBqbKMKp4QocBxFZNaZMqTh60\nmSYAXQ6M77FyAEkDeJydB547OkfhI70/T1AH95ElzMApxAPyv7F3ffGyokq5/H9J\nG/6StPP8Ej1w7zqg5bNbIQKBgAcJuvYpM6SqgrcLV/qZdx+cnMZUAnqCURTfihOf\nGQseS5JQkSb/n3G90EI3s1yqP63mziCrfgyC0+EWpzSnY6A5gcN4c3+i/X9RJKP8\nneIbd8PtLZ1KuSMqtedorEZvQUX/p0PHNf9RJVaF52KPhVOJ7vg/g6ZVPSewa6G9\nSOYBAoGADmmvVi/73q5JYLwsxcPCqHW+mR5wDGcV0U0mhKgwWl/Cr2fLSJDszyZs\nZgvAB9UwO6Nq+WukDqE9A/KdBc8CbYMw72gAQ4nnI9AxKLPfEJIq3by17CYQaXIA\n7CVCZ0ScNPWCjgP+SP67//69tgWxKenjF/WS3iqc70zjRf+SNqA=\n-----END PRIVATE KEY-----";

    
    
//    wallet_1_server_cbc_Encrypt_K8tj6uF6K+f1Ktvlyxu5uQ==
//    2022-03-19 16:46:52.705417+0800 SBMining[2959:177630] wallet_1_server_cbc_Decrypt_123456
    
    
    NSString *testString = [SLBProjectSecretKeyTest projectSecretKeySourceString:@"123456" subSecretKey:@"" encryptType:SLBProjectSecretKeyTypeAESEncryptCBC isDebug:YES];
    NSLog(@"%@",testString);
    NSString *testString1 = [SLBProjectSecretKeyTest projectSecretKeySourceString:testString subSecretKey:@"" encryptType:SLBProjectSecretKeyTypeAESDecryptCBC isDebug:YES];
    NSLog(@"1-----%@",testString1);
    
//
//    NSString *originString = @"hello world!";
//
//    NSString *encWithPubKey = [SLBProjectSecretKeyTest projectSecretKeySourceString:originString subSecretKey:pubkey encryptType:SLBProjectSecretKeyTypeRSAEncryptPublicKey];
//    NSLog(@"Enctypted with public key: %@", encWithPubKey);
//    // Demo: decrypt with private key
//    NSString *decWithPrivKey = [SLBProjectSecretKeyTest projectSecretKeySourceString:encWithPubKey subSecretKey:privkey encryptType:SLBProjectSecretKeyTypeRSADecryptPrivateKey];
//    NSLog(@"Decrypted with private key: %@", decWithPrivKey);
    
}




@end












