//
//  ViewController.m
//  Framwork
//
//  Created by ac hu on 2018/6/25.
//  Copyright © 2018年 ac hu. All rights reserved.
//

#import "ViewController.h"
#import "UserVC.h"
//#import "<#header#>"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)MVPClick:(id)sender {
    [self.navigationController pushViewController:[UserVC new] animated:YES];
}
- (IBAction)MVCClick:(id)sender {
}
- (IBAction)MVVMClick:(id)sender {
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
