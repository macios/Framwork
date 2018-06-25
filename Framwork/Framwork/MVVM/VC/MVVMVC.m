//
//  MVVMVC.m
//  Framwork
//
//  Created by ac hu on 2018/6/25.
//  Copyright © 2018年 ac hu. All rights reserved.
//

#import "MVVMVC.h"
#import "PerSonVM.h"
#import <ReactiveObjC/ReactiveObjC.h>

@interface MVVMVC ()

@end

@implementation MVVMVC

- (void)viewDidLoad {
    [super viewDidLoad];
    PersonLabel *label = [PersonLabel new];
    label.frame = CGRectMake(50, 100, 100, 20);
    [self.view addSubview:label];
    
    PerSonVM *viewModel = [PerSonVM new];
    __weak typeof(label) weekLabel = label;
    [viewModel setBlockWithReturnBlock:^(id returnValue) {
        weekLabel.text = ((PersonModel *)returnValue).name;
    } WithErrorBlock:^(id errorCode) {
        
    }];
    [viewModel getData];
    
    //基于rac的viewModel
    PerSonVM *vm = [[PerSonVM alloc]init];
    @weakify(label);
    [vm.command.executionSignals.switchToLatest subscribeNext:^(id  _Nullable x) {
        @strongify(label);
        label.text = ((PersonModel *)x).name;
    }];
    //执行command
    [vm.command execute:nil];
}

@end
