//
//  NSDate+Utilities.m
//  DueNext
//
//  Created by Soheil Rashidi on 10/16/13.
//  Copyright (c) 2013 Soheil Rashidi. All rights reserved.
//

#import "NSDate+Utilities.h"

#define SECONDS_IN_A_YEAR 31556926

@implementation NSDate (Utilities)

- (NSDate*)dateWithoutTime
{
    NSCalendar* calendar = [NSCalendar currentCalendar];
    NSDateComponents* components = [calendar components:NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay fromDate:self];

    return[calendar dateFromComponents:components];;
}

- (NSDate*)dateByAddingYears:(NSInteger)years;
{
	NSTimeInterval timeInterval = [self timeIntervalSinceReferenceDate] + years * SECONDS_IN_A_YEAR;

	return [NSDate dateWithTimeIntervalSinceReferenceDate:timeInterval];
}

- (NSInteger)distanceInDaysToDate:(NSDate*)date;
{
    NSDateComponents* components = [[NSCalendar currentCalendar] components:NSDayCalendarUnit fromDate:self toDate:date options:0];

    return components.day;
}

@end
