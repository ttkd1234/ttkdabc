//
//  LoginViewController.m
//  leso
//
//  Created by 信息部 on 15/6/17.
//  Copyright (c) 2015年 信息部. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController
@synthesize nameEdit;
@synthesize padEdit;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
}
- (IBAction)lgIn:(UIButton *)sender
{

    _appuser=[[AppUser alloc] init];
    _appuser.customer=@"13682429075";
    _appuser.mobile=@"15058166630";
    _appuser.password=@"test";
    _appuser.regTime=@"2015-05-08";
    
    _appuserreq = [[AppUserReq alloc] init];
    _appuserreq.opType=@"query";
    _appuserreq.phoneKey=@"A000004936D775";
    _appuserreq.appUser=_appuser;
 
    
    NSString *jsonText = [_mpubfun stringFormObject:_appuserreq];
    
    if (![jsonText isEqualToString:@""])
    {
        jsonText=[_mpubfun encodeURL:jsonText key:@"Track"];
        [_tdcurl getHtml:jsonText];
    }


}

-(void)mcallback:(NSString *)info{
    NSDictionary *dictionary = [_mpubfun dictionaryWithJsonString:info];
    NSLog (@"info: %@", info);
    NSString *stra=[_mpubfun stringFormDict:dictionary];
    NSLog (@"stra: %@", stra);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
