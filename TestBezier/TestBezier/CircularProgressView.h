//
//  CircularProgressView.h
//  WlProgressview
//
//  Created by iMac on 16/5/20.
//  Copyright © 2016年 iMac. All rights reserved.
//

#import <UIKit/UIKit.h>




@interface CircularProgressView : UIView

@property(nonatomic)UIColor *backColor;

@property(nonatomic)UIColor *progressColor;

@property(nonatomic,assign)CGFloat lineWidth;


-(id)initWithFrame:(CGRect)frame
         backColor:(UIColor*)backColor
     progressColor:(UIColor*)progressColor
         lineWidth:(CGFloat)lineWidth;

@end
