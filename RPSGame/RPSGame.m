//
//  RPSTurn.m
//  RPSGame
//
//  Created by inan on 30.07.2018.
//  Copyright © 2018 inan. All rights reserved.
//
#import "RPSTurn.h"
#import "RPSGame.h"

@implementation RPSGame

-(instancetype)initWithFirstTurn:(RPSTurn*) playerTurn secondTurn:(RPSTurn*)computerTurn{
  self = [super init];
  if(self){
    _firstTurn = playerTurn;
    _secondTurn = computerTurn;
  }
  return self;
  
}
-(RPSTurn*)winner {
  
  return [self.firstTurn defeats:self.secondTurn] ? self.firstTurn : self.secondTurn;
}

-(RPSTurn *)loser {
  
  return [self.firstTurn defeats:self.secondTurn] ? self.secondTurn : self.firstTurn;
}


@end
