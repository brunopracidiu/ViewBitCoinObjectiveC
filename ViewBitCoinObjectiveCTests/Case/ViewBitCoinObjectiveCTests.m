//
//  ViewBitCoinObjectiveCTests.m
//  ViewBitCoinObjectiveCTests
//
//  Created by Bruno Ferreira De Oliveira on 25/8/18.
//  Copyright © 2018 Bruno Ferreira De Oliveira. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Coin.h"
#import "CoinMock.h"
#import "ServiceCoin.h"

@interface ViewBitCoinObjectiveCTests : XCTestCase
{
    NSArray* CollectionCoins;
}

@end

@implementation ViewBitCoinObjectiveCTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testConversionJsonFistObject {
    CollectionCoins = [CoinMock GetCollectionCoins];
    [self CallTestsConversionProperties:0];
}

- (void)CallTestsConversionProperties:(NSInteger) index {
    
    NSDictionary* dictCoin = [CollectionCoins objectAtIndex:index];
    Coin *objCoin = [[Coin alloc] initWithDictionary:dictCoin];
    [self TestConversionID:objCoin index:index];
    [self TestConversionPrice:objCoin index:index];
    [self TestConversionVolumeQuote:objCoin index:index];
   
}

- (void)TestConversionID:(Coin*) objCoin index:(NSInteger)index {
    XCTAssert([objCoin.id isEqualToString:@"BCNBTC"], @"Problem with conversion dictionary in object Coin.id of item ");
}

- (void)TestConversionPrice:(Coin*) objCoin index:(NSInteger)index {
    XCTAssert([objCoin.price isEqualToString:@"0.0000002597"], @"Problem with conversion dictionary in object Coin.id of item ");
}

- (void)TestConversionVolumeQuote:(Coin*) objCoin index:(NSInteger)index {
    XCTAssert([objCoin.volumeQuote isEqualToString:@"369.98760437"], @"Problem with conversion dictionary in object Coin.volumeQuote of item ");
}

- (void)testWebService{
    
    [[[ServiceCoin alloc] init] ServiceDataCoin:^(BOOL sucess, id result) {
        XCTAssert(sucess == false, @"");
        XCTAssert(((NSDictionary*)result).count <=0, @"Problem with call webservice, Webservice returno empty");
    }];
    
}

@end
