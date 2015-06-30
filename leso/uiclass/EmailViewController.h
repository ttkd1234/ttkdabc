//
//  EmailViewController.h
//  leso
//填写邮箱
//  Created by neal on 15/6/24.
//  Copyright (c) 2015年 信息部. All rights reserved.
//

#import "CurViewController.h"
#import "AppUser.h"
#import "AppUserReq.h"
@interface EmailViewController : CurViewController
{
    AppUser *_appuser;
    AppUserReq *_appuserreq;
}
- (IBAction)onclick:(id)sender;
@end
