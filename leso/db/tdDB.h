//
//  tdDB.h
//  leso
//
//  Created by 信息部 on 15/6/12.
//  Copyright (c) 2015年 信息部. All rights reserved.
//

#import <Foundation/Foundation.h>
#include <sqlite3.h>
@interface tdDB : NSObject
{
    NSString *sPath;
    sqlite3 *db;
}
+ (id)mtdDb;
- (void)getdata:(NSString *) sql;
@end
