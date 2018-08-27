//
//  ViewBitCoinObjectiveCUITests.m
//  ViewBitCoinObjectiveCUITests
//
//  Created by Bruno Ferreira De Oliveira on 14/8/18.
//  Copyright © 2018 Bruno Ferreira De Oliveira. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface ViewBitCoinObjectiveCUITests : XCTestCase
{
    NSArray *CollectionCoins;
}

@end

@implementation ViewBitCoinObjectiveCUITests

- (void)setUp {
    [super setUp];
    
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    // In UI tests it is usually best to stop immediately when a failure occurs.
    self.continueAfterFailure = NO;
    // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
    [[[XCUIApplication alloc] init] launch];
    
    // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testConversionJsonFistObject {
    //    CollectionCoins = CoinsMock().GetCollectionCoins()
    //    CallTestsConversionProperties(index: 0)
}

- (void)testConversionJsonDictionaryEmptyObject {
    //    CollectionCoins = CoinsMock().GetCollectionDictionaryEmpty()
    //    CallTestsConversionProperties(index: 0)

}

- (void)CallTestsConversionProperties:(NSInteger) index {
    //    let dictCoin = CollectionCoins.object(at: index) as! NSDictionary
    //    let objCoin = Coin.init(dict: dictCoin)
    //
    //    TestConversionID(objCoin: objCoin, index: index)
    //    TestConversionPrice(objCoin: objCoin, index: index)
    //    TestConversionVolumeQuote(objCoin: objCoin, index: index)

}

- (void)TestConversionID:(Coin*) objCoin index:(NSInteger)index {
    //    XCTAssert(Int(objCoin.id) == nil, "Problem with conversion dictionary in object Coin.id of item " + String(format: "%.i", index))
    //}
    //
    //func TestConversionPrice(objCoin: Coin, index: Int){
    //    XCTAssert(Int(objCoin.price) == nil, "Problem with conversion dictionary in object Coin.price of item " + String(format: "%.i", index))
}

- (void)TestConversionVolumeQuote {
    //    XCTAssert(Int(objCoin.volumeQuote) == nil, "Problem with conversion dictionary in object Coin.volumeQuote of item " + String(format: "%.i", index))
}

- (void)testWebService {
    //    ServiceCoins().ServiceDataCoin(hResult:{(_ sucesso: Bool, _ result: Any) -> Void in
    //        XCTAssert(sucesso == false, "Problem with call webservice")
    //        XCTAssert((result as! NSDictionary).count <= 0, "Problem with call webservice, Webservice returno empty")
    //    })
}


//func CallTestsConversionProperties(index: Int) {
//func TestConversionID(objCoin: Coin, index: Int){
//func TestConversionPrice(objCoin: Coin, index: Int)
//func TestConversionVolumeQuote(objCoin: Coin, index: Int)

@end
