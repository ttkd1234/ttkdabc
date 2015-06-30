//
//  CurViewController.m
//  leso
//
//  Created by 信息部 on 15/6/16.
//  Copyright (c) 2015年 信息部. All rights reserved.
//

#import "CurViewController.h"

@interface CurViewController ()

@end

@implementation CurViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _mpubfun=[PubFunction mpubFun];
    _tdcurl=[tdCurl mtdCurl];
    _tdcurl.mdelegate= self;
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
