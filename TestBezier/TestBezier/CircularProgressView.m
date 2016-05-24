
/**
 *       事件进度条
 *
 *
 *
 */

#import "CircularProgressView.h"

@interface CircularProgressView ()
@property (nonatomic) NSTimer *timer;
@property (assign, nonatomic) float progress;
@property (assign, nonatomic) CGFloat angle;

@end

@implementation CircularProgressView

-(id)initWithFrame:(CGRect)frame backColor:(UIColor *)backColor progressColor:(UIColor *)progressColor lineWidth:(CGFloat)lineWidth{

    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
        _backColor = backColor;
        _progressColor = progressColor;
        _lineWidth = lineWidth;
        _progress = 0.3;

    
    }
    return self;
}

- (void)drawRect:(CGRect)rect
{
    
    UIBezierPath *backCircle = [UIBezierPath bezierPathWithArcCenter:CGPointMake(CGRectGetWidth(self.bounds) / 2, CGRectGetHeight(self.bounds) / 2)
                                                              radius:(CGRectGetWidth(self.bounds) - self.lineWidth) / 2
                                                          startAngle:(CGFloat) - M_PI_2
                                                            endAngle:(CGFloat)(1.5 * M_PI)
                                                           clockwise:YES];
    [self.backColor setStroke];
    backCircle.lineWidth = self.lineWidth;
    [backCircle stroke];
    
    if (self.progress) {
        
        UIBezierPath *progressCircle = [UIBezierPath bezierPathWithArcCenter:CGPointMake(CGRectGetWidth(self.bounds) / 2,CGRectGetHeight(self.bounds) / 2)
                                                                      radius:(CGRectGetWidth(self.bounds) - self.lineWidth) / 2
                                                                  startAngle:(CGFloat) - M_PI_2
                                                                    endAngle:(CGFloat)(- M_PI_2 + self.progress * 2 * M_PI)
                                                                   clockwise:YES];
        [self.progressColor setStroke];
        progressCircle.lineWidth = self.lineWidth;
        [progressCircle stroke];
    }
}


@end
