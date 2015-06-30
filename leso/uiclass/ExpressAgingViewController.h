//
//  ExpressAgingViewController.h
//  leso
//时效查询
//  Created by neal on 15/6/24.
//  Copyright (c) 2015年 信息部. All rights reserved.
//

#import "CurViewController.h"
#import "ExpressAgingQueryReq.h"
@interface ExpressAgingViewController : CurViewController
{
    ExpressAgingQueryReq *_expressagingqueryreq;
}
- (IBAction)onclick:(id)sender;
@end
