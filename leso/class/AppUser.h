//
//  AppUser.h
//  leso
//
//  Created by 信息部 on 15/6/17.
//  Copyright (c) 2015年 信息部. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AppUser : NSObject

@property (nonatomic,retain) NSString *id;
@property (nonatomic,retain) NSString *customer;
@property (nonatomic,retain) NSString *userName;
@property (nonatomic,retain) NSString *mobile;
@property (nonatomic,retain) NSString *email;
@property (nonatomic,retain) NSString *regTime;
@property (nonatomic,retain) NSString *password;

@end
