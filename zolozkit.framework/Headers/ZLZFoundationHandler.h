//
//  ZLZFoundationHandler.h
//  hummer
//
//  Created by xuejiapeng on 2019/5/20.
//  Copyright © 2019 Alipay. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ZLZHummerFacade.h"

NS_ASSUME_NONNULL_BEGIN

@interface ZLZFoundationHandler : NSObject

+ (instancetype)sharedInstance;

- (void)handler:(NSDictionary *)data
        context:(NSDictionary *)context
       callback:(ZLZHummerJSAPICallback)callback;


@end

NS_ASSUME_NONNULL_END
