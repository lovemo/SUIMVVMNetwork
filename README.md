# SUIMVVMNetwork
SUIMVVMKit -- SUIMVVMNetwork

---
## usage
```
pod 'SUIMVVMNetwork'
```
---

## introduction

```objc

@interface SMKHttp : NSObject

/**
 *  请求超时时间
 */
@property (nonatomic, assign) NSTimeInterval timeoutInterval;

/**
 *  创建单例对象
 */
+ (instancetype)defaultHttp;

/**
 *  移除所有缓存
 */
+ (void)removeAllCaches;

/**
 *  取消所有网络请求
 */
+ (void)cancelAllOperations;

/**
 *  GET请求 - 默认 MVVMHttpReloadIgnoringLocalCacheData 的缓存方式
 */
+ (void)get:(NSString *)url
     params:(NSDictionary *)params
    success:(requestSuccessBlock)successHandler
    failure:(requestFailureBlock)failureHandler;

/**
 *  POST请求 - 默认 MVVMHttpReloadIgnoringLocalCacheData 的缓存方式
 */
+ (void)post:(NSString *)url
      params:(NSDictionary *)params
     success:(requestSuccessBlock)successHandler
     failure:(requestFailureBlock)failureHandler;

/**
 *  GET请求
 */
+ (void)get:(NSString *)url
     params:(NSDictionary *)params
cachePolicy:(SMKHttpRequestCachePolicy)cachePolicy
    success:(requestSuccessBlock)successHandler
    failure:(requestFailureBlock)failureHandler;

/**
 *  POST请求
 */
+ (void)post:(NSString *)url
      params:(NSDictionary *)params
 cachePolicy:(SMKHttpRequestCachePolicy)cachePolicy
     success:(requestSuccessBlock)successHandler
     failure:(requestFailureBlock)failureHandler;

/**
 *  PUT请求
 */
+ (void)put:(NSString *)url
     params:(NSDictionary *)params
    success:(requestSuccessBlock)successHandler
    failure:(requestFailureBlock)failureHandler;

/**
 *  DELETE请求
 */
+ (void)deleteWithUrl:(NSString *)url
    params:(NSDictionary *)params
    success:(requestSuccessBlock)successHandler
    failure:(requestFailureBlock)failureHandler;

/**
 *  下载文件，监听下载进度
 */
+ (void)download:(NSString *)url
successAndProgress:(progressBlock)progressHandler
        complete:(responseBlock)completionHandler;

/**
 *  文件上传
 */
+ (void)upload:(NSString *)url
        params:(NSDictionary *)params fileConfig:(SMKHttpFileConfig *)fileConfig
       success:(requestSuccessBlock)successHandler
       failure:(requestFailureBlock)failureHandler;

/**
 *   文件上传，监听上传进度
 */
+ (void)upload:(NSString *)url
        params:(NSDictionary *)params
    fileConfig:(SMKHttpFileConfig *)fileConfig
successAndProgress:(progressBlock)progressHandler
      complete:(responseBlock)completionHandler;

@end

```
