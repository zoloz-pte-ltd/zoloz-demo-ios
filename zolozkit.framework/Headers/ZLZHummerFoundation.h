//
//  ZLZHummerFoundation.h
//  hummer
//
//  Created by yukun.tyk on 2018/12/27.
//  Copyright © 2018 Alipay. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ZLZHummerFacade.h"
@class ZLZNextRequest, ZLZNextResponse, UIViewController, ZLZHummerContext, ZLZNextResponseInner, ZolozLogMonitor;

NS_ASSUME_NONNULL_BEGIN

typedef void(^ZLZRPCRespnseCallback)(BOOL, ZLZNextResponse * _Nullable);
typedef void(^ZLZAlertCallback)(BOOL positiveClicked);

/**不要自己初始化，从HummerContext获取*/
@interface ZLZHummerFoundation : NSObject

//暴露埋点实例，外部可以通过改实例添加一些公共埋点
@property(nonatomic, strong)ZolozLogMonitor *logMonitor;

+ (ZLZHummerFoundation *)sharedInstance;

- (void)setContext:(ZLZHummerContext *)context;

/**弹Toast*/
- (void)toastWithStatus:(BOOL)show;

/**获取多语言文案*/
- (NSString *)localizedStringForKey:(NSString *)key;

/**发送RPC*/
- (void)sendRPCWithRequest:(ZLZNextRequest *)request
        completionCallback:(ZLZRPCRespnseCallback _Nullable)callback;

/**如果发送失败，会a弹框提示用户重试，直到发送成功，或者用户取消*/
- (void)promisedRPCWithRequest:(ZLZNextRequest *)request
                viewController:(UIViewController *)vc
            completionCallback:(ZLZRPCRespnseCallback)callback;

/**弹框*/
- (void)AlertWithTitle:(NSString *)title
               message:(NSString *)message
              positive:(NSString *)positve
              negative:(NSString *)negative
        viewController:(UIViewController*)vc
   completcionCallback:(ZLZAlertCallback)callback;

/**埋点*/
- (void)logWithSeedId:(NSString *)seed
              extInfo:(NSDictionary *)info;

/**JSAPI入口*/
- (void)handler:(NSDictionary *)data
        context:(NSDictionary *)context
       callback:(ZLZHummerJSAPICallback )callback;

/**封装next rpc request*/
- (ZLZNextRequest *)buildRequestWithNextindex:(NSInteger)index;

- (void)sendHttpRequest:(NSDictionary*)param url:(NSString*)urlString env:(int)env withCallBack:(ZLZHummerJSAPICallback)callback;
@end

NS_ASSUME_NONNULL_END

