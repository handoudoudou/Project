//
//  UIImage+XTExtension.m
//  XTFramework
//
//  Created by Qing Xiubin on 13-8-15.
//  Copyright (c) 2013年 XT. All rights reserved.
//

#import "UIImage+XTExtension.h"
#import "XTSystem.h"

@implementation UIImage (XTExtention)

+ (UIImage *)suitableImageNamed:(NSString *)imageName{
    UIImage *image = nil;
    if ([XTSystem isPhoneRetina4]) {
        NSString *name4Image = [[imageName stringByDeletingPathExtension] stringByAppendingString:@"-568h"];
        image = [UIImage imageNamed:name4Image];
        if (!image) {
            image = [UIImage imageNamed:imageName];
        }
    } else {
        image = [UIImage imageNamed:imageName];
    }
    
    return image;
}

+ (UIImage *)stretchableImageNamed:(NSString *)imageName{
    UIImage *image = [UIImage imageNamed:imageName];
    return [image stretchableImageWithLeftCapWidth:image.size.width/2 topCapHeight:image.size.height/2];
}

+ (UIImage *)resizableImageNamed:(NSString *)imageName capInsets:(UIEdgeInsets)capInsets{
    UIImage *image = [UIImage imageNamed:imageName];
    return [image resizableImageWithCapInsets:capInsets];
}

+ (UIImage *)stretchableCenterImageNamed:(NSString *)imageName{
    UIImage *image = [UIImage imageNamed:imageName];
    
    UIEdgeInsets insets = UIEdgeInsetsMake(image.size.height/2,image.size.width/2,image.size.height/2,image.size.width/2);
    
    if ([[[UIDevice currentDevice] systemVersion] floatValue] < 6.0) {
        image = [image stretchableImageWithLeftCapWidth:insets.left topCapHeight:insets.top];
    } else {
        image = [image resizableImageWithCapInsets:insets resizingMode:UIImageResizingModeStretch];
    }
    return image;
    
}

-(UIImage*)scaledToSize:(CGSize)newSize {
    
    // Create a graphics image context
    UIGraphicsBeginImageContext(newSize);
    
    // Tell the old image to draw in this new context, with the desired
    // new size
    [self drawInRect:CGRectMake(0,0,newSize.width,newSize.height)];
    
    // Get the new image from the context
    UIImage* newImage = UIGraphicsGetImageFromCurrentImageContext();
    
    // End the context
    UIGraphicsEndImageContext();
    
    // Return the new image.
    return newImage;
}


+ (UIImage *)imageWithColor:(UIColor *)color size:(CGSize)size

{
    @autoreleasepool {
        CGRect rect = CGRectMake(0, 0, size.width, size.height);
        UIGraphicsBeginImageContext(rect.size);
        CGContextRef context = UIGraphicsGetCurrentContext();
        CGContextSetFillColorWithColor(context,color.CGColor);
        CGContextFillRect(context, rect);
        UIImage *img = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        return img;
    }
}

@end
