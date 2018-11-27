//
//  QLIconFontInfo.h
//  QLIconFont
//
//  Created by Paramita on 2018/6/6.
//  Copyright © 2018年 Paramita. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#define kIconFontBundleName                             @"QLIconFont.bundle"

//! 字体信息实体类
@interface QLIconFontInfo : NSObject
@property (nonatomic, copy) NSString *text;
@property (nonatomic, assign) NSInteger size;
@property (nonatomic, retain) UIColor *color;
@property (nonatomic, copy) NSString *path;



/**
 * 
 * @also `see` iconInfoWithText:(NSString *)text size:(NSInteger)size color:(UIColor *)color path:(NSString *)path;
 */
+ (instancetype)iconInfoWithText:(NSString *)text size:(NSInteger)size color:(UIColor *)color;

/**
 快速构建 包装字体的信息

 @param text 文字
 @param size 字体大小 默认14
 @param color 颜色 默认黑色
 @param path 路径 默认bundle内的iconfont.tff
 @return 返回字体信息实体
 */
+ (instancetype)iconInfoWithText:(NSString *)text size:(NSInteger)size color:(UIColor *)color path:(NSString *)path;
@end
