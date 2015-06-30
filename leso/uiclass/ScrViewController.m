//
//  ScrViewController.m
//  leso
//
//  Created by 信息部 on 15/6/15.
//  Copyright (c) 2015年 信息部. All rights reserved.
//

#import "ScrViewController.h"

@interface ScrViewController ()

@end

@implementation ScrViewController
@synthesize pageScroll;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    pageScroll.delegate = self;
    
    pageScroll.contentSize = CGSizeMake(self.view.frame.size.width * 3, self.view.frame.size.height);
}
-(void)animationDidStop:(NSString *)animationID finished:(NSNumber *)finished context:(void *)context
{
   
}
- (IBAction)inMain:(UIButton *)sender
{
//    [[NSUserDefaults standardUserDefaults] setBool:NO forKey:@"firstLaunch"];
//    [self.gotoMainViewBtn setHidden:YES];
//    NSArray *array = [UIImage splitImageIntoTwoParts:self.imageView.image];
//    self.left = [[UIImageView alloc] initWithImage:[array objectAtIndex:0]];
//    self.right = [[UIImageView alloc] initWithImage:[array objectAtIndex:1]];
//    [self.view addSubview:self.left];
//    [self.view addSubview:self.right];
//    [self.pageScroll setHidden:YES];
//    [self.pageControl setHidden:YES];
//    self.left.transform = CGAffineTransformIdentity;
//    self.right.transform = CGAffineTransformIdentity;
    
//    [UIView beginAnimations:@"split" context:nil];
//    [UIView setAnimationDelegate:self];
//    [UIView setAnimationDuration:1];
//    [UIView setAnimationDidStopSelector:@selector(animationDidStop:finished:context:)];
    
//    self.left.transform = CGAffineTransformMakeTranslation(-160 ,0);
//    self.right.transform = CGAffineTransformMakeTranslation(160 ,0);
//    [UIView commitAnimations];
    
    
//    MaiViewController *controller = [[MaiViewController alloc] init];
//    [self presentModalViewController:controller animated:YES];
 
}
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
