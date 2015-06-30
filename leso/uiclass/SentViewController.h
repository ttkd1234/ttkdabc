//
//  SentViewController.h
//  leso
//   我要寄件
//  Created by neal on 15/6/24.
//  Copyright (c) 2015年 信息部. All rights reserved.
//

#import "CurViewController.h"
#import "AppOrder.h"
#import "AppOrderReq.h"
#import "AddressBook.h"
@interface SentViewController  : CurViewController
{
    AppOrder *_apporder;
    AppOrderReq *_apporderreq;
    AddressBook *_addressbook;
}
-(IBAction)onclick:(id)sender;
@end
