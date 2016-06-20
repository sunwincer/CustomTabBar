//
//  WCTabBar.m
//  1百思不得姐
//
//  Created by 孙文策 on 16/6/20.
//  Copyright © 2016年 孙文策. All rights reserved.
//

#import "WCTabBar.h"

@interface WCTabBar ()
@property (nonatomic,weak)  UIButton *CenterButton;
@end
@implementation WCTabBar
-(instancetype)initWithFrame:(CGRect)frame{
    if (self =[super initWithFrame:frame]) {
        UIButton * centerBTN =[UIButton buttonWithType:UIButtonTypeCustom];
        [centerBTN setBackgroundImage:[UIImage imageNamed:@"tabBar_publish_icon"] forState:UIControlStateNormal];
        [centerBTN setBackgroundImage:[UIImage imageNamed:@"tabBar_publish_click_icon"] forState:UIControlStateHighlighted];
        [self addSubview:centerBTN];
        self.CenterButton =centerBTN;
        
    }
    return self;
}

-(void)layoutSubviews{
    [super layoutSubviews];
    
    //设置发布按钮的大小，与图片一样
    self.CenterButton.bounds =CGRectMake(0, 0, self.CenterButton.currentBackgroundImage.size.width, self.CenterButton.currentBackgroundImage.size.height);
    self.CenterButton.center =CGPointMake(self.frame.size.width/2, self.frame.size.height/2);
    //设置其他button的frame
    /**
     *  y一样，宽度，高度一样，只有x不一样
     */
    CGFloat buttonY = 0;
    CGFloat buttonW = self.frame.size.width/5.0;
    CGFloat buttonH = self.frame.size.height;
    
    
    NSInteger index = 0;
    for (UIView * btn in self.subviews) {
        //判断自己添加的按钮
        if (![btn isKindOfClass:[UIControl class]]|| btn == self.CenterButton) {
            continue;
        }
        
        
    
        CGFloat buttonX = buttonW *((index >1 )?(index + 1) :index);
        btn.frame =CGRectMake(buttonX, buttonY, buttonW, buttonH);
        
        index ++;
    }
}

@end
