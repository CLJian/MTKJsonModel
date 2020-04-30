//
//  MTKTestModel.h
//  MTKJsonModel_Example
//
//  Created by joy on 2020/4/30.
//  Copyright © 2020 CLJian. All rights reserved.
//

#import <MTKJsonModel/MTKJsonModel.h>
//使用协议名和类名一致 标注数组内对象类型
@protocol MTKTestModel <NSObject>
@end

NS_ASSUME_NONNULL_BEGIN

@interface MTKTestModel : MTKJsonModel

@property (nonatomic,copy) NSString *testProp;

@property (nonatomic,copy) NSString *testPrimaryKey;

@property (nonatomic,strong) NSArray<MTKTestModel> *testArr;

@end

NS_ASSUME_NONNULL_END
