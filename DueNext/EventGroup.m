//
//  EventGroup.m
//  DueNext
//
//  Created by Soheil Rashidi on 10/15/13.
//  Copyright (c) 2013 Soheil Rashidi. All rights reserved.
//

#import "EventGroup.h"
#import "NSDate+Utilities.h"
#import <EventKit/EventKit.h>

@implementation EventGroup

#pragma mark - Init

- (id)init
{
    self = [super init];

    if (self)
    {
        _events = [[NSMutableArray alloc] init];
    }

    return self;
}

#pragma mark - Static methods

+ (NSArray*)groupEvents:(NSArray*)events sinceDate:(NSDate*)baseDate
{
    NSMutableDictionary* groups = [[NSMutableDictionary alloc] init];

    baseDate = [baseDate dateWithoutTime];
    
    for (EKEvent* event in events)
    {
        NSInteger distance = [baseDate distanceInDaysToDate:[event.startDate dateWithoutTime]];
        id key = @(distance);

        EventGroup* group = groups[key];

        if (group == nil)
        {
            group = [[EventGroup alloc] init];
            group.distance = distance;
            groups[key] = group;
        }

        [group.events addObject:event];
    }

    return [groups.allValues sortedArrayUsingComparator:^NSComparisonResult(EventGroup* event1, EventGroup* event2)
    {
        return event1.distance - event2.distance;
    }];
}

@end
