// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from wallet.djinni

#import "RCTCoreLGCosmosLikeReward.h"


@implementation RCTCoreLGCosmosLikeReward
//Export module
RCT_EXPORT_MODULE(RCTCoreLGCosmosLikeReward)

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

RCT_REMAP_METHOD(getDelegatorAddress,getDelegatorAddress:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGCosmosLikeReward::getDelegatorAddress, first argument should be an instance of LGCosmosLikeReward", nil);
        return;
    }
    LGCosmosLikeReward *currentInstanceObj = nil;
    @synchronized(self)
    {
        currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    }
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGCosmosLikeReward::getDelegatorAddress, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    NSString * objcResult = [currentInstanceObj getDelegatorAddress];
    NSDictionary *result = @{@"value" : objcResult};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGCosmosLikeReward::getDelegatorAddress", nil);
        return;
    }

}

RCT_REMAP_METHOD(getValidatorAddress,getValidatorAddress:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGCosmosLikeReward::getValidatorAddress, first argument should be an instance of LGCosmosLikeReward", nil);
        return;
    }
    LGCosmosLikeReward *currentInstanceObj = nil;
    @synchronized(self)
    {
        currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    }
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGCosmosLikeReward::getValidatorAddress, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    NSString * objcResult = [currentInstanceObj getValidatorAddress];
    NSDictionary *result = @{@"value" : objcResult};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGCosmosLikeReward::getValidatorAddress", nil);
        return;
    }

}

RCT_REMAP_METHOD(getRewardAmount,getRewardAmount:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGCosmosLikeReward::getRewardAmount, first argument should be an instance of LGCosmosLikeReward", nil);
        return;
    }
    LGCosmosLikeReward *currentInstanceObj = nil;
    @synchronized(self)
    {
        currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    }
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGCosmosLikeReward::getRewardAmount, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    LGAmount * objcResult = [currentInstanceObj getRewardAmount];

    NSString *objcResult_uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGAmount *rctImpl_objcResult = (RCTCoreLGAmount *)[self.bridge moduleForName:@"CoreLGAmount"];
    NSArray *objcResult_array = [[NSArray alloc] initWithObjects:objcResult, objcResult_uuid, nil];
    [rctImpl_objcResult baseSetObject:objcResult_array];
    NSDictionary *result = @{@"type" : @"CoreLGAmount", @"uid" : objcResult_uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGCosmosLikeReward::getRewardAmount", nil);
        return;
    }

}
@end
