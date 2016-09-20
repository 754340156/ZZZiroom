//
//  ZZHomeShow_HeaderCell.m
//  ZZZiroom
//
//  Created by 宝贝计画 on 16/9/19.
//  Copyright © 2016年 lanou3g-22赵哲. All rights reserved.
//

#import "ZZHomeShow_HeaderCell.h"

@interface ZZHomeShow_HeaderCell ()
/**  轮播图 */
@property (nonatomic, strong) UIView * scrollView;
/**  title */
@property (nonatomic, strong) UILabel * titleLabel;
/**  price */
@property (nonatomic, strong) UILabel * priceLabel;
/**  付款方式 */
@property (nonatomic, strong) UIButton * paymentBtn;
/**  面积 */
@property (nonatomic, strong) UILabel * areaLabel;
/**  楼层 */
@property (nonatomic, strong) UILabel * storeyLabel;
/**  朝向 */
@property (nonatomic, strong) UILabel * <#name#>;


@end

@implementation ZZHomeShow_HeaderCell

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
    //房屋特色
    UILabel *HousingLabel = [[UILabel alloc] init];
    //两条黑线
    UIView *graylineV1 = [[UIView alloc] init];
    UIView *graylineV2 = [[UIView alloc] init];
    
}
- (void)layoutSubviews
{
    [super layoutSubviews];
}
@end
