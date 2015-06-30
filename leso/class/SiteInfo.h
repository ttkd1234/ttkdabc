//
//  SiteInfo.h
//  leso
//
//  Created by neal on 15/6/24.
//  Copyright (c) 2015年 信息部. All rights reserved.
//

#import "BaseReq.h"

@interface SiteInfo : BaseReq
@property (nonatomic,retain) NSString *siteNo;
@property (nonatomic,retain) NSString *siteName;
@property (nonatomic,retain) NSString *province;
@property (nonatomic,retain) NSString *city;
@property (nonatomic,retain) NSString *county;
@property (nonatomic,retain) NSString *remark;
@property (nonatomic,retain) NSString *deliveryArea;
@property (nonatomic,retain) NSString *deliveryAreaNot;
@property (nonatomic,retain) NSString *service;
@property (nonatomic,retain) NSString *tel;
@property (nonatomic,retain) NSString *deliveryTime;
@end
