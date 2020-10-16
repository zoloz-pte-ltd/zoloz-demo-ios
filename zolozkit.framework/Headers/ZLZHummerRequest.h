//
//  ZLZHummerRequest.h
//  hummer
//
//  Created by yukun.tyk on 2018/12/26.
//  Copyright © 2018 Alipay. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ZLZHummerRequest : NSObject

/*
 * unique transaction id
 */
@property(nonatomic, copy)NSString *hummerId;

/*
 * [optional] configuration from backend
 */
@property(nonatomic, copy)NSString *clientConfig;

/*
 * [optional] merchant specified configuration
 */
@property(nonatomic, strong)NSDictionary *bizParam;

- (instancetype)initWithHummerId:(NSString *)hummerId
                    clientConfig:(NSString *)config
                        bizParam:(NSDictionary *)param;

@end

NS_ASSUME_NONNULL_END
