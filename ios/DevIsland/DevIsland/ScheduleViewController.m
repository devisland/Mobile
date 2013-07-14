//
//  ScheduleViewController.m
//  DevIsland
//
//  Created by Gibran Silva on 14/07/13.
//  Copyright (c) 2013 Gibran Silva. All rights reserved.
//

#import "ScheduleViewController.h"

@interface ScheduleViewController ()
{
    NSMutableArray *arrayOfSchedule;
}
@end

@implementation ScheduleViewController
@synthesize infoLabel;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self prepareSchedule];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareSchedule{
    NSError* error;
    BOOL info = false;
    
    NSString *url = [NSString stringWithFormat:@"http://devday.devisland.com/assets/json/schedules.json"];
    NSData *jsonData = [NSData dataWithContentsOfURL: [NSURL URLWithString:url] options:NSDataReadingUncached error:&error];
    
    if (!error)
    {
        NSDictionary *jsonSchedules = [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingMutableContainers error:&error];
        arrayOfSchedule = [[NSMutableArray alloc] initWithCapacity: 30];
    
        //Load Json Schedule
        if(!error) {
            for(id jsonSchedule in jsonSchedules) {
                info = true;
            }
        }
    }
    
    [infoLabel setHidden:info];
}

@end
