//
//  CalendarSymbolImageView.m
//  DueNext
//
//  Created by Soheil Rashidi on 10/16/13.
//  Copyright (c) 2013 Soheil Rashidi. All rights reserved.
//

#import "CalendarSymbolView.h"

@interface CalendarSymbolView ()

@property (nonatomic, strong) CAShapeLayer* circleLayer;

@end

@implementation CalendarSymbolView

#pragma mark - Init

- (id)initWithCoder:(NSCoder*)aDecoder
{
    self = [super initWithCoder:aDecoder];

    if (self)
    {
        _circleLayer = [[CAShapeLayer alloc] init];
        _circleLayer.frame = self.bounds;
        _circleLayer.path = [UIBezierPath bezierPathWithRoundedRect:self.bounds cornerRadius:self.bounds.size.width / 2].CGPath;

        [self.layer addSublayer:_circleLayer];
    }

    return self;
}

#pragma mark - Methods

- (void)setCalendar:(EKCalendar*)calendar
{
    _calendar = calendar;

    self.circleLayer.fillColor = calendar.CGColor;
}

@end
