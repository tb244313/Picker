//
//  MImaCell.m
//  QQImagePicker
//
//  Created by mac on 2016/11/25.
//  Copyright © 2016年 com.rongniu.caifuwang. All rights reserved.
//
#import "MImaCell.h"

@implementation MImaCell
{

    MBoolBlock _boolBlock;
}
- (void)awakeFromNib {
    // Initialization code
    [self.btnCheckMark setImage:[UIImage imageNamed:@"ico_check_select@2x.png"] forState:UIControlStateSelected];
}

- (void)setBtnSelectedHandle:(MBoolBlock)block {

    _boolBlock = block;
}

- (IBAction)actionBtn:(id)sender {
    if ([self.delegate arrayIsfulled] && !self.btnCheckMark.selected) {
        return;
    }
    self.btnCheckMark.selected = !self.btnCheckMark.selected;
    (!_boolBlock) ?: _boolBlock(self.btnCheckMark.selected);
}

- (void)setBigImgViewWithImage:(UIImage *)img{
    if (_BigImgView) {
        return;
    }
    _BigImgView = [[UIImageView alloc]initWithImage:img];
    _BigImgView.frame = _imavHead.frame;
    [self insertSubview:_BigImgView atIndex:0];
}
@end
