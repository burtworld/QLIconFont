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
        
        NSBundle *bundle = [NSBundle bundleForClass:[self class]];
        NSURL *bundleURL = [bundle URLForResource:@"QLIconFont" withExtension:@"bundle"];
        NSBundle *resourceBundle = bundleURL == nil ? [NSBundle mainBundle] : [NSBundle bundleWithURL: bundleURL];
        NSString *ttfPath = [resourceBundle pathForResource:@"iconfont" ofType:@"ttf"];
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
