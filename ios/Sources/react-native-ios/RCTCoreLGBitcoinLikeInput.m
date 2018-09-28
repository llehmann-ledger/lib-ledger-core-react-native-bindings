// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from bitcoin_like_wallet.djinni

#import "RCTCoreLGBitcoinLikeInput.h"


@implementation RCTCoreLGBitcoinLikeInput
//Export module
RCT_EXPORT_MODULE(RCTCoreLGBitcoinLikeInput)

@synthesize bridge = _bridge;

-(instancetype)init
{
    self = [super init];
    //Init Objc implementation
    if(self)
    {
        self.objcImplementations = [[NSMutableDictionary alloc] init];
    }
    return self;
}

+ (BOOL)requiresMainQueueSetup
{
    return NO;
}
RCT_REMAP_METHOD(release, release:(NSDictionary *)currentInstance withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject)
{
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGBitcoinLikeInput::release, first argument should be an instance of LGBitcoinLikeInput", nil);
    }
    [self.objcImplementations removeObjectForKey:currentInstance[@"uid"]];
    resolve(@(YES));
}
RCT_REMAP_METHOD(log, logWithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject)
{
    NSMutableArray *uuids = [[NSMutableArray alloc] init];
    for (id key in self.objcImplementations)
    {
        [uuids addObject:key];
    }
    NSDictionary *result = @{@"value" : uuids};
    resolve(result);
}
RCT_REMAP_METHOD(flush, flushWithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject)
{
    [self.objcImplementations removeAllObjects];
    resolve(@(YES));
}

/** Returns the address of the input (if an address can be computed) */
RCT_REMAP_METHOD(getAddress,getAddress:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGBitcoinLikeInput::getAddress, first argument should be an instance of LGBitcoinLikeInput", nil);
    }
    LGBitcoinLikeInput *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGBitcoinLikeInput::getAddress, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    NSString * objcResult = [currentInstanceObj getAddress];
    NSDictionary *result = @{@"value" : objcResult};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGBitcoinLikeInput::getAddress", nil);
    }

}

/**
 * Returns the public associated with the address. This value can be NULL if you are building a transaction with an
 * address which does not belong to your wallet.
 */
RCT_REMAP_METHOD(getPublicKeys,getPublicKeys:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGBitcoinLikeInput::getPublicKeys, first argument should be an instance of LGBitcoinLikeInput", nil);
    }
    LGBitcoinLikeInput *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGBitcoinLikeInput::getPublicKeys, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    NSArray<NSData *> * objcResult = [currentInstanceObj getPublicKeys];
    NSDictionary *result = @{@"value" : objcResult};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGBitcoinLikeInput::getPublicKeys", nil);
    }

}

/** Returns the derivation path of this input if the address is owned by the wallet */
RCT_REMAP_METHOD(getDerivationPath,getDerivationPath:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGBitcoinLikeInput::getDerivationPath, first argument should be an instance of LGBitcoinLikeInput", nil);
    }
    LGBitcoinLikeInput *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGBitcoinLikeInput::getDerivationPath, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    NSArray<LGDerivationPath *> * objcResult = [currentInstanceObj getDerivationPath];

    NSMutableArray *result = [[NSMutableArray alloc] init];
    for (id objcResult_elem in objcResult)
    {
        NSString *uuid = [[NSUUID UUID] UUIDString];
        RCTCoreLGDerivationPath *rctImpl_objcResult_elem = (RCTCoreLGDerivationPath *)[self.bridge moduleForName:@"CoreLGDerivationPath"];
        [rctImpl_objcResult_elem.objcImplementations setObject:objcResult_elem forKey:uuid];
        NSDictionary *result_elem = @{@"type" : @"CoreLGDerivationPath", @"uid" : uuid };
        [result addObject:result_elem];
    }

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGBitcoinLikeInput::getDerivationPath", nil);
    }

}

/**
 * Returns the value of the amount. Depending on the backend this value may not exist if the input is not owned by
 * the wallet.
 */
RCT_REMAP_METHOD(getValue,getValue:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGBitcoinLikeInput::getValue, first argument should be an instance of LGBitcoinLikeInput", nil);
    }
    LGBitcoinLikeInput *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGBitcoinLikeInput::getValue, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    LGAmount * objcResult = [currentInstanceObj getValue];

    NSString *uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGAmount *rctImpl_objcResult = (RCTCoreLGAmount *)[self.bridge moduleForName:@"CoreLGAmount"];
    [rctImpl_objcResult.objcImplementations setObject:objcResult forKey:uuid];
    NSDictionary *result = @{@"type" : @"CoreLGAmount", @"uid" : uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGBitcoinLikeInput::getValue", nil);
    }

}

