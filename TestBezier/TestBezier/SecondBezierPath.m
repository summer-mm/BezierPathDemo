//
//  SecondBezierPath.m
//  TestBezier
//
//  Created by iMac on 16/5/23.
//  Copyright © 2016年 iMac. All rights reserved.
//

#import "SecondBezierPath.h"

@implementation SecondBezierPath


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    [self drawSecondBezierPath];
}

- (void)drawSecondBezierPath {
    UIBezierPath *path = [UIBezierPath bezierPath];
    
    // 首先设置一个起始点
    [path moveToPoint:CGPointMake(20, self.frame.size.height - 100)];
    
    // 添加二次曲线
    [path addQuadCurveToPoint:CGPointMake(self.frame.size.width - 20, self.frame.size.height - 100)
                 controlPoint:CGPointMake(self.frame.size.width / 2, 0)];
    
    path.lineCapStyle = kCGLineCapRound;
    path.lineJoinStyle = kCGLineJoinRound;
    path.lineWidth = 5.0;
    
    UIColor *strokeColor = [UIColor redColor];
    [strokeColor set];
    
    [path stroke];
}
@end
