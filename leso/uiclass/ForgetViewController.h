//
//  ForgetViewController.h
//  leso
//忘记密码
//  Created by neal on 15/6/24.
//  Copyright (c) 2015年 信息部. All rights reserved.
//

#import "CurViewController.h"
#import "AppUser.h"
#import "AppUserReq.h"
@interface ForgetViewController : CurViewController
{
    AppUser *_appuser;
    AppUserReq *_appuserreq;
}
- (IBAction)onclick:(id)sender;
@end
