//
//  PerSonVM.m
//  Framwork
//
//  Created by ac hu on 2018/6/25.
//  Copyright © 2018年 ac hu. All rights reserved.
//

#import "PerSonVM.h"

@implementation PerSonVM

-(instancetype)init{
    if(self = [super init]){
        self.command = [[RACCommand alloc] initWithSignalBlock:^RACSignal *(id input) {
            return [RACSignal createSignal:^RACDisposable *(id<RACSubscriber> subscriber) {
                dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                    PersonModel *model = [PersonModel new];
                    model.name = @"小明";
                    dispatch_async(dispatch_get_main_queue(), ^{
                        [subscriber sendNext:model];
                        [subscriber sendCompleted];
                    });
                });
                return nil;
            }];
        }];
    }
    return self;
}

-(void) setBlockWithReturnBlock: (ReturnValueBlock) returnBlock
                 WithErrorBlock: (ErrorCodeBlock) errorBlock{
    _returnBlock = returnBlock;
    _errorBlock = errorBlock;
}
-(void)getData{
    PersonModel *model = [PersonModel new];
    model.name = @"小王";
    self.returnBlock(model);
}
@end
