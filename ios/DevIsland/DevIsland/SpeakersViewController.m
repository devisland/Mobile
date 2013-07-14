//
//  SpeakersViewController.m
//  DevIsland
//
//  Created by Gibran Silva on 13/07/13.
//  Copyright (c) 2013 Gibran Silva. All rights reserved.
//

#import "SpeakersViewController.h"
#import "Speaker.h"
#import "SpeakerCellView.h"
#import <QuartzCore/QuartzCore.h>

@interface SpeakersViewController ()
{
    NSMutableArray *arrayOfSpeakers;
}
@end

@implementation SpeakersViewController

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
    
    NSString *url = [NSString stringWithFormat:@"http://devday.devisland.com/assets/json/speakers.json"];
    NSData *jsonData = [NSData dataWithContentsOfURL: [NSURL URLWithString:url]];
    
    NSError* error;
    NSDictionary *jsonSpeakers = [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingMutableContainers error:&error];
    arrayOfSpeakers = [[NSMutableArray alloc] initWithCapacity: 30];
    
    //Load Json Speakers 
    if(!error) {
        for(id jsonSpeaker in jsonSpeakers) {
            Speaker *speaker = [Speaker FromDictonary:jsonSpeaker];
            [ arrayOfSpeakers addObject: speaker];                      
        }
    }
}

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return arrayOfSpeakers.count / 2;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 2;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath: (NSIndexPath *)indexPath{
    static NSString *speakerIdentifier = @"Speaker";
    
    SpeakerCellView *speakerCell = [collectionView dequeueReusableCellWithReuseIdentifier:speakerIdentifier forIndexPath: indexPath];
    Speaker *speaker = [arrayOfSpeakers objectAtIndex:indexPath.item];
    
    NSData *data = [NSData dataWithContentsOfURL: speaker.photo];
    
    [[speakerCell photo] setImage:[[UIImage alloc] initWithData:data]];
    [[speakerCell nameLabel] setText: speaker.name];
    
    speakerCell.photo.layer.shadowColor = [UIColor blackColor].CGColor;
    speakerCell.photo.layer.shadowOpacity = 0.5f;
    speakerCell.photo.layer.shadowOffset = CGSizeMake(3.0f, 3.0f);
    speakerCell.photo.layer.masksToBounds = NO;
    
    return speakerCell;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
