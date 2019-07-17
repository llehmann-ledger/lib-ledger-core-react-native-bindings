// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from tezos_like_wallet.djinni

#import "RCTCoreLGTezosLikeOriginatedAccount.h"


@implementation RCTCoreLGTezosLikeOriginatedAccount
//Export module
RCT_EXPORT_MODULE(RCTCoreLGTezosLikeOriginatedAccount)

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

/** Get address of originated account (prefixed with KT) */
RCT_REMAP_METHOD(getAddress,getAddress:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGTezosLikeOriginatedAccount::getAddress, first argument should be an instance of LGTezosLikeOriginatedAccount", nil);
        return;
    }
    LGTezosLikeOriginatedAccount *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGTezosLikeOriginatedAccount::getAddress, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    NSString * objcResult = [currentInstanceObj getAddress];
    NSDictionary *result = @{@"value" : objcResult};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGTezosLikeOriginatedAccount::getAddress", nil);
        return;
    }

}

/**
 * Get publicKey of originated account
 * Could be empty if not yet revealed
 */
RCT_REMAP_METHOD(getPublicKey,getPublicKey:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGTezosLikeOriginatedAccount::getPublicKey, first argument should be an instance of LGTezosLikeOriginatedAccount", nil);
        return;
    }
    LGTezosLikeOriginatedAccount *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGTezosLikeOriginatedAccount::getPublicKey, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    NSString * objcResult = [currentInstanceObj getPublicKey];
    NSDictionary *result = @{@"value" : objcResult};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGTezosLikeOriginatedAccount::getPublicKey", nil);
        return;
    }

}

/** Get balance of originated account */
RCT_REMAP_METHOD(getBalance,getBalance:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGTezosLikeOriginatedAccount::getBalance, first argument should be an instance of LGTezosLikeOriginatedAccount", nil);
        return;
    }
    LGTezosLikeOriginatedAccount *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGTezosLikeOriginatedAccount::getBalance, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    RCTCoreLGAmountCallback *objcParam_0 = [[RCTCoreLGAmountCallback alloc] initWithResolver:resolve rejecter:reject andBridge:self.bridge];
    [currentInstanceObj getBalance:objcParam_0];

}

/** Get balance history of originated account */
RCT_REMAP_METHOD(getBalanceHistory,getBalanceHistory:(NSDictionary *)currentInstance withParams:(nonnull NSDate *)start
                                                                                            end:(nonnull NSDate *)end
                                                                                         period:(int)period withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGTezosLikeOriginatedAccount::getBalanceHistory, first argument should be an instance of LGTezosLikeOriginatedAccount", nil);
        return;
    }
    LGTezosLikeOriginatedAccount *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGTezosLikeOriginatedAccount::getBalanceHistory, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    RCTCoreLGAmountListCallback *objcParam_3 = [[RCTCoreLGAmountListCallback alloc] initWithResolver:resolve rejecter:reject andBridge:self.bridge];
    [currentInstanceObj getBalanceHistory:start end:end period:(LGTimePeriod)period callback:objcParam_3];

}

/**
 * Know if possible to spend from this account
 * By default originations from libcore set it to true
 */
RCT_REMAP_METHOD(isSpendable,isSpendable:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGTezosLikeOriginatedAccount::isSpendable, first argument should be an instance of LGTezosLikeOriginatedAccount", nil);
        return;
    }
    LGTezosLikeOriginatedAccount *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGTezosLikeOriginatedAccount::isSpendable, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    BOOL objcResult = [currentInstanceObj isSpendable];
    NSDictionary *result = @{@"value" : @(objcResult)};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGTezosLikeOriginatedAccount::isSpendable", nil);
        return;
    }

}

/**
 * Know if possible to delegate from this account
 * By default originations from libcore set it to true
 */
RCT_REMAP_METHOD(isDelegatable,isDelegatable:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGTezosLikeOriginatedAccount::isDelegatable, first argument should be an instance of LGTezosLikeOriginatedAccount", nil);
        return;
    }
    LGTezosLikeOriginatedAccount *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGTezosLikeOriginatedAccount::isDelegatable, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    BOOL objcResult = [currentInstanceObj isDelegatable];
    NSDictionary *result = @{@"value" : @(objcResult)};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGTezosLikeOriginatedAccount::isDelegatable", nil);
        return;
    }

}

/** Get related operations to account */
RCT_REMAP_METHOD(queryOperations,queryOperations:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGTezosLikeOriginatedAccount::queryOperations, first argument should be an instance of LGTezosLikeOriginatedAccount", nil);
        return;
    }
    LGTezosLikeOriginatedAccount *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGTezosLikeOriginatedAccount::queryOperations, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    LGOperationQuery * objcResult = [currentInstanceObj queryOperations];

    NSString *objcResult_uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGOperationQuery *rctImpl_objcResult = (RCTCoreLGOperationQuery *)[self.bridge moduleForName:@"CoreLGOperationQuery"];
    NSArray *objcResult_array = [[NSArray alloc] initWithObjects:objcResult, objcResult_uuid, nil];
    [rctImpl_objcResult baseSetObject:objcResult_array];
    NSDictionary *result = @{@"type" : @"CoreLGOperationQuery", @"uid" : objcResult_uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGTezosLikeOriginatedAccount::queryOperations", nil);
        return;
    }

}

/** Get builder to construct transaction on originated account */
RCT_REMAP_METHOD(buildTransaction,buildTransaction:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGTezosLikeOriginatedAccount::buildTransaction, first argument should be an instance of LGTezosLikeOriginatedAccount", nil);
        return;
    }
    LGTezosLikeOriginatedAccount *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGTezosLikeOriginatedAccount::buildTransaction, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    LGTezosLikeTransactionBuilder * objcResult = [currentInstanceObj buildTransaction];

    NSString *objcResult_uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGTezosLikeTransactionBuilder *rctImpl_objcResult = (RCTCoreLGTezosLikeTransactionBuilder *)[self.bridge moduleForName:@"CoreLGTezosLikeTransactionBuilder"];
    NSArray *objcResult_array = [[NSArray alloc] initWithObjects:objcResult, objcResult_uuid, nil];
    [rctImpl_objcResult baseSetObject:objcResult_array];
    NSDictionary *result = @{@"type" : @"CoreLGTezosLikeTransactionBuilder", @"uid" : objcResult_uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGTezosLikeOriginatedAccount::buildTransaction", nil);
        return;
    }

}
@end