//
//  ExpressAgingQueryReq.h
//  leso
//
//  Created by neal on 15/6/24.
//  Copyright (c) 2015年 信息部. All rights reserved.
//

#import "BaseReq.h"

@interface ExpressAgingQueryReq : BaseReq
@property (nonatomic,retain) NSString *senderPorvince;
@property (nonatomic,retain) NSString *senderCity;
@property (nonatomic,retain) NSString *destinationProvince;
@property (nonatomic,retain) NSString *destinationCity;
@end
