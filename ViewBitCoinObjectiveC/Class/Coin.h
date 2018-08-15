//
//  Coin.h
//  ViewBitCoinObjectiveC
//
//  Created by Bruno Ferreira De Oliveira on 14/8/18.
//  Copyright © 2018 Bruno Ferreira De Oliveira. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Coin : NSObject

@property (nonatomic, retain) NSString *id;
@property (nonatomic, retain) NSString *price;
@property (nonatomic, retain) NSString *volumeQuote;
@property float change;

-(id)initWithDictionary:(NSDictionary*)dict;

@end
