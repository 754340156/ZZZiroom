//
//  YJ_HomeCell.m
//  ZZZiroom
//
//  Created by 宝贝计画 on 16/9/8.
//  Copyright © 2016年 赵哲. All rights reserved.
//

#import "YJ_HomeCell.h"

@interface YJ_HomeCell ()<UICollectionViewDelegate,UICollectionViewDataSource>
/**  header */
@property (nonatomic, strong) UILabel * headerLabel;
/**  更多按钮 */
@property (nonatomic, strong) UIButton * moreBtn;
/**  collectionView */
@property (nonatomic, strong) UICollectionView * collectionView;
/**  数据源 */
@property (nonatomic, strong) NSMutableArray * dataArray;

@end


@implementation YJ_HomeCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self setup];
    }
    return self;
}
#pragma mark - setup
- (void)setup
{
    self.headerLabel = [[UILabel alloc] init];
    [self.headerLabel sizeToFit];
    [self.contentView addSubview:self.headerLabel];
    
    self.moreBtn  = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.moreBtn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    [self.moreBtn setTitle:@"更多" forState:UIControlStateNormal];
    [self.moreBtn setImage:[UIImage imageNamed:@""] forState:UIControlStateNormal];
    [self.moreBtn addTarget:self action:@selector(moreAction) forControlEvents:UIControlEventTouchUpInside];
    [self.contentView addSubview:self.moreBtn];
    
    UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
    flowLayout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
//    flowLayout.itemSize = ;
    flowLayout.sectionInset = UIEdgeInsetsMake(0, 0, 0, 0);
    self.collectionView = [[UICollectionView alloc] init];
    self.collectionView.collectionViewLayout = flowLayout;
    self.collectionView.delegate = self;
    self.collectionView.dataSource = self;
    self.collectionView.showsVerticalScrollIndicator = NO;
    self.collectionView.showsHorizontalScrollIndicator = NO;
    [self.collectionView registerClass:[ZZHomePageCollectionCell class] forCellWithReuseIdentifier:NSStringFromClass([ZZHomePageCollectionCell class])];
    [self.contentView addSubview:self.collectionView];
}
- (void)layoutSubviews
{
    [super layoutSubviews];
    [self.headerLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.offset(ZZRealValue(20));
        make.left.offset(ZZRealValue(20));
        make.height.offset(ZZRealValue(25));
    }];
    
    [self.moreBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.headerLabel.mas_centerY);
        make.right.offset(-ZZRealValue(20));
        make.size.mas_offset(CGSizeMake(ZZRealValue(60), ZZRealValue(20)));
    }];
    
    [self.collectionView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.headerLabel.mas_bottom);
        make.left.offset(0);
        make.right.offset(0);
        make.bottom.offset(0);
    }];
}
#pragma mark - target
- (void)moreAction
{
    
}
#pragma mark - UICollectionViewDelegate
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return self.dataArray.count;
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    ZZHomePageCollectionCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:NSStringFromClass([ZZHomePageCollectionCell class]) forIndexPath:indexPath];
    return cell;
}

@end
