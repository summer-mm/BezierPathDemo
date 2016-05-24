//
//  ViewController.m
//  TestBezier
//
//  Created by iMac on 16/5/23.
//  Copyright © 2016年 iMac. All rights reserved.
//

#import "ViewController.h"
#import "TrianglePath.h"
#import "RectPath.h"
#import "CiclePath.h"
#import "OvalPath.h"
#import "RoundedRectPath.h"
#import "ARCPath.h"
#import "SecondBezierPath.h"
#import "ThirdBezierPath.h"
#import "CircularProgressView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self makeUI];

    // Do any additional setup after loading the view, typically from a nib.
}

-(void)makeUI{
    
    
    NSArray *typeBtn = @[@"三角",@"四方",@"圆",@"椭圆",@"带圆角的矩形",@"画弧",@"二次贝塞尔曲线",@"三次贝塞尔曲线",@"弧形进度条"];
    for (int i = 0; i<typeBtn.count; i++) {
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        btn.frame = CGRectMake(100, 80 + i*60, 200, 40);
        [btn setTitle:typeBtn[i] forState:UIControlStateNormal];
        btn.backgroundColor = [UIColor colorWithRed:arc4random()%255/255.0 green:arc4random()%255/255.0 blue:arc4random()%255/255.0 alpha:1];
        btn.tag = 2000 + i;
        [btn addTarget:self action:@selector(btnDown:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:btn];
    }
}

-(void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    
    for (id tmpView in [self.view subviews]) {
        [tmpView removeFromSuperview];
    }
       [self makeUI];
}
-(void)btnDown:(UIButton*)sender{
    
    switch (sender.tag - 2000) {
        case 0:{
            TrianglePath *triangle = [[TrianglePath alloc] initWithFrame:self.view.bounds];
            [self.view addSubview:triangle];
        
        }
            break;
        case 1:{
            RectPath *rectPath = [[RectPath alloc]initWithFrame:self.view.bounds];
            [self.view addSubview:rectPath];
            
        }
        case 2:{
            
            CiclePath *ciclePath = [[CiclePath alloc]initWithFrame:self.view.bounds];
            [self.view addSubview:ciclePath];
        }
            break;
        case 3:{
            OvalPath *ovalPath = [[OvalPath alloc] initWithFrame:self.view.bounds];
            [self.view addSubview:ovalPath];
            
        }
            break;
        case 4:{
            RoundedRectPath *roundedRectPath = [[RoundedRectPath alloc]initWithFrame:self.view.bounds];
            [self.view addSubview:roundedRectPath];
            
        }
            break;
        case 5:{
            ARCPath *aRCPath = [[ARCPath alloc]initWithFrame:self.view.bounds];
            [self.view addSubview:aRCPath];
            
        }
            break;
        case 6:{
            
            SecondBezierPath *secondBezierPath = [[SecondBezierPath alloc]initWithFrame:self.view.bounds];
            [self.view addSubview:secondBezierPath];
        }
            break;
        case 7:{
            
            ThirdBezierPath *thirdBezierPath = [[ThirdBezierPath alloc]initWithFrame:self.view.bounds];
            [self.view addSubview:thirdBezierPath];
        }
            break;
           
        case 8:{
            
            CircularProgressView  *circularProgressView = [[CircularProgressView alloc]initWithFrame:self.view.bounds backColor:[UIColor colorWithRed:236.0 / 255.0
                                                                                                                                                green:236.0 / 255.0
                                                                                                                                                 blue:236.0 / 255.0
                                                                                                                                                alpha:1.0]
                                                                                       progressColor:[UIColor colorWithRed:82.0 / 255.0
                                                                                                                     green:135.0 / 255.0
                                                                                                                      blue:237.0 / 255.0
                                                                                                                     alpha:1.0] lineWidth:20];
            [self.view addSubview:circularProgressView];
        }
            break;
            
            
        default:
            break;
    }


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
