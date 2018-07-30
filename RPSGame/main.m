//
//  main.m
//  RPSGame
//
//  Created by inan on 30.07.2018.
//  Copyright © 2018 inan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RPSController.h"

int main(int argc, const char * argv[]) {
  @autoreleasepool {
      // insert code here...
      NSLog(@"Hello, World!");
    RPSController* gameController = [[RPSController alloc] init];
    [gameController throwDown: Scissors];
    NSString *resultsMessage = [gameController messageForGame:gameController.game];
    
    // Assign the return value of messageForGame: to the resultsMessage string
    NSLog(@"%@", resultsMessage);
    
   
    
  }
 
  return 0;
}
