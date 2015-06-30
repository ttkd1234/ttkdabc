//
//  AppDelegate.h
//  leso
//
//  Created by 信息部 on 15/6/12.
//  Copyright (c) 2015年 信息部. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MTViewController.h"
#import "MyViewController.h"
#import "MorViewController.h"
#import "AKTabBarController.h"
#import "ScrViewController.h"
@interface AppDelegate : UIResponder <UIApplicationDelegate>
@property (strong, nonatomic) UIWindow *window;

@property (nonatomic, strong) AKTabBarController *tabBarController;
@property (nonatomic,retain) ScrViewController *scrviewcontroller;

@end

