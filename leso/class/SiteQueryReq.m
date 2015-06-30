//
//  SiteQueryReq.m
//  leso
//
//  Created by neal on 15/6/24.
//  Copyright (c) 2015年 信息部. All rights reserved.
//

#import "SiteQueryReq.h"

@implementation SiteQueryReq
- (instancetype) init
{
    self =[super init];
    if (self)
    {
        _province=@"";
        _city=@"";
        _county=@"";
        _siteNo=@"";
    }
    return  self;
}
@end
