//
//  Presenter.m
//  Framwork
//
//  Created by ac hu on 2018/6/25.
//  Copyright © 2018年 ac hu. All rights reserved.
//

#import "Presenter.h"
#import "NetUserViewData.h"

@interface Presenter()


@property (nonatomic,strong) NetUserViewData *netUserData;

@end

@implementation Presenter

-(void)setUserViewDelegate:(id<UserViewDelegate>)userViewDelegate{
    _userViewDelegate = userViewDelegate;
    self.netUserData = [NetUserViewData new];
}

// 这个是对外的入口，通过这个入口，实现多个对内部的操作，外部只要调用这个接口就可以了
-(void)getUserDatas{
    __weak typeof (self)weekSelf = self;
    [_netUserData getUserInfosSuccess:^(id response) {
        if ([weekSelf.userViewDelegate respondsToSelector:@selector(userViewDataDic:)]) {
            [weekSelf.userViewDelegate userViewDataDic:response];
        }
    } andFail:^(NSString *errorStr) {
        
    }];
}
@end
