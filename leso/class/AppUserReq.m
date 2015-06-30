//
//  AppUserReq.m
//  leso
//
//  Created by 信息部 on 15/6/17.
//  Copyright (c) 2015年 信息部. All rights reserved.
//

#import "AppUserReq.h"

@implementation AppUserReq
- (instancetype) init
{
    self =[super init];
    if (self)
    {
    _opType=@"";
    _appUser=nil;
    }
    return  self;
}
@end
