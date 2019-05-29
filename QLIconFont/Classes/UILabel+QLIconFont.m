//
//  UILabel+QLIconFont.m
//  QLIconFont
//
//  Created by Paramita on 2018/6/7.
//  Copyright © 2018年 Paramita. All rights reserved.
//

#import "UILabel+QLIconFont.h"

@implementation UILabel (QLIconFont)
- (instancetype)setTextWithIconFontInfo:(QLIconFontInfo *)fontInfo {
    if (fontInfo == nil) {
        return self;
    }
    self.font = [QLIconFontGenerater customFontWithPath:fontInfo.path size:fontInfo.size];
    self.text = fontInfo.text;
    self.textColor = fontInfo.color;
    return self;
}
@end
