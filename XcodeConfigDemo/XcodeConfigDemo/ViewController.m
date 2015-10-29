//
//  ViewController.m
//  XcodeConfigDemo
//
//  Created by wangyuehong on 15/10/27.
//  Copyright © 2015年 Oradt. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *serverUrl;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"Settings" ofType:@"plist"];
    NSDictionary *settingsDictionary = [NSDictionary dictionaryWithContentsOfFile:filePath];
    self.serverUrl.text = settingsDictionary[@"ServerUrl"];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
