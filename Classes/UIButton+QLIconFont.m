//
//  UIButton+QLIconFont.m
//  QLIconFont
//
//  Created by Paramita on 2018/6/7.
//  Copyright © 2018年 Paramita. All rights reserved.
//

#import "UIButton+QLIconFont.h"


@implementation UIButton (QLIconFont)
- (instancetype)setTextWithIconFontInfo:(QLIconFontInfo *)info state:(UIControlState)state{
    if (info == nil) {
        return self;
    }
    self.titleLabel.font = [QLIconFontGenerater customFontWithPath:info.path size:info.size];
    [self setTitle:info.text forState:state];
    [self setTitleColor:info.color forState:state];
    return self;
}
@end
