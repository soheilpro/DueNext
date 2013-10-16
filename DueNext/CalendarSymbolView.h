//
//  CalendarSymbolImageView.h
//  DueNext
//
//  Created by Soheil Rashidi on 10/16/13.
//  Copyright (c) 2013 Soheil Rashidi. All rights reserved.
//

#import <EventKit/EventKit.h>
#import <UIKit/UIKit.h>

@interface CalendarSymbolView : UIImageView

@property (nonatomic, strong) EKCalendar* calendar;

@end
