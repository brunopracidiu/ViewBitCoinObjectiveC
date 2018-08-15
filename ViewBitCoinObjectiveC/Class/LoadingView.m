//
//  LoadingView.m
//  ViewBitCoinObjectiveC
//
//  Created by Bruno Ferreira De Oliveira on 15/8/18.
//  Copyright © 2018 Bruno Ferreira De Oliveira. All rights reserved.
//

#import "LoadingView.h"
#import <UIKit/UIKit.h>

@interface LoadingView()

@end

static UIView *viewLoading = nil;

@implementation LoadingView

-(void)CreateViewLoading{

    UIWindow *mainWindow = [[UIApplication sharedApplication].delegate window];
    viewLoading = [[UIView alloc] initWithFrame:mainWindow.frame];
    viewLoading.backgroundColor = [UIColor colorWithWhite:0 alpha:0.9];

    UILabel *lblIndicatorProcess = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, viewLoading.frame.size.width, 80)];
    lblIndicatorProcess.textAlignment = NSTextAlignmentCenter;
    lblIndicatorProcess.textColor = UIColor.whiteColor;
    lblIndicatorProcess.text = @"Loading";
    lblIndicatorProcess.center = viewLoading.center;
    lblIndicatorProcess.frame = CGRectMake(lblIndicatorProcess.frame.origin.y + 30,
                                           lblIndicatorProcess.frame.origin.y,
                                           lblIndicatorProcess.frame.size.width,
                                           lblIndicatorProcess.frame.size.height);
    [viewLoading addSubview:lblIndicatorProcess];
  
    
    UIActivityIndicatorView *indicatorProcess = [[UIActivityIndicatorView alloc] init];
    indicatorProcess.center = viewLoading.center;
    [indicatorProcess startAnimating];
    [viewLoading addSubview:indicatorProcess];

    [mainWindow addSubview:viewLoading];
}

-(void) Display{
    [self CreateViewLoading];
    [viewLoading setHidden:false];
}

-(void) Hide{
    [viewLoading setHidden:true];
    [viewLoading removeFromSuperview];
}

@end
