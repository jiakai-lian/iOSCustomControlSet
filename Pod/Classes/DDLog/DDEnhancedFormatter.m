//
// Created by bluecats on 22/07/15.
// Copyright (c) 2015 bluecats. All rights reserved.
//

#import "DDEnhancedFormatter.h"
#import <libkern/OSAtomic.h>


@implementation DDEnhancedFormatter

- (NSString*)formatLogMessage:(DDLogMessage *)logMessage
{
    NSString* logLevel = nil;
    switch (logMessage->_flag) {
        case DDLogFlagError    : logLevel = @"E"; break;
        case DDLogFlagWarning  : logLevel = @"W"; break;
        case DDLogFlagInfo     : logLevel = @"I"; break;
        case DDLogFlagDebug    : logLevel = @"D"; break;
        default                : logLevel = @"V"; break;
    }

//    return [NSString stringWithFormat:@"[%@][%@ %@][Line %lu] %@",
//                                      logLevel,
//                                      logMessage->_fileName,
//                                      logMessage->_function,
//                                      (unsigned long)logMessage->_line,
//                                      logMessage->_message];
    
    return [NSString stringWithFormat:@"[%@] %@-%lu:\n%@",
            logLevel,
            logMessage->_function,
            (unsigned long)logMessage->_line,
            logMessage->_message];
}

@end