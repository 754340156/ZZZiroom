//
//  ZZHomeListController.m
//  ZZZiroom
//
//  Created by 宝贝计画 on 16/9/8.
//  Copyright © 2016年 lanou3g-22赵哲. All rights reserved.
//

#import "ZZHomeListController.h"

@interface ZZHomeListController ()

@end

@implementation ZZHomeListController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setNavigationBar];
}
#pragma mark -setup
- (void)setNavigationBar
{
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"zr_nav_gotoback"] style:UIBarButtonItemStyleDone target:self action:@selector(backAction)];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@""] style:UIBarButtonItemStyleDone target:self action:@selector(mapSearchHomeAction)];
#warning 搜索框没写
}
#pragma mark - target
- (void)backAction
{
    [self.navigationController popViewControllerAnimated:YES];
}
- (void)mapSearchHomeAction
{
    //地图找房，嵌入百度地图
}
@end
