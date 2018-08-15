//
//  Coin.m
//  ViewBitCoinObjectiveC
//
//  Created by Bruno Ferreira De Oliveira on 14/8/18.
//  Copyright © 2018 Bruno Ferreira De Oliveira. All rights reserved.
//

#import "Coin.h"

@implementation Coin

@synthesize id;
@synthesize price;
@synthesize volumeQuote;
@synthesize change;

-(id)initWithDictionary:(NSDictionary*)dict
{
    self = [super init];
    
    if(self) {
        
        self.id = [dict valueForKey:@"symbol"];
        self.price = [[dict valueForKey:@"ask"] isKindOfClass:[NSNull class]] ? @"0" : [dict valueForKey:@"ask"];
        self.volumeQuote = [dict valueForKey:@"volumeQuote"];
        
        float openValue = [[dict valueForKey:@"open"] isKindOfClass:[NSNull class]] ? 0 : [[dict valueForKey:@"open"] floatValue];
        self.change = ([price floatValue] * 100 / openValue) - 100;
        
    }
    
    return self;
}

@end

