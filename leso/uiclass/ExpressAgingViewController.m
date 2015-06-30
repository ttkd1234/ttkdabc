//
//  ExpressAgingViewController.m
//  leso
//时效查询
//  Created by neal on 15/6/24.
//  Copyright (c) 2015年 信息部. All rights reserved.
//

#import "ExpressAgingViewController.h"

@interface ExpressAgingViewController ()

@end

@implementation ExpressAgingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _expressagingqueryreq=[[ExpressAgingQueryReq alloc] init];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)onclick:(id)sender
{
    _expressagingqueryreq.senderPorvince=@"";
    _expressagingqueryreq.senderCity=@"";
    _expressagingqueryreq.destinationProvince=@"";
    _expressagingqueryreq.destinationCity=@"";
    
    NSString *jsonText = [_mpubfun stringFormObject:_expressagingqueryreq];
    
    if (![jsonText isEqualToString:@""])
    {
        jsonText=[_mpubfun encodeURL:jsonText key:@"ExpressAgingQuery"];
        
        
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
