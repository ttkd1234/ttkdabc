//
//  MyOrderViewController.m
//  leso
//  我的订单
//  Created by neal on 15/6/24.
//  Copyright (c) 2015年 信息部. All rights reserved.
//

#import "MyOrderViewController.h"

@interface MyOrderViewController ()

@end

@implementation MyOrderViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _apporderqueryreq=[[AppOrderQueryReq alloc] init];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)onclick:(id)sender
{
    _apporderqueryreq.startDate=@"";
    _apporderqueryreq.endDate=@"";
    _apporderqueryreq.customer=@"";
    
    NSString *jsonText = [_mpubfun stringFormObject:_apporderqueryreq];
    
    if (![jsonText isEqualToString:@""])
    {
        jsonText=[_mpubfun encodeURL:jsonText key:@"AppOrderQuery"];
        
        
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
