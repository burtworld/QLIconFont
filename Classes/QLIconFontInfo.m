//
//  QLIconFontInfo.m
//  QLIconFont
//
//  Created by Paramita on 2018/6/6.
//  Copyright © 2018年 Paramita. All rights reserved.
//

#import "QLIconFontInfo.h"

@implementation QLIconFontInfo
- (instancetype)initWithText:(NSString *)text size:(NSInteger)size color:(UIColor *)color path:(NSString *)path {
    if (self = [super init]) {
        _text = text;
        _size = size ? size : 14;
        _color = color ? color : [UIColor blackColor];
        if (path != nil) {
            _path = path;
        }else{
            NSString *bundlePath = [[NSBundle mainBundle] pathForResource:@"QLIconFont" ofType:@"bundle"];
            NSString *ttfPath = [[NSBundle bundleWithPath:bundlePath] pathForResource:@"iconfont" ofType:@"ttf"];
            _path = ttfPath;
        }
    }
    return self;
}

+ (instancetype)iconInfoWithText:(NSString *)text size:(NSInteger)size color:(UIColor *)color {
    return [[QLIconFontInfo alloc] initWithText:text size:size color:color path:nil];
}

+ (instancetype)iconInfoWithText:(NSString *)text size:(NSInteger)size color:(UIColor *)color path:(NSString *)path {
    return [[QLIconFontInfo alloc] initWithText:text size:size color:color path:path];
}
@end
