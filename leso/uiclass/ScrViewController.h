//
//  ScrViewController.h
//  leso
//
//  Created by 信息部 on 15/6/15.
//  Copyright (c) 2015年 信息部. All rights reserved.
//

#import <UIKit/UIKit.h>
@interface ScrViewController : UIViewController<UIScrollViewDelegate>
@property (retain, nonatomic) IBOutlet UIScrollView *pageScroll;

- (IBAction)inMain:(UIButton *)sender;

@end
