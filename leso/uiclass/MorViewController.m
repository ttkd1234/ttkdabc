//
//  MorViewController.m
//  leso
//
//  Created by 信息部 on 15/6/16.
//  Copyright (c) 2015年 信息部. All rights reserved.
//

#import "MorViewController.h"

@interface MorViewController ()

@end

@implementation MorViewController
- (id)init
{
    self = [super init];
    if (self) {
        self.title = @"更多";
    }
    return self;
}

- (NSString *)tabImageName
{
    return @"Bund.bundle/images/mmore.png";
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
