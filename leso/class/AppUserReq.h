//
//  AppUserReq.h
//  leso
//
//  Created by 信息部 on 15/6/17.
//  Copyright (c) 2015年 信息部. All rights reserved.
//

#import "BaseReq.h"
#include "AppUser.h"
@interface AppUserReq : BaseReq
@property (nonatomic,retain) NSString *opType;
@property (nonatomic,retain) AppUser *appUser;
@end