/**
 * Get the transaction hash of the output spent by this input. The result can be NULL if the output is not owned by
 * the wallet
 */
RCT_REMAP_METHOD(getPreviousTxHash,getPreviousTxHash:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGBitcoinLikeInput::getPreviousTxHash, first argument should be an instance of LGBitcoinLikeInput", nil);
    }
    LGBitcoinLikeInput *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGBitcoinLikeInput::getPreviousTxHash, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    NSString * objcResult = [currentInstanceObj getPreviousTxHash];
    NSDictionary *result = @{@"value" : objcResult};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGBitcoinLikeInput::getPreviousTxHash", nil);
    }

}

/**
 * Get the index at which the output is located in the transaction output spent by this input. The result can be
 * NULL if the input does not belong to the wallet
 *Check whether input
 *@return Boolean, true if input belongs to coinbase transaction (reward for mining a block)
 */
RCT_REMAP_METHOD(isCoinbase,isCoinbase:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGBitcoinLikeInput::isCoinbase, first argument should be an instance of LGBitcoinLikeInput", nil);
    }
    LGBitcoinLikeInput *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGBitcoinLikeInput::isCoinbase, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    BOOL objcResult = [currentInstanceObj isCoinbase];
    NSDictionary *result = @{@"value" : @(objcResult)};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGBitcoinLikeInput::isCoinbase", nil);
    }

}

/**
 *Stored data cointained in coinbase
 *@return Optional String
 */
RCT_REMAP_METHOD(getCoinbase,getCoinbase:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGBitcoinLikeInput::getCoinbase, first argument should be an instance of LGBitcoinLikeInput", nil);
    }
    LGBitcoinLikeInput *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGBitcoinLikeInput::getCoinbase, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    NSString * objcResult = [currentInstanceObj getCoinbase];
    NSDictionary *result = @{@"value" : objcResult};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGBitcoinLikeInput::getCoinbase", nil);
    }

}

/**
 *Get output index, it identifies which UTXO from tht transaction to spend
 *@return Optional 32 bits integer, index of previous transaction
 */
RCT_REMAP_METHOD(getPreviousOutputIndex,getPreviousOutputIndex:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGBitcoinLikeInput::getPreviousOutputIndex, first argument should be an instance of LGBitcoinLikeInput", nil);
    }
    LGBitcoinLikeInput *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGBitcoinLikeInput::getPreviousOutputIndex, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    NSNumber * objcResult = [currentInstanceObj getPreviousOutputIndex];
    NSDictionary *result = @{@"value" : @([objcResult intValue])};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGBitcoinLikeInput::getPreviousOutputIndex", nil);
    }

}

/**
 * Retrieve the output spent by this input. Depending on the implementation this method may
 * use a lock to fetch data from a database. Therefore it may have poor performance, use with
 * caution.
 * @return The output spent by this input.
 */
RCT_REMAP_METHOD(getPreviousOuput,getPreviousOuput:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGBitcoinLikeInput::getPreviousOuput, first argument should be an instance of LGBitcoinLikeInput", nil);
    }
    LGBitcoinLikeInput *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGBitcoinLikeInput::getPreviousOuput, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    LGBitcoinLikeOutput * objcResult = [currentInstanceObj getPreviousOuput];

    NSString *uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGBitcoinLikeOutput *rctImpl_objcResult = (RCTCoreLGBitcoinLikeOutput *)[self.bridge moduleForName:@"CoreLGBitcoinLikeOutput"];
    [rctImpl_objcResult.objcImplementations setObject:objcResult forKey:uuid];
    NSDictionary *result = @{@"type" : @"CoreLGBitcoinLikeOutput", @"uid" : uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGBitcoinLikeInput::getPreviousOuput", nil);
    }

}

