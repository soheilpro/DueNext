//
//  EventGroup.h
//  DueNext
//
//  Created by Soheil Rashidi on 10/15/13.
//  Copyright (c) 2013 Soheil Rashidi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EventGroup : NSObject

@property (nonatomic) NSInteger distance;
@property (nonatomic, strong) NSMutableArray* events;

+ (NSArray*)groupEvents:(NSArray*)events sinceDate:(NSDate*)baseDate;

@end
