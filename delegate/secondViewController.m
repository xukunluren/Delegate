//
//  secondViewController.m
//  delegate
//
//  Created by admin on 15/6/16.
//  Copyright (c) 2015年 xukun. All rights reserved.
//

#import "secondViewController.h"
#import "ViewController.h"

@interface secondViewController () <valuedelegate>

@end

@implementation secondViewController
{
    NSString *sting;
    UILabel *label1;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"第二页";
    // Do any additional setup after loading the view.
    [self.view setBackgroundColor:[UIColor grayColor]];
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(100, 100,100, 100)];
    [label setBackgroundColor:[UIColor grayColor]];
    label1 = label;
    [self.view addSubview:label1];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)passTrendValues:(NSString *)values
{
    
    sting = values;
    label1.text = values;
    
    NSLog(@"%@",sting);
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
