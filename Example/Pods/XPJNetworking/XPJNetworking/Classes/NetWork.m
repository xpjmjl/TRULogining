//
//  NetWork.m
//  Pods-TRULogining
//
//  Created by xupengju on 2018/12/18.
//

#import "NetWork.h"

@implementation NetWork
+ (BOOL)loginWithName:(NSString *)name password:(NSString *)password {
    if ([name isEqualToString:@"user"] && [password isEqualToString:@"123"]) {
        return YES;
    }
    return NO;
}
@end
