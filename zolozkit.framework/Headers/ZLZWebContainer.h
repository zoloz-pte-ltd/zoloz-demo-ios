//
//  ZLZV1WebContainer.h
//  hummer
//
//  Created by yukun.tyk on 2018/6/25.
//  Copyright © 2018 Alipay. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface ZLZWebContainer : NSObject

+ (UIViewController *)openURL:(NSString *)url
                   withConfig:(NSDictionary *)config;


//释放容器单例，避免下次进入时，容器无法再次初始化，导致异常，目前使用自研容器输出需要释放
+ (void)cleanup;


@end
