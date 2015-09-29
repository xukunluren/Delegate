//
//  ViewController.h
//  delegate
//
//  Created by admin on 15/6/16.
//  Copyright (c) 2015年 xukun. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol valuedelegate <NSObject>

-(void)passTrendValues:(NSString *)values;//1.1定义协议与

@end

@interface ViewController : UIViewController


- (IBAction)login:(id)sender;

@property (weak, nonatomic) IBOutlet UITextField *textvalue;

@property (retain,nonatomic) id <valuedelegate> valueDelegate;
@end

