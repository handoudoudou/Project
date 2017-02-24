//
//  ViewController.m
//  9.19
//
//  Created by whatever on 16/9/19.
//  Copyright © 2016年 handd. All rights reserved.
//

#import "ViewController.h"
#import "UIImageView+WebCache.h"
//#import "GuideView.h"
//#import <BlocksKit/BlocksKit+UIKit.h>
//#import <ReactiveCocoa/ReactiveCocoa.h>
//#import "JQIndicatorView.h"
//#import "UIView+WebCacheOperation.h"

#import "FirstViewController.h"

#import "StepLabel.h"
#import "UIImage+XTExtension.h"

@interface ViewController () <UITextFieldDelegate,UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, strong) UITextField *moneyTextField;
@property (nonatomic, strong) NSString *name;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    self.view.backgroundColor = [UIColor greenColor];
//    GuideView *guideView = [GuideView defaultGuideView];
//            GuideView *guideView = [[GuideView alloc] initWithFrame:self.view.bounds pageIndex:0];
//    guideView.frame = self.view.bounds;
//    guideView.pageIndex = 0;
//    [[UIApplication sharedApplication].keyWindow addSubview:guideView];
    
//UITextField
//    UITextField *textField = [[UITextField alloc] initWithFrame:CGRectMake(100, 100, 100, 50)];
//    textField.backgroundColor = [UIColor lightGrayColor];
//    [self.view addSubview:textField];
//    RACSignal *inputSignal = [[[textField.rac_textSignal
//                            map:^id(NSString *text) {
//                                return @([self isValidString:text]);
//                            }]
//                            map:^id(NSNumber *isValidString) {
//                                return [isValidString boolValue] ? [UIColor redColor] : [UIColor greenColor];
//                            }]
//                            subscribeNext:^(UIColor *color) {
//                                textField.backgroundColor = color;
//                            }];
//
//    [textField setBk_shouldChangeCharactersInRangeWithReplacementStringBlock:^BOOL(UITextField *field, NSRange range, NSString *string) {
//        NSLog(@"string = %@",string);
//        NSLog(@"textField.text = %@",field.text);
//        NSString *updateString = [field.text stringByAppendingString:string];
//        NSLog(@"updateString = %@",updateString);
//        
////        if (updateString.length > 3) {
////            field.backgroundColor = [UIColor redColor];
////        } else {
////            field.backgroundColor = [UIColor greenColor];
////        }
//        return YES;
//    }];
//    
////UIButton
//    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
//    btn.frame = CGRectMake(100, 200, 100, 50);
//    [btn setBackgroundColor:[UIColor redColor]];
//    [[btn rac_signalForControlEvents:UIControlEventTouchUpInside]
//     subscribeNext:^(id x) {
//         textField.text = @"sad";
//     }];
//    [self.view addSubview:btn];
//
////UILabel
//    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(100, 300, 100, 50)];
//    label.backgroundColor = [UIColor orangeColor];
//    [self.view addSubview:label];
//    [[label rac_signalForSelector:@selector(isValidString:)]        //走不通
//     subscribeNext:^(id x) {
//         label.backgroundColor = [UIColor purpleColor];
//    }];
//
////UIImageView
//    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(100, 400, 100, 50)];
//    imageView.backgroundColor = [UIColor grayColor];
//    [self.view addSubview:imageView];
//    
//    
//
//    JQIndicatorView *indicator = [[JQIndicatorView alloc] initWithType:JQIndicatorTypeCyclingLine tintColor:[UIColor redColor]];
//    
//    indicator.center = CGPointMake(550, 400);
//    [self.view addSubview:indicator];
    
    
//    _moneyTextField = [[UITextField alloc] initWithFrame:CGRectMake(10, 80, [UIScreen mainScreen].bounds.size.width - 20, 40)];
//    _moneyTextField.placeholder = @"￥请输入充值金额";
//    _moneyTextField.keyboardType = UIKeyboardTypeDecimalPad;
//    _moneyTextField.textAlignment = NSTextAlignmentCenter;
//    _moneyTextField.font = [UIFont systemFontOfSize:20];
//    _moneyTextField.delegate = self;
//    [self.view addSubview:_moneyTextField];
    
    //内存泄漏
//    NSMutableArray *firstArray = [NSMutableArray array];
//    NSMutableArray *secondArray = [NSMutableArray array];
//    [firstArray addObject:secondArray];
//    [secondArray addObject:firstArray];
    
//    UIImageView *imageView = [[UIImageView alloc] initWithFrame:[UIScreen mainScreen].bounds];
//    [imageView sd_setImageWithURL:[NSURL URLWithString:@"https://jmhoss.oss-cn-qingdao.aliyuncs.com/Public/upload/ad/2016/09-14/57d8e77f97d94.png"]];
//    [self.view addSubview:imageView];
//    
//    NSMutableString *str = [NSMutableString stringWithString:@"000"];
//    self.name = str;
//    str = [NSMutableString stringWithString:@"111"];
//    NSNull *null = [NSNull null];
//    NSArray *array = [NSArray arrayWithObjects:@"sad",@"dsa", null, @"qwe",@"ewq",nil];
    
