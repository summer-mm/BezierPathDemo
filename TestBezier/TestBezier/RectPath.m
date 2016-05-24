//
//  RectPath.m
//  TestBezier
//
//  Created by iMac on 16/5/23.
//  Copyright © 2016年 iMac. All rights reserved.
//

#import "RectPath.h"

@implementation RectPath


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    [self drawRectPath];
}


// 画矩形
- (void)drawRectPath {
    UIBezierPath *path = [UIBezierPath bezierPathWithRect:CGRectMake(20, 80, self.frame.size.width - 40, self.frame.size.height - 200)];
    
    path.lineWidth = 1.5;
    path.lineCapStyle = kCGLineCapRound;
    path.lineJoinStyle = kCGLineJoinBevel;
    
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

//lineCapStyle属性是用来设置线条拐角帽的样式的，其中有三个选择：
//
///* Line cap styles. */
//
//typedef CF_ENUM(int32_t, CGLineCap) {
//    kCGLineCapButt,
//    kCGLineCapRound,
//    kCGLineCapSquare
//};
//
//其中，第一个是默认的，第二个是轻微圆角，第三个正方形。
//
//lineJoinStyle属性是用来设置两条线连结点的样式，其中也有三个选择：
//
//
///* Line join styles. */
//
//typedef CF_ENUM(int32_t, CGLineJoin) {
//    kCGLineJoinMiter,
//    kCGLineJoinRound,
//    kCGLineJoinBevel
//};
//
//其中，第一个是默认的表示斜接，第二个是圆滑衔接，第三个是斜角连接。
//
//
//
