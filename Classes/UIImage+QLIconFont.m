//
//  UIImage+QLIconFont.m
//  QLIconFont
//
//  Created by Paramita on 2018/6/7.
//  Copyright © 2018年 Paramita. All rights reserved.
//

#import "UIImage+QLIconFont.h"

@implementation UIImage (QLIconFont)
+ (UIImage *)imageWithIconInfo:(QLIconFontInfo *)info {
    if (info == nil) {
        NSAssert(info, @"if QLIconFontInfo is nil, the method will return nil");
        return nil;
    }
    CGFloat size = info.size;
    CGFloat scale = [UIScreen mainScreen].scale;
    CGFloat realSize = size * scale;
    UIFont *font = [QLIconFontGenerater customFontWithPath:info.path size:realSize];
    UIGraphicsBeginImageContext(CGSizeMake(realSize, realSize));
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    if ([info.text respondsToSelector:@selector(drawAtPoint:withAttributes:)]) {
        /**
         * 如果这里抛出异常，请打开断点列表，右击All Exceptions -> Edit Breakpoint -> All修改为Objective-C
         * See: http://stackoverflow.com/questions/1163981/how-to-add-a-breakpoint-to-objc-exception-throw/14767076#14767076
         */
        [info.text drawAtPoint:CGPointZero withAttributes:@{NSFontAttributeName:font, NSForegroundColorAttributeName: info.color}];
    } else {
        
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
        CGContextSetFillColorWithColor(context, info.color.CGColor);
        [info.text drawAtPoint:CGPointMake(0, 0) withFont:font];
#pragma clang pop
    }
    
    UIImage *image = [UIImage imageWithCGImage:UIGraphicsGetImageFromCurrentImageContext().CGImage scale:scale orientation:UIImageOrientationUp];
    UIGraphicsEndImageContext();
    
    return image;
}
@end
