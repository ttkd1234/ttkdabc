//
//  SiteInfo.m
//  leso
//
//  Created by neal on 15/6/24.
//  Copyright (c) 2015年 信息部. All rights reserved.
//

#import "SiteInfo.h"

@implementation SiteInfo
- (instancetype) init
{
    self =[super init];
    if (self)
    {
        _siteNo=@"";
        _siteName=@"";
        _province=@"";
        _city=@"";
        _county=@"";
        _remark=@"";
        _deliveryArea=@"";
        _deliveryAreaNot=@"";
        _service=@"";
        _tel=@"";
        _deliveryTime=@"";
    }
    return  self;
}
@end
