//
//  AddressBook.h
//  leso
//
//  Created by neal on 15/6/24.
//  Copyright (c) 2015年 信息部. All rights reserved.
//

#import "BaseReq.h"

@interface AddressBook : BaseReq
@property (nonatomic,retain) NSString *id;//yyyyMMddhhmmssSSS+3位数字随机数
@property (nonatomic,retain) NSString *customer;
@property (nonatomic,retain) NSString *linkMan;
@property (nonatomic,retain) NSString *province;
@property (nonatomic,retain) NSString *city;
@property (nonatomic,retain) NSString *county;
@property (nonatomic,retain) NSString *address;
@property (nonatomic,retain) NSString *tel;
@property (nonatomic,retain) NSString *flag;//1:表示默认，0：表示普通
@property (nonatomic,retain) NSString *addressType;//寄件人/收件人
@end
