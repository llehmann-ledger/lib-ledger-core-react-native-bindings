// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from tezos_like_wallet.djinni

#import "RCTCoreLGTezosLikeTransaction.h"


@implementation RCTCoreLGTezosLikeTransaction
//Export module
RCT_EXPORT_MODULE(RCTCoreLGTezosLikeTransaction)

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
-(NSData *) hexStringToData: (NSString *)hexString 
{
    NSMutableData *data= [[NSMutableData alloc] init];
    unsigned char byte;
    char byteChars[3] = {'\0','\0','\0'};
    for (int i = 0; i < ([hexString length] / 2); i++)
    {
        byteChars[0] = [hexString characterAtIndex: i*2];
        byteChars[1] = [hexString characterAtIndex: i*2 + 1];
        byte = strtol(byteChars, NULL, 16);
        [data appendBytes:&byte length:1];
    }
    return data;
}
-(NSString *) dataToHexString: (NSData *)data 
{
    const unsigned char *bytes = (const unsigned char *)data.bytes;
    NSMutableString *hex = [NSMutableString new];
    for (NSInteger i = 0; i < data.length; i++)
    {
        [hex appendFormat:@"%02x", bytes[i]];
    }
    return [hex copy];
}

/** Get type of operation (transaction, reveal ... cf TezosOperationTag) */
RCT_REMAP_METHOD(getType,getType:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGTezosLikeTransaction::getType, first argument should be an instance of LGTezosLikeTransaction", nil);
        return;
    }
    LGTezosLikeTransaction *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGTezosLikeTransaction::getType, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    LGTezosOperationTag objcResult = [currentInstanceObj getType];
    NSDictionary *result = @{@"value" : @(objcResult)};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGTezosLikeTransaction::getType", nil);
        return;
    }

}

/** Get the hash of the transaction. */
RCT_REMAP_METHOD(getHash,getHash:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGTezosLikeTransaction::getHash, first argument should be an instance of LGTezosLikeTransaction", nil);
        return;
    }
    LGTezosLikeTransaction *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGTezosLikeTransaction::getHash, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    NSString * objcResult = [currentInstanceObj getHash];
    NSDictionary *result = @{@"value" : objcResult};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGTezosLikeTransaction::getHash", nil);
        return;
    }

}

/** Get Fees (in drop) */
RCT_REMAP_METHOD(getFees,getFees:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGTezosLikeTransaction::getFees, first argument should be an instance of LGTezosLikeTransaction", nil);
        return;
    }
    LGTezosLikeTransaction *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGTezosLikeTransaction::getFees, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    LGAmount * objcResult = [currentInstanceObj getFees];

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
        reject(@"impl_call_error", @"Error while calling LGTezosLikeTransaction::getFees", nil);
        return;
    }

}

/** Get destination XTZ. address */
RCT_REMAP_METHOD(getReceiver,getReceiver:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGTezosLikeTransaction::getReceiver, first argument should be an instance of LGTezosLikeTransaction", nil);
        return;
    }
    LGTezosLikeTransaction *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGTezosLikeTransaction::getReceiver, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    LGTezosLikeAddress * objcResult = [currentInstanceObj getReceiver];

    NSString *objcResult_uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGTezosLikeAddress *rctImpl_objcResult = (RCTCoreLGTezosLikeAddress *)[self.bridge moduleForName:@"CoreLGTezosLikeAddress"];
    if (objcResult)
    {
        NSArray *objcResult_array = [[NSArray alloc] initWithObjects:objcResult, objcResult_uuid, nil];
        [rctImpl_objcResult baseSetObject:objcResult_array];
    }
    NSDictionary *result = @{@"type" : @"CoreLGTezosLikeAddress", @"uid" : objcResult_uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGTezosLikeTransaction::getReceiver", nil);
        return;
    }

}

