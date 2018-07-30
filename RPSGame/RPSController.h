//
//  RPSController.h
//  RPSGame
//
//  Created by inan on 30.07.2018.
//  Copyright © 2018 inan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RPSGame.h"

@interface RPSController : NSObject
@property (nonatomic) RPSGame *game;

-(void)throwDown:(Move)playersMove;
-(NSString*)messageForGame:(RPSGame*) game;

@end
