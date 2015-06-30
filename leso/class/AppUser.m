//
//  AppUser.m
//  leso
//
//  Created by 信息部 on 15/6/17.
//  Copyright (c) 2015年 信息部. All rights reserved.
//

#import "AppUser.h"

@implementation AppUser
- (instancetype) init
{
    self=[super init];
    if (self)
    {
    _id=@"";
    _customer=@"";
    _userName=@"";
    _mobile=@"";
    _email=@"";
    _regTime=@"";
    _password=@"";
    }
    return  self;
}
@end