//    UITableView *tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 64, self.view.frame.size.width, self.view.frame.size.height-64) style:UITableViewStylePlain];
//    tableView.delegate = self;
//    tableView.dataSource = self;
//    [self.view addSubview:tableView];
//    StepLabel *label = [[StepLabel alloc] initWithTextArray:@[@"客户信息",@"抵押信息",@"贷款信息",@"撒娇地方",@"阿斯顿发放",@"案说法为"] index:3];
//    
//    label.backgroundColor = [UIColor greenColor];
//    tableView.tableHeaderView = label;
    
//    self.title = @"首页";
    
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 64)];
    view.backgroundColor = [UIColor redColor];
    [self.view addSubview:view];
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 20, [UIScreen mainScreen].bounds.size.width, 44)];
    label.text = @"首页";
    label.textAlignment = NSTextAlignmentCenter;
    label.textColor = [UIColor whiteColor];
    [view addSubview:label];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setTitle:@"跳转" forState:UIControlStateNormal];
    [btn setBackgroundColor:[UIColor grayColor]];
    btn.frame = CGRectMake(100, 200, 100, 100);
    [btn addTarget:self action:@selector(action) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    [UIApplication sharedApplication].statusBarStyle = UIStatusBarStyleDefault;
//    [self.navigationController.navigationBar setBarTintColor:[UIColor redColor]];
//    [self.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor]}];
//    [self.navigationController.navigationBar setShadowImage:[UIImage imageWithColor:[UIColor greenColor] size:CGSizeMake([UIScreen mainScreen].bounds.size.width, 1)]];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [UIApplication sharedApplication].statusBarStyle = UIStatusBarStyleLightContent;
//    [self.navigationController.navigationBar setBarTintColor:[UIColor whiteColor]];
//    [self.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor blackColor]}];
//    [self.navigationController.navigationBar setShadowImage:[UIImage imageWithColor:[UIColor yellowColor] size:CGSizeMake([UIScreen mainScreen].bounds.size.width, 1)]];
}

- (void)action {
//    FirstViewController *ctrl = [[FirstViewController alloc] init];
//    [self.navigationController pushViewController:ctrl animated:YES];


    //跳转系统设置页面
//    NSURL * url = [NSURL URLWithString:UIApplicationOpenSettingsURLString];
//    
//    if([[UIApplication sharedApplication] canOpenURL:url]) {
//        
//        NSURL*url =[NSURL URLWithString:UIApplicationOpenSettingsURLString];
//        [[UIApplication sharedApplication] openURL:url];
//        
//    }

    if ([[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:@"prefs:root=WIFI"]]){
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"prefs:root=WIFI"]];
    }
    
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    NSString *text             = _moneyTextField.text;
    NSString *decimalSeperator = @".";
    NSCharacterSet *charSet    = nil;
    NSString *numberChars      = @"0123456789";
    
    if ([string isEqualToString:decimalSeperator] && [text length] == 0) {
        return NO;
    }
    
    NSRange decimalRange = [text rangeOfString:decimalSeperator];
    BOOL isDecimalNumber = (decimalRange.location != NSNotFound);
    if (isDecimalNumber) {
        charSet = [NSCharacterSet characterSetWithCharactersInString:numberChars];
        if ([string rangeOfString:decimalSeperator].location != NSNotFound) {
            return NO;
        }
    }
    else {
        numberChars = [numberChars stringByAppendingString:decimalSeperator];
        charSet = [NSCharacterSet characterSetWithCharactersInString:numberChars];
    }
    
    NSCharacterSet *invertedCharSet = [charSet invertedSet];
    NSString *trimmedString = [string stringByTrimmingCharactersInSet:invertedCharSet];
    text = [text stringByReplacingCharactersInRange:range withString:trimmedString];
    
    if (isDecimalNumber) {
        NSArray *arr = [text componentsSeparatedByString:decimalSeperator];
        if ([arr count] == 2) {
            if ([arr[1] length] > 2) {
                return NO;
            }
        }
    }
    
    textField.text = text;
    return NO;
}

//- (UIColor *)randomColor{
//    CGFloat red = (CGFloat)random()/(CGFloat)RAND_MAX;
//    CGFloat green = (CGFloat)random()/(CGFloat)RAND_MAX;
//    CGFloat blue = (CGFloat)random()/(CGFloat)RAND_MAX;
//    return [UIColor colorWithRed:red green:green blue:blue alpha:1.0f];
//}

//- (BOOL)isValidString:(NSString *)string {
//    return string.length > 3;
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"asd"];
    return cell;
}

@end
