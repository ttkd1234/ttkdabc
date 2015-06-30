//
//  ComplainViewController.m
//  leso
//我要投诉
//  Created by neal on 15/6/24.
//  Copyright (c) 2015年 信息部. All rights reserved.
//

#import "ComplainViewController.h"

@interface ComplainViewController ()

@end

@implementation ComplainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _complaintreq=[[ComplaintReq alloc] init];
    _addressbook=[[AddressBook alloc] init];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)onclick:(id)sender
{
    
    _addressbook.province=@"";
    _addressbook.city=@"";
    _addressbook.county=@"";
    _addressbook.linkMan=@"";
    _addressbook.tel=@"";
    _addressbook.address=@"";
    
    
    
    _complaintreq.customer=@"";
    _complaintreq.tel=@"";
    _complaintreq.billcode=@"";
    _complaintreq.content=@"";
    _complaintreq.complaintType=@"投诉";
    
    _complaintreq.addressBook=_addressbook;
    
    NSString *jsonText = [_mpubfun stringFormObject:_complaintreq];
    
    if (![jsonText isEqualToString:@""])
    {
        jsonText=[_mpubfun encodeURL:jsonText key:@"Complaint"];
        
        
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
