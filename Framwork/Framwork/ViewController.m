//
//  ViewController.m
//  Framwork
//
//  Created by ac hu on 2018/6/25.
//  Copyright © 2018年 ac hu. All rights reserved.
//

#import "ViewController.h"
#import "UserVC.h"
#import "MVVMVC.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}
- (IBAction)MVPClick:(id)sender {
    [self.navigationController pushViewController:[UserVC new] animated:YES];
}
- (IBAction)MVCClick:(id)sender {
}
- (IBAction)MVVMClick:(id)sender {
    [self.navigationController pushViewController:[MVVMVC new] animated:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
