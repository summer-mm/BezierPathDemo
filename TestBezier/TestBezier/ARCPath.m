//
//  ARCPath.m
//  TestBezier
//
//  Created by iMac on 16/5/23.
//  Copyright © 2016年 iMac. All rights reserved.
//

#import "ARCPath.h"
#define   kDegreesToRadians(degrees)  ((pi * degrees)/ 180)
@implementation ARCPath


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    [self drawARCPath];
}


- (void)drawARCPath {
    const CGFloat pi = 3.14159265359;
    
    CGPoint center = CGPointMake(self.frame.size.width / 2, self.frame.size.height / 2);
    UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:center
                                                        radius:100
                                                    startAngle:0
                                                      endAngle:kDegreesToRadians(135)
                                                     clockwise:YES];
    
    path.lineCapStyle = kCGLineCapRound;
    path.lineJoinStyle = kCGLineJoinRound;
    path.lineWidth = 5.0;
    
    UIColor *strokeColor = [UIColor redColor];
    [strokeColor set];
    
    [path stroke];
}
@end
//http://img.blog.csdn.net/20130904200813921?watermark/2/text/aHR0cDovL2Jsb2cuY3Nkbi5uZXQvY3JheW9uZGVuZw==/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70/gravity/SouthEast