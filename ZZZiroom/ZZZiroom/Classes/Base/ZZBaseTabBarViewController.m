//
//  ZZBaseTabBarViewController.m
//  ZZZiroom
//
//  Created by 宝贝计画 on 16/9/8.
//  Copyright © 2016年 赵哲. All rights reserved.
//

#import "ZZBaseTabBarViewController.h"
#import "ZZBaseNavController.h"
#import "ZRYI_HomePageController.h"
#import "ZRYU_HomePageController.h"
#import "YJ_HomePageController.h"
#import "ZZ_HomePageController.h"
#import "MS_HomePageController.h"
@interface ZZBaseTabBarViewController ()

@end

@implementation ZZBaseTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setTabBarWithViewController:[[YJ_HomePageController alloc] init] image:[UIImage imageNamed:@"zr_home_"] selectImage:[UIImage imageNamed:@"zr_home_yj"] title:@"友家"];
    
    [self setTabBarWithViewController:[[YJ_HomePageController alloc] init] image:[UIImage imageNamed:@"zr_home_entr"] selectImage:[UIImage imageNamed:@"zr_home_entr"] title:@"整租"];
    
    [self setTabBarWithViewController:[[YJ_HomePageController alloc] init] image:[UIImage imageNamed:@"zr_home_yu"] selectImage:[UIImage imageNamed:@"zr_home_yu"] title:@"自如寓"];
    
    [self setTabBarWithViewController:[[YJ_HomePageController alloc] init] image:[UIImage imageNamed:@"zr_home_yi"] selectImage:[UIImage imageNamed:@"zr_home_yi"] title:@"自如驿"];
    
    [self setTabBarWithViewController:[[YJ_HomePageController alloc] init] image:[UIImage imageNamed:@"zr_home_mings"] selectImage:[UIImage imageNamed:@"zr_home_mings"] title:@"民宿"];
}

- (void)setTabBarWithViewController:(UIViewController *)viewControler image:(UIImage *)image selectImage:(UIImage *)selectImage title:(NSString *)title
{
    ZZBaseNavController *navc = [[ZZBaseNavController alloc] initWithRootViewController:viewControler];
    navc.tabBarItem.title = title;
    [navc.tabBarItem setImage:image];
    [navc.tabBarItem setSelectedImage:[selectImage imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate]];
    [self addChildViewController:navc];
}

@end