/** Get ScriptSig of this input. The scriptsig is the first half of a script necessary to spend a previous output. */
RCT_REMAP_METHOD(getScriptSig,getScriptSig:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGBitcoinLikeInput::getScriptSig, first argument should be an instance of LGBitcoinLikeInput", nil);
    }
    LGBitcoinLikeInput *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGBitcoinLikeInput::getScriptSig, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    NSData * objcResult = [currentInstanceObj getScriptSig];
    NSDictionary *result = @{@"value" : objcResult.description};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGBitcoinLikeInput::getScriptSig", nil);
    }

}

/** Parse the script sig to a [[BitcoinLikeScript]] */
RCT_REMAP_METHOD(parseScriptSig,parseScriptSig:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGBitcoinLikeInput::parseScriptSig, first argument should be an instance of LGBitcoinLikeInput", nil);
    }
    LGBitcoinLikeInput *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGBitcoinLikeInput::parseScriptSig, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    LGBitcoinLikeScript * objcResult = [currentInstanceObj parseScriptSig];

    NSString *uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGBitcoinLikeScript *rctImpl_objcResult = (RCTCoreLGBitcoinLikeScript *)[self.bridge moduleForName:@"CoreLGBitcoinLikeScript"];
    [rctImpl_objcResult.objcImplementations setObject:objcResult forKey:uuid];
    NSDictionary *result = @{@"type" : @"CoreLGBitcoinLikeScript", @"uid" : uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGBitcoinLikeInput::parseScriptSig", nil);
    }

}

/**
 * Set the ScriptS to the given value
 * @param scriptSig The ScriptSig to use for this input
 */
RCT_REMAP_METHOD(setScriptSig,setScriptSig:(NSDictionary *)currentInstance withParams:(nonnull NSData *)scriptSig withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGBitcoinLikeInput::setScriptSig, first argument should be an instance of LGBitcoinLikeInput", nil);
    }
    LGBitcoinLikeInput *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGBitcoinLikeInput::setScriptSig, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    [currentInstanceObj setScriptSig:scriptSig];

}

/** Push data to the end of the current ScriptSig */
RCT_REMAP_METHOD(pushToScriptSig,pushToScriptSig:(NSDictionary *)currentInstance withParams:(nonnull NSData *)data withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGBitcoinLikeInput::pushToScriptSig, first argument should be an instance of LGBitcoinLikeInput", nil);
    }
    LGBitcoinLikeInput *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGBitcoinLikeInput::pushToScriptSig, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    [currentInstanceObj pushToScriptSig:data];

}

/** Set the sequence number of this input */
RCT_REMAP_METHOD(setSequence,setSequence:(NSDictionary *)currentInstance withParams:(int)sequence withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGBitcoinLikeInput::setSequence, first argument should be an instance of LGBitcoinLikeInput", nil);
    }
    LGBitcoinLikeInput *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGBitcoinLikeInput::setSequence, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    [currentInstanceObj setSequence:sequence];

}

/** Get the sequence number of this input */
RCT_REMAP_METHOD(getSequence,getSequence:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGBitcoinLikeInput::getSequence, first argument should be an instance of LGBitcoinLikeInput", nil);
    }
    LGBitcoinLikeInput *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGBitcoinLikeInput::getSequence, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    int64_t objcResult = [currentInstanceObj getSequence];
    NSDictionary *result = @{@"value" : @(objcResult)};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGBitcoinLikeInput::getSequence", nil);
    }

}

RCT_REMAP_METHOD(getPreviousTransaction,getPreviousTransaction:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGBitcoinLikeInput::getPreviousTransaction, first argument should be an instance of LGBitcoinLikeInput", nil);
    }
    LGBitcoinLikeInput *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGBitcoinLikeInput::getPreviousTransaction, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    RCTCoreLGBinaryCallback *objcParam_0 = [[RCTCoreLGBinaryCallback alloc] initWithResolver:resolve rejecter:reject andBridge:self.bridge];
    [currentInstanceObj getPreviousTransaction:objcParam_0];

}

/** Easy way to set the P2PKH script signature. Shorthand for input.pushToScriptSig(input.getPublicKeys()[0], signature) */
RCT_REMAP_METHOD(setP2PKHSigScript,setP2PKHSigScript:(NSDictionary *)currentInstance withParams:(nonnull NSData *)signature withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGBitcoinLikeInput::setP2PKHSigScript, first argument should be an instance of LGBitcoinLikeInput", nil);
    }
    LGBitcoinLikeInput *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGBitcoinLikeInput::setP2PKHSigScript, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    [currentInstanceObj setP2PKHSigScript:signature];

}
@end