/** Get XTZ. sender address */
RCT_REMAP_METHOD(getSender,getSender:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGTezosLikeTransaction::getSender, first argument should be an instance of LGTezosLikeTransaction", nil);
        return;
    }
    LGTezosLikeTransaction *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGTezosLikeTransaction::getSender, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    LGTezosLikeAddress * objcResult = [currentInstanceObj getSender];

    NSString *objcResult_uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGTezosLikeAddress *rctImpl_objcResult = (RCTCoreLGTezosLikeAddress *)[self.bridge moduleForName:@"CoreLGTezosLikeAddress"];
    NSArray *objcResult_array = [[NSArray alloc] initWithObjects:objcResult, objcResult_uuid, nil];
    [rctImpl_objcResult baseSetObject:objcResult_array];
    NSDictionary *result = @{@"type" : @"CoreLGTezosLikeAddress", @"uid" : objcResult_uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGTezosLikeTransaction::getSender", nil);
        return;
    }

}

/** Get amount of XTZ to send */
RCT_REMAP_METHOD(getValue,getValue:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGTezosLikeTransaction::getValue, first argument should be an instance of LGTezosLikeTransaction", nil);
        return;
    }
    LGTezosLikeTransaction *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGTezosLikeTransaction::getValue, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    LGAmount * objcResult = [currentInstanceObj getValue];

    NSString *objcResult_uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGAmount *rctImpl_objcResult = (RCTCoreLGAmount *)[self.bridge moduleForName:@"CoreLGAmount"];
    if (objcResult)
    {
        NSArray *objcResult_array = [[NSArray alloc] initWithObjects:objcResult, objcResult_uuid, nil];
        [rctImpl_objcResult baseSetObject:objcResult_array];
    }
    NSDictionary *result = @{@"type" : @"CoreLGAmount", @"uid" : objcResult_uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGTezosLikeTransaction::getValue", nil);
        return;
    }

}

/** Serialize the transaction to its raw format. */
RCT_REMAP_METHOD(serialize,serialize:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGTezosLikeTransaction::serialize, first argument should be an instance of LGTezosLikeTransaction", nil);
        return;
    }
    LGTezosLikeTransaction *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGTezosLikeTransaction::serialize, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    NSData * objcResult = [currentInstanceObj serialize];
    NSString *objcResultData = [self dataToHexString:objcResult];
    NSDictionary *result = @{@"value" : objcResultData};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGTezosLikeTransaction::serialize", nil);
        return;
    }

}

/** Set signature of transaction, when a signature is set serialize method gives back serialized Tx */
RCT_REMAP_METHOD(setSignature,setSignature:(NSDictionary *)currentInstance withParams:(NSString *)signature withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGTezosLikeTransaction::setSignature, first argument should be an instance of LGTezosLikeTransaction", nil);
        return;
    }
    LGTezosLikeTransaction *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGTezosLikeTransaction::setSignature, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    NSData *objcParam_0 = [self hexStringToData:signature];

    [currentInstanceObj setSignature:objcParam_0];
    resolve(@(YES));

}

/**
 * Get the time when the transaction was issued or the time of the block including
 * this transaction
 */
RCT_REMAP_METHOD(getDate,getDate:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGTezosLikeTransaction::getDate, first argument should be an instance of LGTezosLikeTransaction", nil);
        return;
    }
    LGTezosLikeTransaction *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGTezosLikeTransaction::getDate, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    NSDate * objcResult = [currentInstanceObj getDate];
    NSISO8601DateFormatter *dateFormatter = [[NSISO8601DateFormatter alloc] init];
    NSString *objcResultDate = [dateFormatter stringFromDate:objcResult];
    NSDictionary *result = @{@"value" : objcResultDate};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGTezosLikeTransaction::getDate", nil);
        return;
    }

}

