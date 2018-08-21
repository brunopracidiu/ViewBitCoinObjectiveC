//
//  ViewController.h
//  ViewBitCoinObjectiveC
//
//  Created by Bruno Ferreira De Oliveira on 14/8/18.
//  Copyright © 2018 Bruno Ferreira De Oliveira. All rights reserved.
//

#import "ServiceCoin.h"
#import "Coin.h"
#import "DashboardCoinTableViewCell.h"

@interface ViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableViewCoins;

@end

