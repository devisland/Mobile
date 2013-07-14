//
//  ScheduleViewController.h
//  DevIsland
//
//  Created by Gibran Silva on 14/07/13.
//  Copyright (c) 2013 Gibran Silva. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ScheduleViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *infoLabel;
-(void)prepareSchedule;
@end
