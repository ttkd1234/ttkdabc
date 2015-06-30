//
//  tdDB.m
//  leso
//
//  Created by 信息部 on 15/6/12.
//  Copyright (c) 2015年 信息部. All rights reserved.
//

#import "tdDB.h"

@implementation tdDB
+ (id)mtdDb {
    static tdDB *temptdDb = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        temptdDb = [[self alloc] init];
        
    });
    return temptdDb;
    
}
-(id)init {
    
    if (self = [super init]) {
        
        NSFileManager *fileManager=[NSFileManager defaultManager];
        NSArray *paths=NSSearchPathForDirectoriesInDomains(NSDocumentDirectory,                                                           NSUserDomainMask, YES);
        NSString *docDirectory=[paths objectAtIndex:0];
        NSString *writDBPath=[docDirectory stringByAppendingPathComponent:@"tcl.sqlite"];
        BOOL suc=false;
        suc=[fileManager fileExistsAtPath:writDBPath];
        if (!suc)
        {

           NSString *resourcePath = [[NSBundle mainBundle] resourcePath];
            NSString *defDBPath = [resourcePath stringByAppendingPathComponent:@"Bund.bundle/db/tcl.sqlite"];
            if ([fileManager fileExistsAtPath:defDBPath])
            {
            NSError * er=nil;
            suc=[fileManager copyItemAtPath:defDBPath toPath:writDBPath error:&er];
            if (!suc)
            {
               
                //NSLog(@"move failed:%@", [er localizedDescription]);
                NSAssert1(0, @"创建数据库失败!", nil);
            }
            }
        }
        sPath=writDBPath;
        
    }
    return self;
    
}
- (void)getdata:(NSString *) sql
{
    if (sqlite3_open([sPath UTF8String], &db)!=SQLITE_OK)
    {
        sqlite3_close(db);
        NSAssert(0,@"打开数据库失败!");
    }
    sqlite3_stmt *sment;
    
    if ((sqlite3_prepare_v2(db, [sql UTF8String], -1, &sment, nil))==0)
    {
    while (sqlite3_step(sment) == SQLITE_ROW) {
        //int rownum    = sqlite3_column_int(sment,0);
        char* strText   = (char*)sqlite3_column_text(sment, 0);
        NSString *fValue=[[NSString alloc] initWithUTF8String:strText];
        NSLog(@"%@",fValue);
     }
    }
    sqlite3_finalize(sment);
    sqlite3_close(db);
}
@end
