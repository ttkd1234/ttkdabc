//
//  tdCurl.m
//  leso
//
//  Created by 信息部 on 15/6/12.
//  Copyright (c) 2015年 信息部. All rights reserved.
//

#import "tdCurl.h"

@implementation tdCurl
@synthesize mdelegate;
+(id)mtdCurl {
    
    static tdCurl *temptdCurl = nil;
    
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        
        temptdCurl = [[self alloc] init];
        
    });
    return temptdCurl;
    
}
-(id)init {
    
    if (self = [super init]) {
        
        _curl = curl_easy_init();
        
        curl_easy_setopt(_curl, CURLOPT_HTTPAUTH, CURLAUTH_ANY);
        curl_easy_setopt(_curl, CURLOPT_NOSIGNAL, 1L);
        curl_easy_setopt(_curl, CURLOPT_USERAGENT, curl_version());
        
        curl_easy_setopt(_curl, CURLOPT_VERBOSE, 1L);
        //curl_easy_setopt(_curl, CURLOPT_DEBUGFUNCTION, ICCurlDebugCallback);
        //curl_easy_setopt(_curl, CURLOPT_DEBUGDATA, self);
        curl_easy_setopt(_curl, CURLOPT_WRITEFUNCTION, ICCurlWriteCallback);
        curl_easy_setopt(_curl, CURLOPT_WRITEDATA, self);
    
        
    }
    
    return self;
    
}
- (void) getHtml:(NSString *) urla{
    if (![urla isEqualToString:@""])
    {
        CURLcode theResult;
        
        NSString *aStr = urla;
        //aStr = [aStr stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
        
        NSURL *url = [NSURL URLWithString:aStr];
        NSMutableString *cookies = [NSMutableString string];
        NSLog(@"url=%@",url);
        if (_headers)
        {
            curl_slist_free_all(_headers);
            _headers = NULL;
        }

        
        curl_easy_setopt(_curl, CURLOPT_URL, url.absoluteString.UTF8String);
        curl_easy_setopt(_curl, CURLOPT_POST, 1L);
        [[[NSHTTPCookieStorage sharedHTTPCookieStorage] cookiesForURL:[NSURL URLWithString:aStr]] enumerateObjectsUsingBlock:^(NSHTTPCookie *cookie, NSUInteger i, BOOL *stop) {
            if ([cookie.path isEqualToString:@"/"] || [cookie.path isEqualToString:url.path])
                [cookies appendFormat:@"%@=%@; ", cookie.name, cookie.value];
        }];
        curl_easy_setopt(_curl, CURLOPT_COOKIE, cookies.UTF8String);
 
        theResult = curl_easy_perform(_curl);
        if (theResult != CURLE_OK)
        {
          [self.mdelegate mcallback:@"{\"message\":\"\",\"code\":\"0\"}"];
        }
    }
}
size_t ICCurlWriteCallback(char *ptr, size_t size, size_t nmemb, void *userdata)
{
    const size_t sizeInBytes = size*nmemb;
    tdCurl *tc = (__bridge tdCurl *)userdata;
    NSData *data = [[NSData alloc] initWithBytes:ptr length:sizeInBytes];
    NSString *infoStr = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    if (infoStr)
    {
        [tc.mdelegate mcallback:infoStr];
    }else
    {
        
    }
    return sizeInBytes;
}
- (void)dealloc
{
    if (_headers)
        curl_slist_free_all(_headers);
    curl_easy_cleanup(_curl);
}
@end
