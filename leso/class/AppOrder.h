//
//  AppOrder.h
//  leso
//
//  Created by neal on 15/6/24.
//  Copyright (c) 2015年 信息部. All rights reserved.
//

#import "BaseReq.h"
#import "AddressBook.h"
@interface AppOrder : BaseReq
@property (nonatomic,retain) AddressBook *addressBook;
@property (nonatomic,retain) NSString *customer;
@property (nonatomic,retain) NSString *remark;
@property (nonatomic,retain) NSString *status;
@property (nonatomic,retain) NSString *orderNo;
@end
