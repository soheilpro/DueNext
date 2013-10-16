//
//  EventCell.m
//  DueNext
//
//  Created by Soheil Rashidi on 10/16/13.
//  Copyright (c) 2013 Soheil Rashidi. All rights reserved.
//

#import "EventCell.h"
#import "CalendarSymbolView.h"

@interface EventCell ()

@property (nonatomic, weak) IBOutlet CalendarSymbolView* calendarSymbolView;
@property (nonatomic, weak) IBOutlet UILabel* titleLabel;
@property (nonatomic, weak) IBOutlet UILabel* timeLabel;

@end

@implementation EventCell

#pragma mark - UITableViewCell

- (void)prepareForReuse
{
    [super prepareForReuse];

    self.titleLabel.text = nil;
    self.timeLabel.text = nil;
}

#pragma mark - Methods

- (void)setEvent:(EKEvent*)event
{
    self.calendarSymbolView.calendar = event.calendar;
    self.titleLabel.text = event.title;

    if (!event.allDay)
    {
        NSCalendar* calendar = [NSCalendar currentCalendar];
        NSDateComponents* eventStartDayComponents = [calendar components:NSCalendarUnitHour | NSCalendarUnitMinute fromDate:event.startDate];

        self.timeLabel.text = [NSString stringWithFormat:@"%02d:%02d", eventStartDayComponents.hour, eventStartDayComponents.minute];
    }
}

@end
