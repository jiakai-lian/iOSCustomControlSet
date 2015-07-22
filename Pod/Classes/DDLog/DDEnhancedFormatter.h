//
// Created by bluecats on 22/07/15.
// Copyright (c) 2015 bluecats. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DDLog.h"


//#ifdef DEBUG
//static const DDLogLevel ddLogLevel = DDLogLevelVerbose;
//#else
//static const DDLogLevel ddLogLevel = DDLogLevelWarn;
//#endif



//- (void)initDDLog {
//    [DDLog addLogger:[DDASLLogger sharedInstance] ];
//    
//    id<DDLogger> consoleLogger = [DDTTYLogger sharedInstance];
//    consoleLogger.logFormatter = [[DDEnhancedFormatter alloc] init];
//    [DDLog addLogger:consoleLogger];
//}

@interface DDEnhancedFormatter : NSObject<DDLogFormatter>
@end