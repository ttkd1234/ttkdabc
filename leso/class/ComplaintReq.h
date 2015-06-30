//
//  ComplaintReq.h
//  leso
//
//  Created by neal on 15/6/24.
//  Copyright (c) 2015年 信息部. All rights reserved.
//

#import "BaseReq.h"
#import "AddressBook.h"
@interface ComplaintReq : BaseReq
@property (nonatomic,retain) NSString *customer;
@property (nonatomic,retain) NSString *billcode;
@property (nonatomic,retain) NSString *content;
@property (nonatomic,retain) NSString *opType;//不填
@property (nonatomic,retain) NSString *tel;//联系电话
@property (nonatomic,retain) NSString *complaintType;//投诉类型(投诉/建议)
@property (nonatomic,retain)  AddressBook *addressBook;
@end
