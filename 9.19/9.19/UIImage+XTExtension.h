//
//  UIImage+XTExtension.h
//  XTFramework
//
//  Created by Qing Xiubin on 13-8-15.
//  Copyright (c) 2013年 XT. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (XTExtention)

+ (UIImage *)suitableImageNamed:(NSString *)imageName;
+ (UIImage *)stretchableImageNamed:(NSString *)imageName;
+ (UIImage *)resizableImageNamed:(NSString *)imageName capInsets:(UIEdgeInsets)capInsets;
//中间拉伸
+ (UIImage *)stretchableCenterImageNamed:(NSString *)imageName;
-(UIImage*)scaledToSize:(CGSize)newSize;

//根据颜色生成图片
+ (UIImage *)imageWithColor:(UIColor *)color size:(CGSize)size;

@end
