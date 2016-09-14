//
//  ZZHomeMate_NearbyController.m
//  ZZZiroom
//
//  Created by 宝贝计画 on 16/9/9.
//  Copyright © 2016年 赵哲. All rights reserved.
//

#import "ZZHomeMate_NearbyController.h"

@interface ZZHomeMate_NearbyController ()<UITableViewDataSource,UITableViewDelegate>
/**  <#Description#> */
@property (nonatomic, strong) UITableView * tableView1;
/**  <#Description#> */
@property (nonatomic, strong) UITableView * tableView2;
/**  <#Description#> */
@property (nonatomic, strong) UITableView * tableView3;
/**  数据源 */
@property (nonatomic, strong) NSMutableArray * dataArray;


@end

@implementation ZZHomeMate_NearbyController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setTableViewWithIndex:1 tableView:self.tableView1];
    [self setTableViewWithIndex:2 tableView:self.tableView2];
    [self setTableViewWithIndex:3 tableView:self.tableView3];
}
#pragma mark - setup
- (void)setTableViewWithIndex:(NSInteger)index tableView:(UITableView *)tableView
{
    CGFloat tableViewW = ZZScreenWidth / 3;
    tableView = [[UITableView alloc] initWithFrame:CGRectMake((index - 1) * tableViewW, 0, tableViewW, ZZRealValue(500)) style:UITableViewStylePlain];
    tableView.delegate = self;
    tableView.dataSource = self;
    [self.view addSubview:tableView];
}
#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *ID = @"identifier";
    UITableViewCell *cell  = [tableView dequeueReusableCellWithIdentifier:ID];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
    }
    
    cell.textLabel.text = [NSString stringWithFormat:@"%ld---%ld",(long)indexPath.section,(long)indexPath.row];
    return cell;
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
