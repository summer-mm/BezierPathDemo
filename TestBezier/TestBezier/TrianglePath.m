//
//  TrianglePath.m
//  TestBezier
//
//  Created by iMac on 16/5/23.
//  Copyright © 2016年 iMac. All rights reserved.
//



//画三角形   一条线一条的画就好


#import "TrianglePath.h"

@implementation TrianglePath


- (void)drawRect:(CGRect)rect {
    [self drawTrianglePath];
}
- (void)drawTrianglePath {
    
    UIBezierPath *path = [UIBezierPath bezierPath];
    [path moveToPoint:CGPointMake(self.frame.size.width / 2, 80)];
    [path addLineToPoint:CGPointMake(self.frame.size.width - 20, self.frame.size.height - 200)];
    [path addLineToPoint:CGPointMake(20, self.frame.size.height - 200)];
    
    // 最后的闭合线是可以通过调用closePath方法来自动生成的，也可以调用-addLineToPoint:方法来添加
    //  [path addLineToPoint:CGPointMake(20, 20)];
    
    [path closePath];
    
    // 设置线宽
    path.lineWidth = 1.5;
    
    // 设置填充颜色
    UIColor *fillColor = [UIColor whiteColor];
    [fillColor set];
    [path fill];
    
    // 设置画笔颜色
    UIColor *strokeColor = [UIColor redColor];
    [strokeColor set];
    
    // 根据我们设置的各个点连线
    [path stroke];
}


@end

//UIBezierPath颜色的设置并没有包含在自己类中，而是通过UIColor直接设置的。
//例：
//
//// 设置描边色
//[[UIColor blueColor] setStroke];
//// 设置填充色
//[[UIColor redColor] setFill];
//看上去是UIColor的方法，其实也是对于CGContextRef的渲染，最终还是作用到CGConextRef上的
//而UIBezierPath其实也就是对CGPathRef的封装
//
//所以UIBezierPath通过UIColor的方法来设置颜色也就不奇怪了。
//
//因为UIColor和UIBezierPath最终还是通过Core Graphics的方法来绘图的，只不过苹果又封装了一层OC。


//我们设置画笔颜色通过set方法：
//UIColor *strokeColor = [UIColor blueColor];
//[strokeColor set];
//
//如果我们需要设置填充颜色，比如这里设置为绿色，那么我们需要在设置画笔颜色之前先设置填充颜色，否则画笔颜色就被填充颜色替代了。也就是说，如果要让填充颜色与画笔颜色不一样，那么我们的顺序必须是先设置填充颜色再设置画笔颜色。如下，这两者顺序不能改变。因为我们设置填充颜色也是跟设置画笔颜色一样调用UIColor的-set方法。
// 设置填充颜色
//UIColor *fillColor = [UIColor greenColor];
//[fillColor set];
//[path fill];
//
//// 设置画笔颜色
//UIColor *strokeColor = [UIColor blueColor];
//[strokeColor set];
