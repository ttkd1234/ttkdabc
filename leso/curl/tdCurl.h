//
//  tdCurl.h
//  leso
//
//  Created by 信息部 on 15/6/12.
//  Copyright (c) 2015年 信息部. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "curlProtocol.h"
#import "_curl/curl.h"
@interface tdCurl : NSObject
{
  id<curProtocol> mdelegate;
  CURL *_curl;
  struct curl_slist *_headers;
}
+(id)mtdCurl;
@property (nonatomic, strong) id<curProtocol> mdelegate;
- (void) getHtml:(NSString *) urla;
@end
