//
//  MyOrderViewController.h
//  leso
//  我的订单
//  Created by neal on 15/6/24.
//  Copyright (c) 2015年 信息部. All rights reserved.
//

#import "CurViewController.h"
#import "AppOrderQueryReq.h"
@interface MyOrderViewController : CurViewController
{
    AppOrderQueryReq *_apporderqueryreq;
}
- (IBAction)onclick:(id)sender;
@end
