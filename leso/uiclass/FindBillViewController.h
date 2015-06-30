//
//  FindBillViewController.h
//  leso
//
//  Created by 信息部 on 15/6/16.
//  Copyright (c) 2015年 信息部. All rights reserved.
//

#import "CurViewController.h"
#import "TrackReq.h"
@interface FindBillViewController : CurViewController
{
   TrackReq *_trackreq;
}

- (IBAction)btclk:(id)sender;
@end
