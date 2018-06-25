//
//  Presenter.h
//  Framwork
//
//  Created by ac hu on 2018/6/25.
//  Copyright © 2018年 ac hu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UserView.h"

@interface Presenter : NSObject
@property(nonatomic,copy)id <UserViewDelegate>userViewDelegate;
/**
 *  将一个实现了 UserViewProtocol 协议的对象绑定到 presenter上来
 *
 *  @param view 实现了UserViewProtocol的对象，一般来说，应该就是控制器，在MVP中，V 和 VC 共同组成UI 层。
 */

-(void)getUserDatas;

@end
