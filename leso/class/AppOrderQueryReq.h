//
//  AppOrderQueryReq.h
//  leso
//
//  Created by neal on 15/6/24.
//  Copyright (c) 2015年 信息部. All rights reserved.
//

#import "BaseReq.h"

@interface AppOrderQueryReq : BaseReq
@property (nonatomic,retain) NSString *customer;
@property (nonatomic,retain) NSString *startDate;
@property (nonatomic,retain) NSString *endDate;
@property (nonatomic,retain) NSString *orderNo;
@end
