//
//  UIButton+QLIconFont.h
//  QLIconFont
//
//  Created by Paramita on 2018/6/7.
//  Copyright © 2018年 Paramita. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "QLIconFontGenerater.h"


@interface UIButton (QLIconFont)
- (instancetype)setTextWithIconFontInfo:(QLIconFontInfo *)info state:(UIControlState)state;
@end
