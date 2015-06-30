//
//  ComplaintReq.m
//  leso
//
//  Created by neal on 15/6/24.
//  Copyright (c) 2015年 信息部. All rights reserved.
//

#import "ComplaintReq.h"

@implementation ComplaintReq
- (instancetype) init
{
    self =[super init];
    if (self)
    {
        _customer=@"";
        _billcode=@"";
        _content=@"";
        _opType=@"";//不填
        _tel=@"";//联系电话
        _complaintType=@"";//投诉类型(投诉/建议)
        _addressBook=nil;
    }
    return  self;
}
@end
