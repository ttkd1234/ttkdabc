//
//  SenderAddressBookReq.m
//  leso
//
//  Created by neal on 15/6/24.
//  Copyright (c) 2015年 信息部. All rights reserved.
//

#import "SenderAddressBookReq.h"

@implementation SenderAddressBookReq
- (instancetype) init
{
    self =[super init];
    if (self)
    {
        _customer=@"";
        _opType=@"";
        _addressBooks=nil;
        
    }
    return  self;
}
@end
