//
//  StepLabel.m
//  9.19
//
//  Created by QianBaoiOS on 2017/1/4.
//  Copyright © 2017年 handd. All rights reserved.
//

#define iPhone6 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(750, 1334), [[UIScreen mainScreen] currentMode].size) : NO)

#define iPhone5 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) : NO)

#define iPhone6plus ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? (CGSizeEqualToSize(CGSizeMake(1125, 2001), [[UIScreen mainScreen] currentMode].size) || CGSizeEqualToSize(CGSizeMake(1242, 2208), [[UIScreen mainScreen] currentMode].size)) : NO)

#import "StepLabel.h"

@implementation StepLabel

- (instancetype)initWithTextArray:(NSArray *)array index:(NSInteger)index {

    self = [super init];
    if (self) {
        NSString *text = @"";
        for (int i = 0; i < array.count; i ++) {
            if (i == (array.count - 1)) {
                text = [text stringByAppendingFormat:@"%@",array[i]];
            }else {
                if (iPhone5) {
                    text = [text stringByAppendingFormat:@"%@ -- ",array[i]];
                }else if (iPhone6) {
                    text = [text stringByAppendingFormat:@"%@  ----  ",array[i]];
                }else if (iPhone6plus) {
                    text = [text stringByAppendingFormat:@"%@  -----  ",array[i]];
                }
            }
        }
        
        //显示高亮文本
        self.font = [UIFont systemFontOfSize:12];
        NSMutableAttributedString *str = [[NSMutableAttributedString alloc] initWithString:text];
        NSRange range = NSMakeRange(0,[[str string] rangeOfString:array[index]].location + [[str string] rangeOfString:array[index]].length);
        [str addAttribute:NSForegroundColorAttributeName value:[UIColor redColor] range:range];
        [str addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:12] range:range];
        [self setAttributedText:str];
        
        self.numberOfLines = 0;
        CGFloat height = [self.text boundingRectWithSize:CGSizeMake([UIScreen mainScreen].bounds.size.width, CGFLOAT_MAX) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:12]} context:nil].size.height;
        if (height > 15) {
            
            self.textAlignment = NSTextAlignmentLeft;
        }else {
            self.textAlignment = NSTextAlignmentCenter;
        }
        self.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, height);
    }
    return self;
}

- (void)drawTextInRect:(CGRect)rect {
    UIEdgeInsets insets = {0, 30, 0, 30};
    [super drawTextInRect:UIEdgeInsetsInsetRect(rect, insets)];
}

@end
