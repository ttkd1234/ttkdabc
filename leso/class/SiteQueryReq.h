//
//  SiteQueryReq.h
//  leso
//
//  Created by neal on 15/6/24.
//  Copyright (c) 2015年 信息部. All rights reserved.
//

#import "BaseReq.h"

@interface SiteQueryReq : BaseReq
@property (nonatomic,retain) NSString *province;
@property (nonatomic,retain) NSString *city;
@property (nonatomic,retain) NSString *county;
@property (nonatomic,retain) NSString *siteNo;
@end
