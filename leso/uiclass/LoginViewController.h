//
//  LoginViewController.h
//  leso
//
//  Created by 信息部 on 15/6/17.
//  Copyright (c) 2015年 信息部. All rights reserved.
//

#import "CurViewController.h"
#import "AppUserReq.h"
#import "TrackReq.h"


@interface LoginViewController : CurViewController
{
    AppUserReq *_appuserreq;
    AppUser *_appuser;
    
}
@property (retain, nonatomic) IBOutlet UIButton *lgBtn;
- (IBAction)lgIn:(UIButton *)sender;
@property (retain, nonatomic) IBOutlet UITextField *nameEdit;
@property (retain, nonatomic) IBOutlet UITextField *padEdit;

@end
