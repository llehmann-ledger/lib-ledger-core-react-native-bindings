// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from callback.djinni

#import "RCTCoreLGBlockCallback.h"


@implementation RCTCoreLGBlockCallback
-(instancetype)initWithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock) reject andBridge: (RCTBridge *) bridge
{
    self = [super init];
    if(self)
    {
        self.resolve = resolve;
        self.reject = reject;
        self.bridge = bridge;
    }
    return self;
}

/**
 * Method triggered when main task complete
 * @params result optional of type T, non null if main task failed
 * @params error optional of type Error, non null if main task succeeded
 */
- (void)onCallback:(nullable LGBlock *)result
             error:(nullable LGError *)error {
    if (error)
    {
        self.reject(@"RCTCoreLGBlockCallback Error", error.message, nil);
        return;
    }

    NSString *uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGBlock *rctImpl_result = (RCTCoreLGBlock *)[self.bridge moduleForName:@"CoreLGBlock"];
    [rctImpl_result.objcImplementations setObject:result forKey:uuid];
    NSDictionary *converted_result = @{@"type" : @"CoreLGBlock", @"uid" : uuid };

    self.resolve(converted_result);

}
@end