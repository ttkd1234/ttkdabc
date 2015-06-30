//
//  AddressBook.m
//  leso
//
//  Created by neal on 15/6/24.
//  Copyright (c) 2015年 信息部. All rights reserved.
//

#import "AddressBook.h"

@implementation AddressBook
- (instancetype) init
{
    self=[super init];
    if (self)
    {
        _id=@"";//yyyyMMddhhmmssSSS+3位数字随机数
        _customer=@"";
        _linkMan=@"";
        _province=@"";
        _city=@"";
        _county=@"";
        _address=@"";
        _tel=@"";
        _flag=@"1";//1:表示默认，0：表示普通
        _addressType=@"";//寄件人/收件人
    }
    return  self;
}
@end