/** Get Signing public Key */
RCT_REMAP_METHOD(getSigningPubKey,getSigningPubKey:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGTezosLikeTransaction::getSigningPubKey, first argument should be an instance of LGTezosLikeTransaction", nil);
        return;
    }
    LGTezosLikeTransaction *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGTezosLikeTransaction::getSigningPubKey, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    NSData * objcResult = [currentInstanceObj getSigningPubKey];
    NSString *objcResultData = [self dataToHexString:objcResult];
    NSDictionary *result = @{@"value" : objcResultData};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGTezosLikeTransaction::getSigningPubKey", nil);
        return;
    }

}

RCT_REMAP_METHOD(getCounter,getCounter:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGTezosLikeTransaction::getCounter, first argument should be an instance of LGTezosLikeTransaction", nil);
        return;
    }
    LGTezosLikeTransaction *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGTezosLikeTransaction::getCounter, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    LGBigInt * objcResult = [currentInstanceObj getCounter];

    NSString *objcResult_uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGBigInt *rctImpl_objcResult = (RCTCoreLGBigInt *)[self.bridge moduleForName:@"CoreLGBigInt"];
    NSArray *objcResult_array = [[NSArray alloc] initWithObjects:objcResult, objcResult_uuid, nil];
    [rctImpl_objcResult baseSetObject:objcResult_array];
    NSDictionary *result = @{@"type" : @"CoreLGBigInt", @"uid" : objcResult_uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGTezosLikeTransaction::getCounter", nil);
        return;
    }

}

RCT_REMAP_METHOD(getGasLimit,getGasLimit:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGTezosLikeTransaction::getGasLimit, first argument should be an instance of LGTezosLikeTransaction", nil);
        return;
    }
    LGTezosLikeTransaction *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGTezosLikeTransaction::getGasLimit, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    LGAmount * objcResult = [currentInstanceObj getGasLimit];

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
        reject(@"impl_call_error", @"Error while calling LGTezosLikeTransaction::getGasLimit", nil);
        return;
    }

}

RCT_REMAP_METHOD(getStorageLimit,getStorageLimit:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGTezosLikeTransaction::getStorageLimit, first argument should be an instance of LGTezosLikeTransaction", nil);
        return;
    }
    LGTezosLikeTransaction *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGTezosLikeTransaction::getStorageLimit, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    LGBigInt * objcResult = [currentInstanceObj getStorageLimit];

    NSString *objcResult_uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGBigInt *rctImpl_objcResult = (RCTCoreLGBigInt *)[self.bridge moduleForName:@"CoreLGBigInt"];
    NSArray *objcResult_array = [[NSArray alloc] initWithObjects:objcResult, objcResult_uuid, nil];
    [rctImpl_objcResult baseSetObject:objcResult_array];
    NSDictionary *result = @{@"type" : @"CoreLGBigInt", @"uid" : objcResult_uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGTezosLikeTransaction::getStorageLimit", nil);
        return;
    }

}

/** Get hash of block in which tx is included */
RCT_REMAP_METHOD(getBlockHash,getBlockHash:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGTezosLikeTransaction::getBlockHash, first argument should be an instance of LGTezosLikeTransaction", nil);
        return;
    }
    LGTezosLikeTransaction *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGTezosLikeTransaction::getBlockHash, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    NSString * objcResult = [currentInstanceObj getBlockHash];
    NSDictionary *result = @{@"value" : objcResult};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGTezosLikeTransaction::getBlockHash", nil);
        return;
    }

}

/** Get status of transaction: equals to 1 if succeeded, 0 otherwise */
RCT_REMAP_METHOD(getStatus,getStatus:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGTezosLikeTransaction::getStatus, first argument should be an instance of LGTezosLikeTransaction", nil);
        return;
    }
    LGTezosLikeTransaction *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGTezosLikeTransaction::getStatus, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    NSInteger objcResult = [currentInstanceObj getStatus];
    NSDictionary *result = @{@"value" : @(objcResult)};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGTezosLikeTransaction::getStatus", nil);
        return;
    }

}
@end
