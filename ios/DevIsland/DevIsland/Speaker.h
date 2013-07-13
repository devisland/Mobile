//
//  Speaker.h
//  DevIsland
//
//  Created by Gibran Silva on 13/07/13.
//  Copyright (c) 2013 Gibran Silva. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Speaker : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *bio;
@property (nonatomic, strong) NSURL *photo;

+ (Speaker *) FromDictonary: (NSDictionary *) dictonary;

@end
