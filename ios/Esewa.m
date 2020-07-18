#import <Foundation/Foundation.h>
#import <React/RCTBridgeModule.h>

@interface RCT_EXTERN_MODULE(Esewa, NSObject)

RCT_EXTERN_METHOD(startSdk:(NSString *)merchantId
                  merchantSecret:(NSString *)merchantSecret
                  productName:(NSString *)productName
                  productAmount:(NSString *)productAmount
                  productId:(NSString *)productId
                  callbackUrl:(NSString *)callbackUrl
                  resolver: (RCTPromiseResolveBlock)resolve
                  rejector: (RCTPromiseRejectBlock)reject)

@end
