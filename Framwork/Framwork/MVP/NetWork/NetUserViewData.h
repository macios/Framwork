//
//  NetUserViewData.h
//  Framwork
//
//  Created by ac hu on 2018/6/25.
//  Copyright © 2018年 ac hu. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^SuccessHandler)(id response);
typedef void(^FailHandler)(NSString *errorStr);
/**
 *  Service 用来做数据获取工作等，发起网络请求，并且返回数据给Presenter，这个算是Model，但我准备用字典做业务交付
 */
@interface NetUserViewData : NSObject

-(void)getUserInfosSuccess:(SuccessHandler )success andFail:(FailHandler) fail;
@end
