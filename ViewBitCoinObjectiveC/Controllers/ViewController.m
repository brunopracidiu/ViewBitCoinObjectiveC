//
//  ViewController.m
//  ViewBitCoinObjectiveC
//
//  Created by Bruno Ferreira De Oliveira on 14/8/18.
//  Copyright © 2018 Bruno Ferreira De Oliveira. All rights reserved.
//

#import "ViewController.h"
#import "LoadingView.h"

@interface ViewController (){
    NSMutableArray *listCoins;
    NSTimer *timerUpdate;
}

@end

@implementation ViewController

@synthesize tableViewCoins;

- (void)viewDidLoad {
    timerUpdate = [NSTimer scheduledTimerWithTimeInterval:15
                                                   target:self
                                                 selector:@selector(GetDataCoin)
                                                 userInfo:nil
                                                  repeats:YES];
    
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void) viewDidAppear:(BOOL)animated
{
    [LoadingView Show];
    [self GetDataCoin];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) GetDataCoin{
    listCoins = [NSMutableArray new];
    [[[ServiceCoin alloc] init] ServiceDataCoin:^(BOOL sucess, id result) {
        if (sucess) {
            [LoadingView Hide];
            [self ConvertToObjectCoin:result];
            [self EffectUpdateTable];
            [self.tableViewCoins reloadData];
        }else{
            
        }
    }];
    
}

-(void) EffectUpdateTable{
    
    [UIView animateWithDuration:0.2
                     animations:^{
                         self.tableViewCoins.alpha = 0.1;
                     }
                     completion:^(BOOL complete){
                         [UIView animateWithDuration:0.2
                                          animations:^{
                                              self.tableViewCoins.alpha = 1;
                                          }];
                     }];
}

-(void) ConvertToObjectCoin:(NSArray*) result {
    for (NSDictionary* dict in result) {
        [listCoins addObject:[[Coin alloc] initWithDictionary:dict]];
    }
}

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    
    Coin *objCoin = [listCoins objectAtIndex:indexPath.row];
    DashboardCoinTableViewCell *cell = [tableViewCoins dequeueReusableCellWithIdentifier:@"DashboardCoinCell"];
    cell.lblName.text = objCoin.id;
    cell.lblPrice.text = objCoin.price;
    cell.lblVolumeQuote.text = [@"Vol. " stringByAppendingString:[NSString stringWithFormat:@"%.2f", [objCoin.volumeQuote floatValue]]];
    
    if (objCoin.change < 0) {
        cell.lblChange.textColor = UIColor.redColor;
        cell.lblChange.text = [[NSString stringWithFormat:@"%.2f", objCoin.change] stringByAppendingString:@"%"];
    }else{
        cell.lblChange.textColor = UIColor.greenColor;
        cell.lblChange.text = [[@"+" stringByAppendingString:[NSString stringWithFormat:@"%.2f", objCoin.change]] stringByAppendingString:@"%"];
    }
    
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [listCoins count];
}



@end
