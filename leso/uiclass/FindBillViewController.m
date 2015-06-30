//
//  FindBillViewController.m
//  leso
//
//  Created by 信息部 on 15/6/16.
//  Copyright (c) 2015年 信息部. All rights reserved.
//

#import "FindBillViewController.h"

@interface FindBillViewController ()

@end

@implementation FindBillViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)btclk:(id)sender
{
    _trackreq=[[TrackReq alloc] init];
    _trackreq.mailNo=@"560237384974";
    
    
    NSString *jsonText = [_mpubfun stringFormObject:_trackreq];
    
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


@end
