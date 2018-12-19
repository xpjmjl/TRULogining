//
//  NetWork.h
//  Pods-TRULogining
//
//  Created by xupengju on 2018/12/18.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NetWork : NSObject
+ (BOOL)loginWithName:(NSString *)name password:(NSString *)password;
@end

NS_ASSUME_NONNULL_END
