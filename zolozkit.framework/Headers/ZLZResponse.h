//
//  ZLZResponse.h
//  hummer
//
//  Created by xuejiapeng on 2019/12/2.
//  Copyright © 2019 Alipay. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ZLZResponse : NSObject

/**
 * return code
 */
@property(nonatomic, copy) NSString *retcode;

/**
  * biz param for future usage
  */
@property(nonatomic, copy)NSDictionary *extInfo;

@end

NS_ASSUME_NONNULL_END
