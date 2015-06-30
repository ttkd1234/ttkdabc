//
//  AppOrderQueryReq.m
//  leso
//
//  Created by neal on 15/6/24.
//  Copyright (c) 2015年 信息部. All rights reserved.
//

#import "AppOrderQueryReq.h"

@implementation AppOrderQueryReq
- (instancetype) init
{
    self =[super init];
    if (self)
    {
        _customer=@"";
        _startDate=@"";
        _endDate=@"";
        _orderNo=@"";
    }
    return  self;
}
@end
