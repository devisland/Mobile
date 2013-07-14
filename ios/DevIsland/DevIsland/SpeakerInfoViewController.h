//
//  SpeakerInfoViewController.h
//  DevIsland
//
//  Created by Gibran Silva on 13/07/13.
//  Copyright (c) 2013 Gibran Silva. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Speaker.h"

@interface SpeakerInfoViewController : UIViewController

@property (weak, nonatomic) Speaker *speaker;
@property (weak, nonatomic) IBOutlet UIImageView *photo;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UITextView *bioText;

@end
