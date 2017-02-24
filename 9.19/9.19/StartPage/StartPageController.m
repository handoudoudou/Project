//
//  StartPageController.m
//  BaseBankDiy
//
//  Created by whatever on 16/9/8.
//  Copyright © 2016年 鹏飞 胡. All rights reserved.
//

#import "StartPageController.h"
#import "StartPageView.h"
#import "ViewController.h"

@interface StartPageController ()


@end

@implementation StartPageController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    StartPageView *spView = [[[NSBundle mainBundle] loadNibNamed:@"StartPageView" owner:self options:nil] lastObject];
    self.view = spView;
    [NSTimer scheduledTimerWithTimeInterval:2.0f target:self selector:@selector(start) userInfo:nil repeats:NO];
}

#pragma mark 开始
- (void)start
{
    // 0.显示状态栏
    [UIApplication sharedApplication].statusBarHidden = NO;
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    //从StoryBoard 中加载 指定标识 的控制器
    ViewController *mtb =  [sb instantiateInitialViewController];
    //淡出动画
    CATransition *transition = [CATransition animation];
    transition.duration = 0.3;
    transition.type = kCATransitionFade;
    [transition setSubtype:kCATransitionFromLeft];
    [[UIApplication sharedApplication].delegate.window.layer addAnimation:transition forKey:@""];
    self.view.window.rootViewController = mtb;
    
//    CLIENT.hasLoadedStartPage = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
