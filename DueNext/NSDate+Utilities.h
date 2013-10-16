//
//  NSDate+Utilities.h
//  DueNext
//
//  Created by Soheil Rashidi on 10/16/13.
//  Copyright (c) 2013 Soheil Rashidi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (Utilities)

- (NSDate*)dateWithoutTime;
- (NSDate*)dateByAddingYears:(NSInteger)years;
- (NSInteger)distanceInDaysToDate:(NSDate*)date;

@end
