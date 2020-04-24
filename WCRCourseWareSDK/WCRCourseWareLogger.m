//
//  WCRCourseWareLog.m
//  WCRCourseWare
//
//  Created by 欧阳铨 on 2019/2/20.
//  Copyright © 2019 oyq. All rights reserved.
//

#import "WCRCourseWareLogger.h"

static NSString * const kCourseWareLogPath = @"Library/Caches/WCRCourseWareLogs";
static NSString * const kCourseWareName = @"WCRCourseWareSDK";

@implementation WCRCourseWareLogger
+ (instancetype) sharedLogger {
    static WCRCourseWareLogger *logger;
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        logger = [WCRCourseWareLogger new];
        logger.logFilePath = kCourseWareLogPath;
        logger.SDKName = kCourseWareName;
        [[WCRLogger sharedLogger] openXcodeConsole:YES];
    });
    return logger;
}

+ (NSArray *)getLogFilePaths{
    return  [WCRLogger getLogFilesWithPath:[WCRCourseWareLogger sharedLogger].logFilePath];
}
@end