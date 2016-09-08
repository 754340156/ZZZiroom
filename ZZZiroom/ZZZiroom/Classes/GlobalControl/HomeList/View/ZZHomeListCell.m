//
//  ZZHomeListCell.m
//  ZZZiroom
//
//  Created by 宝贝计画 on 16/9/8.
//  Copyright © 2016年 lanou3g-22赵哲. All rights reserved.
//

#import "ZZHomeListCell.h"

@interface ZZHomeListCell ()
/**  图片 */
@property (nonatomic, strong) UIImageView * imageV;
/**  titleLabel */
@property (nonatomic, strong) UILabel * titleLabel;
/**  房间大小，几层 */
@property (nonatomic, strong) UILabel * spaceLabel;
/**  租金 */
@property (nonatomic, strong) UILabel * priceLabel;
/**  距离地铁站 */
@property (nonatomic, strong) UILabel * distanceLabel;
/**  标签 */
@property (nonatomic, strong) UIView * markView;



@end


@implementation ZZHomeListCell

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
    self.imageV = [[UIImageView alloc] init];
    [self.contentView addSubview:self.imageV];
    
    self.titleLabel = [[UILabel alloc] init];
    [self.titleLabel sizeToFit];
    [self.contentView addSubview:self.titleLabel];
    
    self.spaceLabel = [[UILabel alloc] init];
    [self.spaceLabel sizeToFit];
    self.spaceLabel.textColor = [UIColor grayColor];
    [self.contentView addSubview:self.spaceLabel];
    
    self.priceLabel = [[UILabel alloc] init];
    [self.priceLabel sizeToFit];
    [self.contentView addSubview:self.priceLabel];
    
    self.distanceLabel = [[UILabel alloc] init];
    self.distanceLabel.textColor = [UIColor grayColor];
    [self.contentView addSubview:self.distanceLabel];

    self.markView = [[UIView alloc] init];
    [self.contentView addSubview:self.maskView];
}
- (void)layoutSubviews
{
    [super layoutSubviews];
    [self.imageV mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.offset(ZZRealValue(10));
        make.left.offset(ZZRealValue(10));
        make.bottom.offset(-ZZRealValue(10));
        make.width.offset(ZZRealValue(120));
    }];
    
    [self.titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.imageV.mas_right).offset(ZZRealValue(10));
        make.top.equalTo(self.imageV.mas_top);
        make.height.offset(ZZRealValue(25));
    }];
    
    [self.spaceLabel mas_makeConstraints:^(MASConstraintMaker *make) {
    }];
    
    [self.priceLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        
    }];
    
    [self.distanceLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        
    }];
    
    [self.markView mas_makeConstraints:^(MASConstraintMaker *make) {
        
    }];
    
}
#pragma mark - 
@end
