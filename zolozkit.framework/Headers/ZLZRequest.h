//
//  ZLZRequest.h
//  hummer
//
//  Created by xuejiapeng on 2019/12/2.
//  Copyright © 2019 Alipay. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ZLZRequest : NSObject

/**
 * [required] key for current view controller, must be set in bizparam before start eKYC
 */
extern NSString *const kZLZCurrentViewControllerKey;

/**
 * [optonal] key for encription public key
 */
extern NSString *const kZLZPubkey;

/**
 * [optonal]key for locale settings
 */
extern NSString *const kZLZLocaleKey;

/**
 * [optional] key for custom request header , must be set in bizparam before start eKYC
 */
extern NSString *const kZLZCustomHeaderKey;

/**
 * [optional] key for H5 offline package path  , must be set in bizparam before start eKYC
*/
extern NSString *const kZLZH5OffPackageConfigKey;

/*
 * config from zoloz server cannot be null
 */
@property(nonatomic, copy)NSString *zlzConfig;

/*
 * config from caller,the key in bizConfig is defined by zoloz,list above,kZLZCurrentViewControllerKey is required,Others are optional
 */
@property(nonatomic, strong)NSDictionary *bizConfig;

- (instancetype)initWithzlzConfig:(NSString *)config
                        bizConfig:(NSDictionary *)param;
@end

NS_ASSUME_NONNULL_END
