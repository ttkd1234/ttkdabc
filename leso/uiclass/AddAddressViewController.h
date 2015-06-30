//
//  AddAddressViewController.h
//  leso
//
//  Created by neal on 15/6/24.
//  Copyright (c) 2015年 信息部. All rights reserved.
//

#import "CurViewController.h"
#import "SenderAddressBookReq.h"
#import "AddressBook.h"
@interface AddAddressViewController : CurViewController
{
    SenderAddressBookReq *_senderaddressbookreq;
    AddressBook *_addressbook;
}
- (IBAction)onclick:(id)sender;
@end
