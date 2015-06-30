//
//  PubFunction.h
//  leso
//
//  Created by 信息部 on 15/6/15.
//  Copyright (c) 2015年 信息部. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CommonCrypto/CommonDigest.h>
#include "JsonObject.h"
@interface PubFunction : NSObject
+ (id)mpubFun;
- (NSString*)encodeURL:(NSString *) strurl
                   key:(NSString *) strkey;
- (NSDictionary *)dictionaryWithJsonString:(NSString *)jsonString;
- (NSString *)stringFormDict:(NSDictionary*)dict;
- (NSString *)stringFormObject:(id) obj;
@end
