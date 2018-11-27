//
//  QLIconFontGenerater.h
//  QLIconFont
//
//  Created by Paramita on 2018/6/8.
//  Copyright © 2018年 Paramita. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreText/CoreText.h>
#import "QLIconFontInfo.h"

/**
 * 字体：如果有自定义的字体文件，请添加到项目，没有即默认使用QLIconFont.Bundle里的字体
 */
@interface QLIconFontGenerater : NSObject

    
    
    
    
/**
 加载自定义字体并返回字体
 
 @param path 字体路径，如果为空，则使用QLIconFont.Bundle内的iconfont.tff文件
 @param size 文字大小
 @return font
 */
+ (UIFont*)customFontWithPath:(NSString*)path size:(CGFloat)size;
@end
