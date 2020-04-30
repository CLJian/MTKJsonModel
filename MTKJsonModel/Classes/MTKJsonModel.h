//
//  MTKJsonModel.h
//  MTKJsonModel
//
//  Created by CLJian on 04/30/2020.
//  Copyright (c) 2020 CLJian. All rights reserved.
//


#import <Foundation/Foundation.h>

/*
所有属性大小写不敏感
*/

@interface MTKJsonModel : NSObject<NSCoding,NSCopying>

- (instancetype)initWithJSONDict:(NSDictionary *)dict;
//插入json字符串
- (void)injectWithJsonString:(NSString*)jsonString;
//替换模型数据 只能处理字典
- (void)injectJSONData:(NSDictionary*)jsonData;
//替换模型数据
- (void)injectDataWithModel:(MTKJsonModel*)model;

- (NSDictionary *)jsonDict;

- (NSString *)jsonString;

//键的map @{Json字段名称:属性名称} 都使用小写
+ (NSDictionary *)mtkJsonModelKeyMapper;

@end
