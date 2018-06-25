//
//  NetUserViewData.m
//  Framwork
//
//  Created by ac hu on 2018/6/25.
//  Copyright © 2018年 ac hu. All rights reserved.
//

#import "NetUserViewData.h"
#import "UserModel.h"

@implementation NetUserViewData
-(void)getUserInfosSuccess:(SuccessHandler )success andFail:(FailHandler) fail{
    UserModel *model = [UserModel new];
    model.name = @"小红";
    success(model);
}
@end

