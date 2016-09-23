//
//  ZZHomeShow_InformationCell.m
//  ZZZiroom
//
//  Created by 宝贝计画 on 16/9/23.
//  Copyright © 2016年 zhaozhe. All rights reserved.
//

#import "ZZHomeShow_InformationCell.h"

@interface ZZHomeShow_InformationCell ()
/**  卧室名 */
@property (nonatomic, strong) UILabel * bedroomNameL;
/**  下定状态 */
@property (nonatomic, strong) UILabel * statusLable;
/**  价格 */
@property (nonatomic, strong) UILabel * priceLabel;
/**  是否是当前房源 */
@property (nonatomic, strong) UILabel * currentLabel;

@end


@implementation ZZHomeShow_InformationCell
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
    //卧室名
    self.bedroomNameL = [[UILabel alloc] init];
    self.bedroomNameL.font = [UIFont systemFontOfSize:ZZRealValue47(15)];
    [self.contentView addSubview:self.bedroomNameL];
    
    //下定状态
    self.statusLable = [[UILabel alloc] init];
    self.statusLable.font = [UIFont systemFontOfSize:ZZRealValue47(15)];
    [self.contentView addSubview:self.statusLable];
    
    //价格
    self.priceLabel = [[UILabel alloc] init];
    self.priceLabel.font = [UIFont systemFontOfSize:ZZRealValue47(15)];;
    [self.contentView addSubview:self.priceLabel];
    
    //是否是当前的房源
    self.currentLabel = [[UILabel alloc] init];
    self.currentLabel.font = [UIFont systemFontOfSize:ZZRealValue47(15)];
    [self.contentView addSubview:self.currentLabel];
}
- (void)layoutSubviews
{
    [super layoutSubviews];
    [self.bedroomNameL mas_makeConstraints:^(MASConstraintMaker *make) {
        
    }];
    [self.statusLable mas_makeConstraints:^(MASConstraintMaker *make) {
        
    }];
    [self.priceLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        
    }];
    [self.currentLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        
    }];
}
@end
