//
//  UIImage+QLIconFont.m
//  QLIconFont
//
//  Created by Paramita on 2018/6/7.
//  Copyright © 2018年 Paramita. All rights reserved.
//

#import "UIImage+QLIconFont.h"

@implementation UIImage (QLIconFont)
+ (UIImage *)imageWithIconInfo:(QLIconFontInfo *)info{
    if (info == nil) {
        NSAssert(info, @"if QLIconFontInfo is nil, the method will return nil");
        return nil;
    }
    UILabel *label = [UILabel new];
    [label setTextWithIconFontInfo:info];
    [label sizeToFit];
    UIGraphicsBeginImageContextWithOptions(label.frame.size, NO, [[UIScreen mainScreen] scale]);

    [label.layer renderInContext:UIGraphicsGetCurrentContext()];
    
    UIImage *retImage = UIGraphicsGetImageFromCurrentImageContext();
    
    return retImage;
}
@end
