//
//  MTKDBHandle.h
//  MTKJsonModel
//
//  Created by CLJian on 04/30/2020.
//  Copyright (c) 2020 CLJian. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^MTKOperationResult) (BOOL success);
typedef void (^MTKOperationCompletion) (BOOL success,NSArray *resultArr);

@interface MTKDBHandle : NSObject
//获取单例
+(instancetype)sharedDBHandle;
@property (nonatomic,copy) NSString *DBPath;

/*
异步方法
*/
//所有的属性的字母小写
//删除类对应的tableKey的表
-(void)removeDbTableWithClassName:(NSString*)className andTableKey:(NSString*)tableKey andCompletion:(MTKOperationResult)completion;
//删除类对应的所有表
-(void)removeAllTableWithClassName:(NSString*)className andCompletion:(MTKOperationResult)completion;
//删除类相关条件的数据 条件为all的时候删除表 为空不处理 condition例 all删除所有 id=930删除id为930的对象
-(void)removeObjectWithClass:(Class)aClass andTableKey:(NSString*)tableKey withCondition:(NSString*)condition andCompletion:(MTKOperationResult)completion;
//存储对象 以类名和tableKey作为表名
-(void)saveRowWithObject:(id)object withTableKey:(NSString*)tableKey andCompletion:(MTKOperationResult)completion;
//现在只支持单类型的存储，以首个对象的类型为准
-(void)saveObjects:(NSArray*)objectsArray withTableKey:(NSString*)tableKey andCompletion:(MTKOperationResult)completion;

/*
时间戳时间strftime('%s','now')
asc 按升序排列
desc 按降序排列
select * from table where strftime('%s','time') > strftime('%s','now') order by year desc limit 10;
conditin: strftime('%s','time') > strftime('%s','now')
orderby: year desc limit 10
*/
-(void)selectDbObjects:(Class)aClass condition:(NSString *)condition orderby:(NSString *)orderby withTableKey:(NSString*)tableKey andCompletion:(MTKOperationCompletion)completion;

@end
