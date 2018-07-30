//
//  RPSController.m
//  RPSGame
//
//  Created by inan on 30.07.2018.
//  Copyright © 2018 inan. All rights reserved.
//
#import "RPSTurn.h"
#import "RPSController.h"
#import "RPSGame.h"

@implementation RPSController

-(void)throwDown: (Move) playersMove{
  RPSTurn *playersTurn = [[RPSTurn alloc]initWithMove:playersMove];
  RPSTurn *computerTurn = [[RPSTurn alloc]init];
  
  self.game = [[RPSGame alloc] initWithFirstTurn:playersTurn secondTurn:computerTurn];
}

-(NSString*)resultString:(RPSGame*) game {
  
  return [game.firstTurn defeats:game.secondTurn] ? @"You Win!" : @"You Lose!";
}

-(NSString*)messageForGame:(RPSGame*) game {
  // First, handle the tie
  if (game.firstTurn.move == game.secondTurn.move) {
    return @"It's a tie!";
  } else {
    
    // Here we build up the results message "Rock crushes Scissors. You Win!" etc.
    NSString *winnerString = [[game winner] description];
    NSString *loserString = [[game loser]  description];
    NSString *resultsString = [self resultString: game];
    
    NSString *wholeString =  [NSString stringWithFormat:@"%@ %@ %@ %@ %@", winnerString, @" defeats ", loserString, @".",  resultsString];
    
    return wholeString;
  }
}
@end
