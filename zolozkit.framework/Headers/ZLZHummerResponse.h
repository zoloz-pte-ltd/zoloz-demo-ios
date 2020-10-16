//
//  ZLZHummerResponse.h
//  hummer
//
//  Created by yukun.tyk on 2018/12/26.
//  Copyright © 2018 Alipay. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSUInteger, ZLZResponseCode) {
    /**
     * user has successfully submitted all the required info
     */
    ZLZResponseSuccess      = 1000,
    
    /**
     * user wants to quit or system error occurred
     */
    ZLZResponseInterrupt    = 1003,
    
    /**
     * user failed to submit required info, like doc scan failed or face comparison failed
     */
    ZLZResponseFail         = 2006,
    
    /**
     * usability check failed
     */
    ZLZResponseNotUsable    = 2007,
    
    /**
     * the result of info submission is under manual review
     */
    ZLZResponsePending      = 3000
};

@interface ZLZHummerResponse : NSObject

@property(nonatomic, assign)ZLZResponseCode code;
@property(nonatomic, copy)NSString *subCode;
@property(nonatomic, copy)NSString *result;
@property(nonatomic, copy)NSDictionary *extInfo;

- (instancetype _Nonnull)initWithResponseCode:(ZLZResponseCode)responseCode
                                      subCode:(NSString *)subCode
                                       result:(NSString * _Nullable)rst
                                      extInfo:(NSDictionary * _Nullable)ext;

- (NSDictionary *)toDict;

+ (ZLZHummerResponse *)fromDict:(NSDictionary *)dict;

@end

NS_ASSUME_NONNULL_END
