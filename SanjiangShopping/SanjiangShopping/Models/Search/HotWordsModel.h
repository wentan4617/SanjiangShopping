//
//  HotWordsModel.h
//  SanjiangShop
//
//  Created by 薛纪杰 on 15/8/31.
//  Copyright (c) 2015年 薛纪杰. All rights reserved.
//

#import "BaseModel.h"

typedef void (^SuccessHotWordsBlock)();
typedef void (^FailureHotWordsBlock)(NSError *error);

@interface HotWordsDataModel : NSObject
@property (copy, nonatomic) NSArray *list;
@end

@interface HotWordsModel : BaseModel
@property (strong, nonatomic) HotWordsDataModel *data;

- (void)loadHotWordsSuccess:(SuccessHotWordsBlock)success Failure:(FailureHotWordsBlock)failure;
@end
