//
//  StartPageView.m
//  BaseBankDiy
//
//  Created by whatever on 16/9/8.
//  Copyright © 2016年 鹏飞 胡. All rights reserved.
//

#import "StartPageView.h"

@implementation StartPageView

- (void)awakeFromNib {
    [super awakeFromNib];
    
    UIImage *image =[UIImage imageNamed:@"img_startpage"];
    _bgImage.image = image;
//    NSString *imageUrl = [[NSUserDefaults standardUserDefaults]objectForKey:@"flickerScreenUrl"];
//    [_netImage sd_setImageWithURL:[NSURL URLWithString:imageUrl]];
}

@end
