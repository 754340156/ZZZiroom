//
//  ZZHomeListController.m
//  ZZZiroom
//
//  Created by 宝贝计画 on 16/9/8.
//  Copyright © 2016年 赵哲. All rights reserved.
//

#import "ZZHomeListController.h"
#import "ZZHomeListMateView.h"
#import "ZZHomeListCell.h"
@interface ZZHomeListController ()<ZZHomeListMateViewDelegate,UITableViewDelegate,UITableViewDataSource>
/**  选择分类搜索 */
@property (nonatomic, strong) ZZHomeListMateView * mateView;
/**  <#Description#> */
@property (nonatomic, strong) UITableView * tableView;
/**  分类选择的蒙版view */
@property (nonatomic, strong) UIView * mateHUDView;
/**  数据源 */
@property (nonatomic, strong) NSMutableArray * dataArray;

@end

@implementation ZZHomeListController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setNavigationBar];
    [self setMateView];
    [self setTableView];
}
#pragma mark -setup
- (void)setNavigationBar
{
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"zr_nav_gotoback"] style:UIBarButtonItemStyleDone target:self action:@selector(backAction)];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@""] style:UIBarButtonItemStyleDone target:self action:@selector(mapSearchHomeAction)];
#warning 搜索框没写
}
- (void)setMateView
{
    self.mateView = [[ZZHomeListMateView alloc] init];
    self.mateView.delegate = self;
    [self.view addSubview:self.mateView];
    [self.mateView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.offset(0);
        make.left.offset(0);
        make.right.offset(0);
        make.height.offset(ZZRealValue(50));
    }];
}
- (void)setTableView
{
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, ZZRealValue(50), ZZScreenWidth, ZZScreenHeight - ZZRealValue(50))     style:UITableViewStylePlain];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.view addSubview:self.tableView];
    [self.tableView registerClass:[ZZHomeListCell class] forCellReuseIdentifier:NSStringFromClass([ZZHomeListCell class])];
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
#pragma mark - ZZHomeListMateViewDelegate
- (void)ZZHomeListMateView_CilckBtn:(UIButton *)btn
{
    
}
#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *ID = @"reuseIdentifier";
    UITableViewCell *cell  = [tableView dequeueReusableCellWithIdentifier:ID];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
    }
    cell.textLabel.text = [NSString stringWithFormat:@"%ld---%ld",(long)indexPath.section,(long)indexPath.row];
    return cell;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return ZZRealValue(150);
}
#pragma mark - 懒加载
- (NSMutableArray *)dataArray
{
    if (!_dataArray) {
        _dataArray = [NSMutableArray array];
    }
    return _dataArray;
}
@end
