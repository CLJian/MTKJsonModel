//
//  MTKViewController.m
//  MTKJsonModel
//
//  Created by CLJian on 04/30/2020.
//  Copyright (c) 2020 CLJian. All rights reserved.
//

#import "MTKViewController.h"
#import "MTKTestModel.h"
#import "MTKDBHandle.h"



@interface MTKViewController ()

@end

@implementation MTKViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    MTKTestModel *test = [[MTKTestModel alloc]init];
    test.testProp = @"test";
    test.testPrimaryKey = @"1";
    
    NSString *testJson = [test jsonString];
    NSLog(@"str:%@",testJson);
    
    MTKTestModel *model2 = [[MTKTestModel alloc]init];
    [model2 injectWithJsonString:testJson];
    model2.testArr = (NSArray<MTKTestModel> *)@[test];
    NSLog(@"model:%@",model2);
    
    [[MTKDBHandle sharedDBHandle]saveRowWithObject:test withTableKey:@"Test" andCompletion:^(BOOL success) {
        NSLog(@"save1:%d",success);
    }];
    [[MTKDBHandle sharedDBHandle]selectDbObjects:[MTKTestModel class] condition:nil orderby:nil withTableKey:@"Test" andCompletion:^(BOOL success, NSArray *resultArr) {
        NSLog(@"query1:%d:%@",success,resultArr);
    }];
    [[MTKDBHandle sharedDBHandle]saveRowWithObject:model2 withTableKey:@"Test" andCompletion:^(BOOL success) {
        NSLog(@"save2:%d",success);
    }];
    [[MTKDBHandle sharedDBHandle]saveRowWithObject:model2 withTableKey:@"Test" andCompletion:^(BOOL success) {
        NSLog(@"save3:%d",success);
    }];
    [[MTKDBHandle sharedDBHandle]saveRowWithObject:model2 withTableKey:@"Test" andCompletion:^(BOOL success) {
        NSLog(@"save4:%d",success);
    }];
    [[MTKDBHandle sharedDBHandle]selectDbObjects:[MTKTestModel class] condition:nil orderby:nil withTableKey:@"Test" andCompletion:^(BOOL success, NSArray *resultArr) {
        NSLog(@"query2:%d:%@",success,resultArr);
    }];
    [[MTKDBHandle sharedDBHandle]selectDbObjects:[MTKTestModel class] condition:nil orderby:nil withTableKey:@"Test" andCompletion:^(BOOL success, NSArray *resultArr) {
        NSLog(@"query3:%d:%@",success,resultArr);
    }];
    [[MTKDBHandle sharedDBHandle]selectDbObjects:[MTKTestModel class] condition:nil orderby:nil withTableKey:@"Test" andCompletion:^(BOOL success, NSArray *resultArr) {
        NSLog(@"query4:%d:%@",success,resultArr);
    }];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
