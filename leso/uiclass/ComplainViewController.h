//
//  ComplainViewController.h
//  leso
//我要投诉
//  Created by neal on 15/6/24.
//  Copyright (c) 2015年 信息部. All rights reserved.
//

#import "CurViewController.h"
#import "ComplaintReq.h"
#import "AddressBook.h"
@interface ComplainViewController : CurViewController
{
    ComplaintReq *_complaintreq;
    AddressBook *_addressbook;
}
- (IBAction)onclick:(id)sender;
@end
