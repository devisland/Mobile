//
//  LocationViewController.h
//  DevIsland
//
//  Created by Gibran Silva on 14/07/13.
//  Copyright (c) 2013 Gibran Silva. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface LocationViewController : UIViewController
@property (weak, nonatomic) IBOutlet MKMapView *unibhLocation;

-(void)goLocation;
@end
