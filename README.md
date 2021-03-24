对json_serializable的修改，增加对`int,double,num,bool,String`类型自动转换功能，对比.g.dart文件

原来：
```
Person _$PersonFromJson(Map<String, dynamic> json) {
  return Person(
    firstName: json['firstName'] as String,
    height: json['height'] as double,
    age: json['age'] as int,
  );
}

```

现在：
```
Person _$PersonFromJson(Map<String, dynamic> json) {
  return Person(
    firstName: JsonSerializableSafety.jsonToString(json['firstName']),
    height: JsonSerializableSafety.jsonToDouble(json['height']),
    age: JsonSerializableSafety.jsonToInt(json['age']),
  );
}
```


## 接入

```
dev_dependencies:
# 删除原来的json_serializable，改成它
  json_serializable:
    git:
      url: git@github.com:zhahao/json_serializable.dart.git
      path: json_serializable/
      ref: 'json_serializable-v3.5.1_value_safety'

 ```

 ## 使用
 被解析的JsonBean.dart导入`import 'package:json_serializable_safety/json_serializable_safety.dart';`

