#import <React/RCTBridgeModule.h>

@interface RCT_EXTERN_MODULE(Esewa, NSObject)

RCT_EXTERN_METHOD(multiply:(float)a withB:(float)b
                 withResolver:(RCTPromiseResolveBlock)resolve
                 withRejecter:(RCTPromiseRejectBlock)reject)

@end
