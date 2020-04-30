# MTKJsonModel介绍
MTKJsonModel项目是基于Objective-C编写，用于JSON与模型转化，以及模型的数据库存储。
# 基本原理
项目主要基于Objective-C的动态特性，读取对象的属性列表，并与JSON字符串的键对应进行赋值。
数据库基于对象的属性列表与表的对应，进行对象的属性赋值，表的结构的生成更新，数据内容的增删改查等内容。
# Example
demo演示了MTKJsonModel子类创建，model的使用，数据库的存储。

# Installation
MTKJsonModel is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'MTKJsonModel'
```

