//
//  RoundedRectPath.m
//  TestBezier
//
//  Created by iMac on 16/5/23.
//  Copyright © 2016年 iMac. All rights reserved.
//

#import "RoundedRectPath.h"

@implementation RoundedRectPath


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    [self drawRoundedRectPath];
}

- (void)drawRoundedRectPath {
    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(20, 20, self.frame.size.width - 40, self.frame.size.height - 40) cornerRadius:10];
    
    // 设置填充颜色
    UIColor *fillColor = [UIColor greenColor];
    [fillColor set];
    [path fill];
    
    // 设置画笔颜色
    UIColor *strokeColor = [UIColor blueColor];
    [strokeColor set];
    
    // 根据我们设置的各个点连线
    [path stroke];
}
@end


//如果要画只有一个角是圆角，那么我们就修改创建方法：
//
//UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(20, 20, self.frame.size.width - 40, self.frame.size.height - 40) byRoundingCorners:UIRectCornerTopRight cornerRadii:CGSizeMake(20, 20)];