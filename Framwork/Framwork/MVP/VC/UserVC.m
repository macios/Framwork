//
//  UserVC.m
//  Framwork
//
//  Created by ac hu on 2018/6/25.
//  Copyright © 2018年 ac hu. All rights reserved.
//

#import "UserVC.h"
#import "Presenter.h"


@interface UserVC ()<UserViewDelegate>
@property(nonatomic,strong)UserView *userView;
@end

@implementation UserVC

- (void)viewDidLoad {
//    MVP面向需求编程，presenter管理者，获取数据命令view做事
    [super viewDidLoad];
    [self creatView];
    [self creatPresenter];
}

//创建view
-(void)creatView{
    self.userView = [[UserView alloc]init];
    self.userView.frame = CGRectMake(20, 100, 100, 30);
    [self.view addSubview:self.userView];
}

//给“管理者”绑定代理
-(void)creatPresenter{
    Presenter *presenter = [Presenter new];
    presenter.userViewDelegate = self;
    //管理者获取数据
    [presenter getUserDatas];
}

-(void)userViewDataDic:(UserModel *)model{
    self.userView.text = model.name;
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
