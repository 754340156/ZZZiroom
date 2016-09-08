//
//  YJ_HomePageController.m
//  ZZZiroom
//
//  Created by 宝贝计画 on 16/9/8.
//  Copyright © 2016年 lanou3g-22赵哲. All rights reserved.
//

#import "YJ_HomePageController.h"
#import "Profile_HomePageController.h"
@interface YJ_HomePageController ()<UITableViewDataSource,UITableViewDelegate>
/**  header */
@property (nonatomic, strong) ZZHomePageHeaderView * headerView;
/**  <#Description#> */
@property (nonatomic, strong) UITableView * tableView;
/**  数据源 */
@property (nonatomic, strong) NSMutableArray * arrayData;

@end

@implementation YJ_HomePageController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setNavigationBar];
    [self setTableView];
}
#pragma mark - setup
- (void)setNavigationBar
{
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@""] style:UIBarButtonItemStylePlain target:self action:@selector(enterProfile)];
}
- (void)setTableView
{
    self.tableView = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStylePlain];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.view addSubview:self.tableView];
}
#pragma mark - 点击事件
- (void)enterProfile
{
    Profile_HomePageController *profileVC = [[Profile_HomePageController  alloc] init];
    [self.navigationController pushViewController:profileVC animated:YES];
}
#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 6;
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
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 0;
}
@end
