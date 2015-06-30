//
//  ExpressAgingQueryReq.m
//  leso
//
//  Created by neal on 15/6/24.
//  Copyright (c) 2015年 信息部. All rights reserved.
//

#import "ExpressAgingQueryReq.h"

@implementation ExpressAgingQueryReq
- (instancetype) init
{
    self =[super init];
    if (self)
    {
        _senderPorvince=@"";
        _senderCity=@"";
        _destinationProvince=@"";
        _destinationCity=@"";
    }
    return  self;
}
@end
