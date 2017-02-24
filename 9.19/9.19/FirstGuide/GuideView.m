//
//  GuideView.m
//  BaseBankDiy
//
//  Created by whatever on 2016/10/24.
//  Copyright © 2016年 鹏飞 胡. All rights reserved.
//

#import "GuideView.h"

@interface GuideView (){
    NSString *imageName;
    CGPoint center;
    NSArray *imgArray;
    BOOL isLast;
}

@property (nonatomic, strong) UIImageView *bgView;
@property (nonatomic, strong) UIButton *nextBtn;

@end

@implementation GuideView


//+ (instancetype)defaultGuideView {
//    
//    static GuideView *instance = nil;
//    static dispatch_once_t onceToken;
//    dispatch_once(&onceToken, ^{
//        instance = [[super allocWithZone:NULL] init];
//    });
//    return instance;
//}
//
//+(id) allocWithZone:(struct _NSZone *)zone {
//    
//    return [GuideView defaultGuideView] ;
//    
//}
//
//-(id) copyWithZone:(struct _NSZone *)zone {
//    
//    return [GuideView defaultGuideView] ;
//    
//}

- (instancetype)initWithFrame:(CGRect)frame pageIndex:(NSInteger)index {
    
    self = [super initWithFrame:frame];
    if (self) {
        [self initViewWithPageIndex:index];
    }
    return self;
}

//- (instancetype)init
//{
//    self = [super init];
//    if (self) {
//        [self initView];
//    }
//    return self;
//}

//- (void)initView {
//    _bgView = [[UIImageView alloc] init];
//    _bgView.backgroundColor = [UIColor clearColor];
//    _bgView.contentMode = UIViewContentModeScaleAspectFit;
//    [self addSubview:_bgView];
//    
//    _nextBtn = [UIButton buttonWithType:UIButtonTypeCustom];
//    [_nextBtn setBackgroundColor:[UIColor clearColor]];
//    _nextBtn.layer.borderColor = [UIColor redColor].CGColor;
//    _nextBtn.layer.borderWidth = 0.5;
//    _nextBtn.layer.masksToBounds = YES;
//    [_nextBtn addTarget:self action:@selector(nextAction:) forControlEvents:UIControlEventTouchUpInside];
//    [self addSubview:_nextBtn];
//}
//
//- (void)setPageIndex:(NSInteger)pageIndex {
//    _pageIndex = pageIndex;
//    [self setNeedsLayout];
//}
//
//- (void)layoutSubviews {
//    [super layoutSubviews];
//    imgArray = @[@"mc1",@"mc2",@"mc3",@"mc4",@"mc5"];
//    _bgView.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height);
//    _nextBtn.frame = CGRectMake(0, 0, 120, 64);
//    switch (_pageIndex) {
//        case 0:
//            imageName = imgArray[4];
//            center = CGPointMake([UIScreen mainScreen].bounds.size.width/2.0, [UIScreen mainScreen].bounds.size.height-179/667.0*[UIScreen mainScreen].bounds.size.height);
//            break;
//        case 1:
//            imageName = imgArray[1];
//            center = CGPointMake([UIScreen mainScreen].bounds.size.width/2.0, [UIScreen mainScreen].bounds.size.height-179/667.0*[UIScreen mainScreen].bounds.size.height);
//            break;
//        case 2:
//            imageName = imgArray[0];
//            center = CGPointMake([UIScreen mainScreen].bounds.size.width/2.0, [UIScreen mainScreen].bounds.size.height-179/667.0*[UIScreen mainScreen].bounds.size.height);
//            break;
//        default:
//            break;
//    }
//    
//    _bgView.image = [UIImage imageNamed:imageName];
//    _nextBtn.center = center;
//}

- (void)initViewWithPageIndex:(NSInteger)index {
    imgArray = @[@"mc1",@"mc2",@"mc3",@"mc4",@"mc5"];
    
    _bgView = [[UIImageView alloc] initWithFrame:self.bounds];
    _bgView.backgroundColor = [UIColor clearColor];
    [self addSubview:_bgView];
    
    _nextBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    _nextBtn.frame = CGRectMake(0, 0, 120, 64);
    [_nextBtn setBackgroundColor:[UIColor clearColor]];
    _nextBtn.layer.borderColor = [UIColor redColor].CGColor;
    _nextBtn.layer.borderWidth = 0.5;
    _nextBtn.layer.masksToBounds = YES;
    [_nextBtn addTarget:self action:@selector(nextAction:) forControlEvents:UIControlEventTouchUpInside];
    
    _pageIndex = index;
    switch (index) {
        case 0:
            imageName = imgArray[4];
            center = CGPointMake([UIScreen mainScreen].bounds.size.width/2.0, [UIScreen mainScreen].bounds.size.height-199/667.0*[UIScreen mainScreen].bounds.size.height);
            break;
        case 1:
            imageName = imgArray[1];
            center = CGPointMake([UIScreen mainScreen].bounds.size.width/2.0, [UIScreen mainScreen].bounds.size.height-199/667.0*[UIScreen mainScreen].bounds.size.height);
            break;
        case 2:
            imageName = imgArray[0];
            center = CGPointMake([UIScreen mainScreen].bounds.size.width/2.0, [UIScreen mainScreen].bounds.size.height-199/667.0*[UIScreen mainScreen].bounds.size.height);
            break;
        default:
            break;
    }
    
    _bgView.image = [UIImage imageNamed:imageName];
    _nextBtn.center = center;
    [self addSubview:_nextBtn];
}

- (void)nextAction:(UIButton *)sender {
    if (isLast) {
        [self endAction];
    }
    switch (_pageIndex) {
        case 0:
            imageName = imgArray[3];
            center = CGPointMake([UIScreen mainScreen].bounds.size.width/2.0, [UIScreen mainScreen].bounds.size.height-179/667.0*[UIScreen mainScreen].bounds.size.height);
            isLast = YES;
            break;
        case 1:
            [self endAction];
            break;
        case 2:
            imageName = imgArray[2];
            center = CGPointMake([UIScreen mainScreen].bounds.size.width/2.0, [UIScreen mainScreen].bounds.size.height-125/667.0*[UIScreen mainScreen].bounds.size.height);
            isLast = YES;
            break;
        default:
            break;
    }
    _bgView.image = [UIImage imageNamed:imageName];
    _nextBtn.center = center;
}

- (void)endAction {
    isLast = NO;
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"opacity"];
    animation.fromValue = @1;
    animation.toValue = @0;
    animation.duration = 0.5;
    animation.repeatCount = 1;
    animation.autoreverses = YES;
    [self.bgView.layer addAnimation:animation forKey:@"animation"];
    [self removeFromSuperview];
}


@end
