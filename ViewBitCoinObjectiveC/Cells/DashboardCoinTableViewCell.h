//
//  DashboardCoinTableViewCell.h
//  ViewBitCoinObjectiveC
//
//  Created by Bruno Ferreira De Oliveira on 14/8/18.
//  Copyright © 2018 Bruno Ferreira De Oliveira. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DashboardCoinTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *lblName;
@property (weak, nonatomic) IBOutlet UILabel *lblPrice;
@property (weak, nonatomic) IBOutlet UILabel *lblVolumeQuote;
@property (weak, nonatomic) IBOutlet UILabel *lblChange;

@end
