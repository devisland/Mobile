//
//  LocationViewController.m
//  DevIsland
//
//  Created by Gibran Silva on 14/07/13.
//  Copyright (c) 2013 Gibran Silva. All rights reserved.
//

#import "LocationViewController.h"
#import <MapKit/MapKit.h>

@interface LocationViewController ()

@end

@implementation LocationViewController

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
    [self goLocation];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)goLocation{
    CLLocationCoordinate2D unibhLocation;
    
    unibhLocation.latitude = -19.970626;
    unibhLocation.longitude = -43.964903;
    
    MKPointAnnotation *annotation = [[MKPointAnnotation alloc] init];
    [annotation setCoordinate:unibhLocation];
    [annotation setTitle:@"UNIBH - Estoril"];
    [annotation setSubtitle:@"Av. Professor Mário Werneck"];
    
    [self.unibhLocation addAnnotation:annotation];
}

@end
