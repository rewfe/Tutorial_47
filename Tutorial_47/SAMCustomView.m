//
//  SAMCustomView.m
//  Tutorial_47
//
//  Created by Admin on 29.07.15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

#import "SAMCustomView.h"

@interface SAMCustomView ()

@end

@implementation SAMCustomView



- (void)drawRect:(CGRect)rect {
    [self customInit];
}



- (void)customInit {
    
    
    self.layer.cornerRadius = self.cornerRadious;
    self.layer.borderWidth = self.borderWidth;
    
    if (self.cornerRadious > 0) {
        self.layer.masksToBounds = YES;
    }
    
    
    CAGradientLayer *gradient = [CAGradientLayer layer];
    gradient.frame = self.bounds;
    
    gradient.colors = [NSArray arrayWithObjects:(id)[self.startColor CGColor],(id)[self.midColor CGColor], (id)[self.endColor CGColor], nil];
    gradient.endPoint = (self.isHorizontal) ? CGPointMake(1, 0) : CGPointMake(0, 1);
    [self.layer insertSublayer:gradient atIndex:0];
    
}

@end
