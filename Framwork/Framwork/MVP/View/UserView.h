//
//  UserView.h
//  Framwork
//
//  Created by ac hu on 2018/6/25.
//  Copyright © 2018年 ac hu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UserModel.h"

@protocol UserViewDelegate<NSObject>
//获取数据源
-(void)userViewDataDic:(UserModel *)model;
@end
@interface UserView : UILabel
@end
