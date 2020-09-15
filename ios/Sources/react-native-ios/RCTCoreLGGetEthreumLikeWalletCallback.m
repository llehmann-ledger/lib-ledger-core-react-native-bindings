// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from ethereum_like_wallet.djinni

#import "RCTCoreLGGetEthreumLikeWalletCallback.h"


@implementation RCTCoreLGGetEthreumLikeWalletCallback
//Export module
RCT_EXPORT_MODULE(RCTCoreLGGetEthreumLikeWalletCallback)

@synthesize bridge = _bridge;


+ (BOOL)requiresMainQueueSetup
{
    return NO;
}
RCT_REMAP_METHOD(release, release:(NSDictionary *)currentInstance withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject)
{
    [self baseRelease:currentInstance withResolver: resolve rejecter:reject];
}
RCT_REMAP_METHOD(log, logWithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject)
{
    [self baseLogWithResolver:resolve rejecter:reject];
}
RCT_REMAP_METHOD(flush, flushWithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject)
{
    [self baseFlushWithResolver:resolve rejecter:reject];
}
RCT_REMAP_METHOD(isNull, isNull:(NSDictionary *)currentInstance withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject)
{
    [self baseIsNull:currentInstance withResolver:resolve rejecter:reject];
}

RCT_REMAP_METHOD(onSuccess,onSuccess:(NSDictionary *)currentInstance withParams:(NSDictionary *)wallet
                                                                      isCreated:(BOOL)isCreated withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGGetEthreumLikeWalletCallback::onSuccess, first argument should be an instance of LGGetEthreumLikeWalletCallbackImpl", nil);
        return;
    }
    LGGetEthreumLikeWalletCallbackImpl *currentInstanceObj = nil;
    @synchronized(self)
    {
        currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    }
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGGetEthreumLikeWalletCallbackImpl::onSuccess, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    RCTCoreLGEthereumLikeWallet *rctParam_wallet = (RCTCoreLGEthereumLikeWallet *)[self.bridge moduleForName:@"CoreLGEthereumLikeWallet"];
    LGEthereumLikeWallet *objcParam_0 = (LGEthereumLikeWallet *)[rctParam_wallet.objcImplementations objectForKey:wallet[@"uid"]];
    [currentInstanceObj onSuccess:objcParam_0 isCreated:isCreated];
    resolve(@(YES));

}

RCT_REMAP_METHOD(onError,onError:(NSDictionary *)currentInstance withParams:(NSDictionary *)error withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGGetEthreumLikeWalletCallback::onError, first argument should be an instance of LGGetEthreumLikeWalletCallbackImpl", nil);
        return;
    }
    LGGetEthreumLikeWalletCallbackImpl *currentInstanceObj = nil;
    @synchronized(self)
    {
        currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    }
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGGetEthreumLikeWalletCallbackImpl::onError, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    RCTCoreLGError *rctParam_error = (RCTCoreLGError *)[self.bridge moduleForName:@"CoreLGError"];
    LGError *objcParam_0 = (LGError *)[rctParam_error.objcImplementations objectForKey:error[@"uid"]];
    [currentInstanceObj onError:objcParam_0];
    resolve(@(YES));

}
RCT_REMAP_METHOD(newInstance, newInstanceWithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    LGGetEthreumLikeWalletCallbackImpl *objcResult = [[LGGetEthreumLikeWalletCallbackImpl alloc] init];
    NSString *uuid = [[NSUUID UUID] UUIDString];
    NSArray *resultArray = [[NSArray alloc] initWithObjects:objcResult, uuid, nil];
    [self baseSetObject:resultArray];
    NSDictionary *result = @{@"type" : @"CoreLGGetEthreumLikeWalletCallbackImpl", @"uid" : uuid };
    if (!objcResult || !result)
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGGetEthreumLikeWalletCallbackImpl::init", nil);
        return;
    }
    resolve(result);
}
@end
