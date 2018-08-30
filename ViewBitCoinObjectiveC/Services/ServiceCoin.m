//
//  ServiceCoin.m
//  ViewBitCoinObjectiveC
//
//  Created by Bruno Ferreira De Oliveira on 14/8/18.
//  Copyright © 2018 Bruno Ferreira De Oliveira. All rights reserved.
//

#import "ServiceCoin.h"

@implementation ServiceCoin

-(void)ServiceDataCoin:(HandlerResult) hResult
{

    [self execute:@"https://api.hitbtc.com/api/2/public/ticker" parameters:nil result:^(BOOL success, id result){
        if (success) {
            hResult(YES, result);
        }else {
            hResult(NO, result);
        }
     }];
    
}

@end
