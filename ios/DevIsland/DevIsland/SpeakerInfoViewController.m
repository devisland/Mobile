//
//  SpeakerInfoViewController.m
//  DevIsland
//
//  Created by Gibran Silva on 13/07/13.
//  Copyright (c) 2013 Gibran Silva. All rights reserved.
//

#import "SpeakerInfoViewController.h"
#import "Speaker.h"

@interface SpeakerInfoViewController ()
@end

@implementation SpeakerInfoViewController
@synthesize speaker;

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
	// Do any additional setup after loading the view.
    
    NSData *data = [NSData dataWithContentsOfURL:speaker.photo];
    
    self.photo.image = [[UIImage alloc]initWithData:data];
    self.nameLabel.text = speaker.name;
    self.bioText.text = speaker.bio;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
