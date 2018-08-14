//
//  ServiceBase.m
//  TestCartonCloud
//
//  Created by Bruno Ferreira De Oliveira on 19/6/18.
//  Copyright © 2018 Bruno Ferreira De Oliveira. All rights reserved.
//

#import "ServiceBase.h"

@interface ServiceBase() {
    
    NSMutableData *DataDownloaded;
    HandlerResult _handlerResult;
    BOOL _success;
    int _codStatus;
    NSString* _service;
}

@end

@implementation ServiceBase

- (void) execute:(NSString *)serviceURL parameters:(NSDictionary *)parameters result:(HandlerResult)result
{
    DataDownloaded = [NSMutableData new];
    _handlerResult = result;
    
    NSURL *url = [NSURL URLWithString:serviceURL];
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] initWithURL:url];
    [request setTimeoutInterval:60];
    
    NSURLConnection *connection = [[NSURLConnection alloc] initWithRequest:request delegate:self startImmediately:YES];
    [connection start];
}

- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response
{
    _success = [(NSHTTPURLResponse*)response statusCode] == 200;
}

-(void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
    [DataDownloaded appendData:data];
}

-(void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error
{
    _codStatus = (int)[error code];
    if ((_codStatus == -1009 || _codStatus == -1001)){
        _handlerResult(NO, @"Plz, Check your internet");
    }else{
        _handlerResult(NO, nil);
    }
}

-(void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    id resultJSON = [NSJSONSerialization JSONObjectWithData:DataDownloaded options:0 error:nil];
    _handlerResult(_success, resultJSON);
}

@end
