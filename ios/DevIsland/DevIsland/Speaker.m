//
//  Speaker.m
//  DevIsland
//
//  Created by Gibran Silva on 13/07/13.
//  Copyright (c) 2013 Gibran Silva. All rights reserved.
//

#import "Speaker.h"

@implementation Speaker
    @synthesize name, bio, photo;

+ (Speaker *) FromDictonary:(NSDictionary *)dictonary{
    Speaker * speaker = [[Speaker alloc] init];
    
    [speaker setName:[dictonary objectForKey:@"Name"]];
    [speaker setBio:[dictonary objectForKey:@"Bio"]];
    [speaker setPhoto:[NSURL URLWithString: [dictonary objectForKey:@"Photo"]]];
    
    return speaker;
}

@end
