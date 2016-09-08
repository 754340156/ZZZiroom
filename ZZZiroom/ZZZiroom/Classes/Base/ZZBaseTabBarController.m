//
//  ZZBaseTabBarController.m
//  ZZZiroom
//
//  Created by lanou3g on 16/8/9.
//  Copyright © 2016年 lanou3g-22赵哲. All rights reserved.
//

#import "ZZBaseTabBarController.h"

@interface ZZBaseTabBarController ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic,strong)UIView *backView;
/**  <#Description#> */
@property (nonatomic,strong) UITableView *tableView;
@end

@implementation ZZBaseTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
 
    
    [self setTableView];
    
    
    
    
    
    
    _backView = [[UIView alloc] init];
    [self.view addSubview:_backView];
    _backView.backgroundColor = [UIColor whiteColor];
    [_backView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.offset(0);
        make.right.offset(0);
        make.bottom.offset(0);
        make.height.offset(ZZRealValue(70));
    }];
    
    UIImageView * backImageView = [[UIImageView alloc] init];
    [_backView addSubview:backImageView];
    backImageView.image = [UIImage imageNamed:@"zr_house_shadow"];
    [backImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.offset(0);
        make.left.offset(0);
        make.right.offset(0);
        make.bottom.offset(0);
    }];
    
    UISlider *slider = [[UISlider alloc] init];
    slider.maximumValue = 4;
    slider.minimumValue = 0;
    slider.value = 0;
    slider.maximumTrackTintColor = [UIColor lightGrayColor];
    slider.minimumTrackTintColor = [UIColor lightGrayColor];
    [slider setThumbImage: [UIImage imageNamed:@"zr_home_barbg"] forState:UIControlStateNormal];
    
    [self.backView addSubview:slider];
    [slider mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.offset(ZZRealValue(2 ));
        make.left.offset(ZZRealValue(20));
        make.right.offset(ZZRealValue(-20));
    }];
    slider.continuous = NO;
    [slider addTarget:self action:@selector(changeValue:) forControlEvents: UIControlEventValueChanged];
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(touchAction:)];
    [slider addGestureRecognizer:tap];
}

- (void)setTableView
{
    self.tableView = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStylePlain];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.view addSubview:self.tableView];
}


#pragma mark - 方法
- (void)changeValue:(UISlider *)gender
{
    [self animationWith:gender pointX:0];
}
- (void)touchAction:(UITapGestureRecognizer *)gender
{
    UISlider *slider = (UISlider *)gender.view;
   CGPoint point = [gender locationInView:slider];
    [self animationWith:slider pointX:point.x];
    
}

- (void)animationWith:(UISlider *)slider pointX:(CGFloat )pointX
{
    CGFloat width = slider.ZZ_width / 4;
    CGFloat x = pointX ? pointX / width : slider.value;
    
    if (x >= 0 && x < 0.5)
    {
        [UIView animateWithDuration:0.3 animations:^{
            [slider setValue:0 animated:YES];
        }];
    }else if (x >= 0.5 && x < 1.5)
    {
        [UIView animateWithDuration:0.3 animations:^{
            [slider setValue:1 animated:YES];
        }];
        
    }else if (x >= 1.5 && x < 2.5)
    {
        [UIView animateWithDuration:0.3 animations:^{
            [slider setValue:2 animated:YES];
        }];
    }else if (x >= 2.5 && x < 3.5)
    {
        [UIView animateWithDuration:0.3 animations:^{
            [slider setValue:3 animated:YES];
        }];
    }else if (x >= 3.5 && x < 4)
    {
        [UIView animateWithDuration:0.3 animations:^{
            [slider setValue:4 animated:YES];
        }];
    }

}

#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 100;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"cell";
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    cell.textLabel.text = [NSString stringWithFormat:@"%ld,%ld",(long)indexPath.section,(long)indexPath.row];
    return cell;
}
@end
