//
//  SenderAddressBookReq.h
//  leso
//
//  Created by neal on 15/6/24.
//  Copyright (c) 2015年 信息部. All rights reserved.
//

#import "BaseReq.h"
#import "AddressBook.h"
@interface SenderAddressBookReq : BaseReq
@property (nonatomic,retain) NSString *customer;
@property (nonatomic,retain) NSString *opType;
@property (nonatomic,retain) AddressBook  *addressBooks;
@end
