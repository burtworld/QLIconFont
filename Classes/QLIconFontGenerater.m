//
//  QLIconFontGenerater.m
//  QLIconFont
//
//  Created by Paramita on 2018/6/8.
//  Copyright © 2018年 Paramita. All rights reserved.
//

#import "QLIconFontGenerater.h"

@implementation QLIconFontGenerater
    
+ (UIFont*)customFontWithPath:(NSString*)path size:(CGFloat)size {
    if (path == nil) {
        NSString *bundlePath = [[NSBundle mainBundle] pathForResource:@"QLIconFont" ofType:@"bundle"];
        NSString *ttfPath = [[NSBundle bundleWithPath:bundlePath] pathForResource:@"iconfont" ofType:@"ttf"];
        path = ttfPath;
    }
    NSAssert([[NSFileManager defaultManager] fileExistsAtPath:path], @"Font file doesn't exist");
    CGDataProviderRef fontDataProvider = CGDataProviderCreateWithURL((__bridge CFURLRef)[NSURL fileURLWithPath:path]);
    CGFontRef fontRef = CGFontCreateWithDataProvider(fontDataProvider);
    CGDataProviderRelease(fontDataProvider);
    CTFontManagerRegisterGraphicsFont(fontRef, NULL);
    NSString *fontName = CFBridgingRelease(CGFontCopyPostScriptName(fontRef));
    UIFont *font = [UIFont fontWithName:fontName size:size];
    CGFontRelease(fontRef);
    return font;
}



@end
