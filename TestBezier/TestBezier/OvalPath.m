//
//  OvalPath.m
//  TestBezier
//
//  Created by iMac on 16/5/23.
//  Copyright © 2016年 iMac. All rights reserved.
//

#import "OvalPath.h"

@implementation OvalPath


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    [self drawOvalPath];
}

- (void)drawOvalPath {
    // 传的是不是正方形，因此就可以绘制出椭圆圆了
    UIBezierPath *path = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(20, 20, self.frame.size.width - 80, self.frame.size.height - 40)];
    
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
