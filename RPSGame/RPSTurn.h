//
//  RPSTurn.h
//  RPSGame
//
//  Created by inan on 30.07.2018.
//  Copyright © 2018 inan. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, Move){
  Rock,
  Paper,
  Scissors,
  Invalid,
};
@interface RPSTurn : NSObject

@property (nonatomic) Move move;

-(instancetype)initWithMove:(Move) move;
-(BOOL)defeats:(RPSTurn *)opponent;
-(NSString*)description;

@end
