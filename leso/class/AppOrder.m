//
//  AppOrder.m
//  leso
//
//  Created by neal on 15/6/24.
//  Copyright (c) 2015年 信息部. All rights reserved.
//

#import "AppOrder.h"

@implementation AppOrder
- (instancetype) init
{
    self =[super init];
    if (self)
    {
        _addressBook=nil;
        _customer=@"";
        _remark=@"";
        _status=@"";
        _orderNo=@"";
    }
    return  self;
}
@end
