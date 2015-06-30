//
//  AppOrderReq.h
//  leso
//
//  Created by neal on 15/6/24.
//  Copyright (c) 2015年 信息部. All rights reserved.
//

#import "BaseReq.h"
#import "AppOrder.h"
@interface AppOrderReq : BaseReq
@property (nonatomic,retain) AppOrder *appOrder;
@end
