//
//  AddAddressViewController.m
//  leso
//
//  Created by neal on 15/6/24.
//  Copyright (c) 2015年 信息部. All rights reserved.
//

#import "AddAddressViewController.h"

@interface AddAddressViewController ()

@end

@implementation AddAddressViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _senderaddressbookreq=[[SenderAddressBookReq alloc] init];
    _addressbook=[[AddressBook alloc] init];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)onclick:(id)sender
{
    _senderaddressbookreq.customer=@"";
    _senderaddressbookreq.opType=@"add";
   
    _addressbook.customer=@"";
    _addressbook.linkMan=@"";
    _addressbook.province=@"";
    _addressbook.city=@"";
    _addressbook.county=@"";
    _addressbook.tel=@"";
    _addressbook.flag=@"";
    _addressbook.addressType=@"寄件人";
    
    NSDate * td=[NSDate date];
    NSDateFormatter *outputFormatter=[[[NSDateFormatter alloc] init] autorelease];
    [outputFormatter setDateFormat:@"yyyyMMddHHmmss"];
    NSString *strdate=[outputFormatter stringFromDate:td];
    
    int random = 100 + arc4random() % (900+1);
    strdate=[strdate stringByAppendingString:[NSString stringWithFormat:@"%d",random]];
    _addressbook.id=strdate;
    _senderaddressbookreq.addressBooks=_addressbook;
    NSString *jsonText = [_mpubfun stringFormObject:_senderaddressbookreq];
    
    if (![jsonText isEqualToString:@""])
    {
        jsonText=[_mpubfun encodeURL:jsonText key:@"SenderAddressBook"];
        
        
        [_tdcurl getHtml:jsonText];
    }
}
-(void)mcallback:(NSString *)info{
    NSDictionary *dictionary = [_mpubfun dictionaryWithJsonString:info];
    NSLog (@"info: %@", info);
    NSString *stra=[_mpubfun stringFormDict:dictionary];
    NSLog (@"stra: %@", stra);
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
