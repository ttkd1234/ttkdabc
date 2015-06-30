//
//  MyViewController.m
//  leso
//
//  Created by 信息部 on 15/6/16.
//  Copyright (c) 2015年 信息部. All rights reserved.
//

#import "MyViewController.h"

@interface MyViewController ()

@end

@implementation MyViewController
- (id)init
{
    self = [super init];
    if (self) {
        self.title = @"我";
    }
    return self;
}

- (NSString *)tabImageName
{
    return @"Bund.bundle/images/mine.png";
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
   
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
