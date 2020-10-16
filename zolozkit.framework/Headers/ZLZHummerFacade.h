//
//  ZLZHummerFacade.h
//  hummer
//
//  Created by yukun.tyk on 2018/12/26.
//  Copyright © 2018 Alipay. All rights reserved.
//

#import <Foundation/Foundation.h>
@class ZLZHummerRequest, ZLZHummerResponse;

NS_ASSUME_NONNULL_BEGIN

/**
 * key for current view controller, must be set in bizparam before start eKYC
 */
extern NSString *const kZLZCurrentViewControllerKey;

/**

 * key for locale settings
 */
extern NSString *const kZLZLocaleKey;

/**
 * [optional] key for custom request header , must be set in bizparam before start eKYC
 */
extern NSString *const kZLZCustomHeaderKey;

/**
 * [optional] key for custom ui config
 */
extern NSString *const kZLZCustomUIConfigPath;

/**
 * key for encription public key
 */
extern NSString *const kZLZPubkey;

/**
 * key for chameleon config path
 */
extern NSString *const kZLZChameleonConfigKey;

/**
 * [optional] key for H5 offline package path  , must be set in bizparam before start eKYC
*/
extern NSString *const kZLZH5OffPackageConfigKey;

typedef void(^ZLZHummerResponseCallback)(ZLZHummerResponse *);
typedef void(^ZLZHummerJSAPICallback)(NSDictionary *_Nullable);

@interface ZLZHummerFacade : NSObject

/**get the singlton instance of ZLZHummerFacade*/
+(ZLZHummerFacade *)sharedInstance;

/**start ekyc process, callback will be triggered when process completes*/
- (void)startEkycWithRequest:(ZLZHummerRequest *)request
          completionCallback:(ZLZHummerResponseCallback)callback;

/**start connect process, callback will be triggered when process completes*/
- (void)startConnectWithRequest:(ZLZHummerRequest *)request
             completionCallback:(ZLZHummerResponseCallback)callback;

/**force exit*/
- (void)exit;

/**get zoloz meta info*/
+ (NSString *)getMetaInfo;

/**
 * JSAPI handler
 * @param data jsapi data
 * @param context webcontainer context
 * @param callback jsapi callback
 */
- (void)handler:(NSDictionary *)data
        context:(NSDictionary *)context
       callback:(ZLZHummerJSAPICallback)callback;

@end

NS_ASSUME_NONNULL_END
