//
//  UIImage+QLIconFont.h
//  QLIconFont
//
//  Created by Paramita on 2018/6/7.
//  Copyright © 2018年 Paramita. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "QLIconFontGenerater.h"

@interface UIImage (QLIconFont)
/**
 使用字体包装类转换成图片
 
 @param info 字体信息类实体
 @return img
 */
+ (UIImage *)imageWithIconInfo:(QLIconFontInfo *)info;
@end
