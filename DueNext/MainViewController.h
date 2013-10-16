//
//  ViewController.h
//  DueNext
//
//  Created by Soheil Rashidi on 10/15/13.
//  Copyright (c) 2013 Soheil Rashidi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <EventKitUI/EventKitUI.h>

@interface MainViewController : UITableViewController<EKCalendarChooserDelegate, EKEventViewDelegate>

@end
