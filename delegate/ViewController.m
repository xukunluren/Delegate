//
//  ViewController.m
//  delegate
//
//  Created by admin on 15/6/16.
//  Copyright (c) 2015年 xukun. All rights reserved.
//

#import "ViewController.h"
#import "secondViewController.h"

@interface ViewController ()

@end

@implementation ViewController
{
    NSString *_textValue;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"首页";
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)login:(id)sender {
    secondViewController *second = [[secondViewController alloc] init];
    self.valueDelegate = second;
    _textValue = self.textvalue.text;
    UINavigationController *navi = [[UINavigationController alloc] initWithRootViewController:second];
    [self presentViewController:navi animated:YES completion:^{
        [self.valueDelegate passTrendValues:_textValue];
    }];
    
    
    
}
@end
