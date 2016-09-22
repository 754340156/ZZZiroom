//
//  ZZHomeShow_HeaderCell.h
//  ZZZiroom
//
//  Created by 宝贝计画 on 16/9/19.
//  Copyright © 2016年 lanou3g-22赵哲. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ZZHomeShow_HeaderCellDelegate <NSObject>
/**  点击轮播图回调 */
- (void)ZZHomeShow_HeaderCellDelegate_clickImageWithIndex:(NSInteger )index;
/**  点击付款方式回调 */
- (void)ZZHomeShow_HeaderCellDelegate_clickPaymentBtn;
@end

@interface ZZHomeShow_HeaderCell : UITableViewCell
/**  代理 */
@property (nonatomic, weak) id <ZZHomeShow_HeaderCellDelegate> delegate;
@end
