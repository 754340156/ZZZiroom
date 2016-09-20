//
//  ZZHomeShowController.m
//  ZZZiroom
//
//  Created by 宝贝计画 on 16/9/8.
//  Copyright © 2016年 赵哲. All rights reserved.
//

#import "ZZHomeShowController.h"

@interface ZZHomeShowController ()<UITableViewDelegate,UITableViewDataSource>
/**  <#Description#> */
@property (nonatomic, strong) UITableView * tableView;

@end

@implementation ZZHomeShowController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setTableView];
}
#pragma mark - setTableView
- (void)setTableView
{
    self.tableView = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStylePlain];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
}
#pragma mark - UITableViewDelegate
- (NSInteger )numberOfSectionsInTableView:(UITableView *)tableView
{
    return 0;
}
- (NSInteger )tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 0;
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
@end
