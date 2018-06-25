//
//  PerSonVM.h
//  Framwork
//
//  Created by ac hu on 2018/6/25.
//  Copyright © 2018年 ac hu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PersonModel.h"
#import "PersonLabel.h"
#import <ReactiveObjC/ReactiveObjC.h>

//定义返回请求数据的block类型
typedef void (^ReturnValueBlock) (id returnValue);
typedef void (^ErrorCodeBlock) (id errorCode);

@interface PerSonVM : NSObject
@property (strong, nonatomic) ReturnValueBlock returnBlock;
@property (strong, nonatomic) ErrorCodeBlock errorBlock;

//rac
@property (nonatomic,strong)RACCommand *command;

-(instancetype)init;

// 获取商品列表
- (void)getData;
//// 跳转到商品详情页
//- (void)shopListDetailWithVC:(UIViewController *)vc didSelectRowAtDic:(NSDictionary *)dic;
// 传入交互的Block块
-(void) setBlockWithReturnBlock: (ReturnValueBlock) returnBlock
                 WithErrorBlock: (ErrorCodeBlock) errorBlock;

@end
