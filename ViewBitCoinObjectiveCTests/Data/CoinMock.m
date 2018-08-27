//
//  CoinMock.m
//  ViewBitCoinObjectiveCTests
//
//  Created by Bruno Ferreira De Oliveira on 25/8/18.
//  Copyright © 2018 Bruno Ferreira De Oliveira. All rights reserved.
//

#import "CoinMock.h"

@implementation CoinMock

+(NSArray*) GetCollectionCoins
{
    return [NSArray arrayWithObjects: @{@"volume" : @"1385697900",
                                        @"symbol": @"BCNBTC",
                                        @"open" : @"0.0000002721",
                                        @"high" : @"0.0000002727",
                                        @"ask" : @"0.0000002597",
                                        @"last" : @"0.0000002596",
                                        @"bid" : @"0.0000002582",
                                        @"low" : @"0.0000002534",
                                        @"volumeQuote" : @"369.98760437",
                                        @"timestamp" : @"2018-08-21T07:20:00.004Z"},
                                      @{@"volume" : @"1385697900",
                                        @"symbol": @"BCNBTC",
                                        @"open" : @"0.0000002721",
                                        @"high" : @"0.0000002727",
                                        @"ask" : @"0.0000002597",
                                        @"last" : @"0.0000002596",
                                        @"bid" : @"0.0000002582",
                                        @"low" : @"0.0000002534",
                                        @"volumeQuote" : @"369.98760437",
                                        @"timestamp" : @"2018-08-21T07:20:00.004Z"},
                                      @{@"volume" : @"1385697900",
                                        @"symbol": @"BCNBTC",
                                        @"open" : @"0.0000002721",
                                        @"high" : @"0.0000002727",
                                        @"ask" : @"0.0000002597",
                                        @"last" : @"0.0000002596",
                                        @"bid" : @"0.0000002582",
                                        @"low" : @"0.0000002534",
                                        @"volumeQuote" : @"369.98760437",
                                        @"timestamp" : @"2018-08-21T07:20:00.004Z"}, nil];
    
}

+(NSArray*) GetCollectionDictionaryEmpty
{
    return [NSArray arrayWithObjects: @{@"volume" : @"",
                                        @"symbol": @"",
                                        @"open" : @"",
                                        @"high" : @"",
                                        @"ask" : @"",
                                        @"last" : @"",
                                        @"bid" : @"",
                                        @"low" : @"",
                                        @"volumeQuote" : @"",
                                        @"timestamp" : @""}, nil];
}

@end
