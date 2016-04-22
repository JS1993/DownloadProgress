//
//  DownloadView.m
//  Download progress
//
//  Created by  江苏 on 16/4/22.
//  Copyright © 2016年 jiangsu. All rights reserved.
//

#import "DownloadView.h"

@implementation DownloadView

-(void)setValue:(float)value{
    _value=value;
    
    [self setNeedsDisplay];
}

- (void)drawRect:(CGRect)rect {
    
    CGPoint center=CGPointMake(rect.size.width/2, rect.size.height/2);
    
    CGFloat radius=rect.size.width/2;
    
    CGFloat startA=-M_PI_2;
    
    CGFloat endA=self.value*M_PI*2+startA;
    
    UIBezierPath* path=[UIBezierPath bezierPathWithArcCenter:center radius:radius-15 startAngle:startA endAngle:endA clockwise:YES];
    
    [path stroke];
    
}


@end
