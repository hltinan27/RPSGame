//
//  RPSTurn.h
//  RPSGame
//
//  Created by inan on 30.07.2018.
//  Copyright © 2018 inan. All rights reserved.
//
#import "RPSTurn.h"
#import <Foundation/Foundation.h>

@interface RPSGame : NSObject

@property (nonatomic) RPSTurn *firstTurn;
@property (nonatomic) RPSTurn *secondTurn;

-(instancetype)initWithFirstTurn: (RPSTurn*) playerTurn secondTurn: (RPSTurn*) computerTurn;
-(RPSTurn*)winner;
-(RPSTurn*)loser;


@end
