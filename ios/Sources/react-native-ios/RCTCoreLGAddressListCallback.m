// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from callback.djinni

#import "RCTCoreLGAddressListCallback.h"


@implementation RCTCoreLGAddressListCallback
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
 * @params result optional of type list<T>, non null if main task failed
 * @params error optional of type Error, non null if main task succeeded
 */
- (void)onCallback:(nullable NSArray<LGAddress *> *)result
             error:(nullable LGError *)error {
    if (error)
    {
        self.reject(@"RCTCoreLGAddressListCallback Error", error.message, nil);
        return;
    }

    NSMutableArray *converted_result = [[NSMutableArray alloc] init];
    for (id result_elem in result)
    {
        NSString *uuid = [[NSUUID UUID] UUIDString];
        RCTCoreLGAddress *rctImpl_result_elem = (RCTCoreLGAddress *)[self.bridge moduleForName:@"CoreLGAddress"];
        [rctImpl_result_elem.objcImplementations setObject:result_elem forKey:uuid];
        NSDictionary *converted_result_elem = @{@"type" : @"CoreLGAddress", @"uid" : uuid };
        [converted_result addObject:converted_result_elem];
    }

    self.resolve(converted_result);

}
@end