//
//  PubFunction.m
//  leso
//
//  Created by 信息部 on 15/6/15.
//  Copyright (c) 2015年 信息部. All rights reserved.
//

#import "PubFunction.h"

@implementation PubFunction
+ (id)mpubFun {
    static PubFunction *temppubFun = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        temppubFun = [[self alloc] init];
        
    });
    return temppubFun;
    
}
-(id)init {
    
    if (self = [super init]) {
    }
    return self;
    
}
- (NSString*)encodeURL:(NSString *) strurl
                   key:(NSString *) strkey
{
    
    NSString *url=@"http://taobao.ttk.cn/ttkd-server/api/customerAppApi.do?serviceCode=";
    url=[url stringByAppendingString:strkey];
    
    strurl=[strurl stringByReplacingOccurrencesOfString:@" " withString:@""];
    
    strurl=[strurl stringByReplacingOccurrencesOfString:@"\n" withString:@""];
    strurl=[strurl stringByReplacingOccurrencesOfString:@"\r" withString:@""];
    
    NSString *appKey = @"ttkdEXapp";
    NSString *secretKey = @"j1N0n87G";
    NSString *vkey;
    
    vkey = strurl;
    vkey = [vkey stringByAppendingString:appKey];
    vkey = [vkey stringByAppendingString:secretKey];
    
    
    const char *cStr = [vkey UTF8String];
    unsigned char result[16];
    CC_MD5(cStr, strlen(cStr), result); // This is the md5 call
    vkey=[NSString stringWithFormat:
          @"%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x",
          result[0], result[1], result[2], result[3],
          result[4], result[5], result[6], result[7],
          result[8], result[9], result[10], result[11],
          result[12], result[13], result[14], result[15]
          ];
    
    NSData* originData = [vkey dataUsingEncoding:NSASCIIStringEncoding];
    
    NSString* encodeResult = [originData base64EncodedStringWithOptions:NSDataBase64EncodingEndLineWithLineFeed];
    
    encodeResult=[@"&timestamp=123&digest=" stringByAppendingString:encodeResult];
    encodeResult=[encodeResult stringByAppendingString:@"&params="];
 
    
    CFStringRef strrf=CFURLCreateStringByAddingPercentEscapes(kCFAllocatorDefault, (CFStringRef)strurl, NULL, CFSTR("!*'();:@&=+$,/?%#[]"), kCFStringEncodingUTF8);
    
    NSString *newstr =@"";
    newstr=(__bridge NSString *)strrf;
    newstr=[encodeResult stringByAppendingString:newstr];
    newstr=[url stringByAppendingString:newstr];
    
    return newstr;
}
- (NSDictionary *)dictionaryWithJsonString:(NSString *)jsonString {
    if (jsonString == nil) {
        return nil;
    }
    
    NSData *jsonData = [jsonString dataUsingEncoding:NSUTF8StringEncoding];
    NSError *err;
    NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:jsonData
                                                        options:NSJSONReadingMutableContainers
                                                          error:&err];
    if(err) {
        NSLog(@"json解析失败：%@",err);
        return nil;
    }
    return dic;
}
- (NSString *)stringFormDict:(NSDictionary*)dict
{
    NSMutableString *str = [NSMutableString string];
    NSArray *keys = [dict allKeys];
    for (NSString *key in keys) {
        if ([[dict objectForKey:key] isKindOfClass:[NSDictionary class]]) {
            id obj = [dict objectForKey:key];
            [str appendFormat:@"\n%@: %@",key,[self stringFormDict:obj]];
        }else if ([[dict objectForKey:key] isKindOfClass:[NSArray class]]){
            [str appendFormat:@"\n%@:",key];
            for (id obj in [dict objectForKey:key]) {
                [str appendFormat:@"\n%@",[self stringFormDict:obj]];
            }
        }else{
            [str appendFormat:@"\n%@: %@",key,[dict objectForKey:key]];
        }
    }
    return str;
}
- (NSString *)stringFormObject:(id) obj
{
    NSData *jsonData = [JsonObject getJSON:obj options:NSJSONWritingPrettyPrinted error:nil];
    NSString *jsonText =@"";
    jsonText=[[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
    return jsonText;
}
@end
