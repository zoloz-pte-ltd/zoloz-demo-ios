//
//  ZLZFacade.h
//  hummer
//
//  Created by xuejiapeng on 2019/12/2.
//  Copyright © 2019 Alipay. All rights reserved.
//

#import <Foundation/Foundation.h>
@class ZLZRequest,ZLZResponse;
NS_ASSUME_NONNULL_BEGIN



typedef void(^ZLZCallback)(ZLZResponse *);

@interface ZLZFacade : NSObject

/**get the singlton instance of ZLZFacade*/
+ (ZLZFacade *)sharedInstance;

/**start zoloz process, completeCallback will be triggered when process complete,interruptCallback   will be triggered when process interrupt (eg timeout, user cancel)*/
- (void)startWithRequest:(ZLZRequest *)request
        completeCallback:(ZLZCallback )completeCallback
       interruptCallback:(ZLZCallback )interruptCallback;

/**get zoloz meta info*/
+ (NSString *)getMetaInfo;



@end

NS_ASSUME_NONNULL_END
