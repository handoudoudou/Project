//
//  GuideView.h
//  BaseBankDiy
//
//  Created by whatever on 2016/10/24.
//  Copyright © 2016年 鹏飞 胡. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GuideView : UIView

@property (nonatomic, assign) NSInteger pageIndex;

//+ (instancetype)defaultGuideView;

- (instancetype)initWithFrame:(CGRect)frame pageIndex:(NSInteger)index;

@end
