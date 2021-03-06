// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from stellar_like_wallet.djinni

#import "RCTCoreLGStellarLikeOperationRecord.h"
#import "LGStellarLikeOperationRecord.h"

@implementation RCTCoreLGStellarLikeOperationRecord

//Export module
RCT_EXPORT_MODULE(RCTCoreLGStellarLikeOperationRecord)

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
RCT_REMAP_METHOD(init, initWithOperationHash:(nonnull NSString *)operationHash
                                  successful:(BOOL)successful
                               operationType:(int)operationType
                             transactionHash:(nonnull NSString *)transactionHash
                                       asset:(NSDictionary *)asset
                                 sourceAsset:(nullable NSDictionary *)sourceAsset
                                sourceAmount:(nullable NSDictionary *)sourceAmount withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    NSMutableDictionary *implementationsData = [[NSMutableDictionary alloc] init];
    RCTCoreLGStellarLikeAsset *rctParam_asset = (RCTCoreLGStellarLikeAsset *)[self.bridge moduleForName:@"CoreLGStellarLikeAsset"];
    LGStellarLikeAsset *field_4 = (LGStellarLikeAsset *)[rctParam_asset.objcImplementations objectForKey:asset[@"uid"]];
    [implementationsData setObject:asset[@"uid"] forKey:@"asset"];
    RCTCoreLGStellarLikeAsset *rctParam_sourceAsset = (RCTCoreLGStellarLikeAsset *)[self.bridge moduleForName:@"CoreLGStellarLikeAsset"];
    LGStellarLikeAsset *field_5 = (LGStellarLikeAsset *)[rctParam_sourceAsset.objcImplementations objectForKey:sourceAsset[@"uid"]];
    [implementationsData setObject:sourceAsset[@"uid"] forKey:@"sourceAsset"];
    RCTCoreLGAmount *rctParam_sourceAmount = (RCTCoreLGAmount *)[self.bridge moduleForName:@"CoreLGAmount"];
    LGAmount *field_6 = (LGAmount *)[rctParam_sourceAmount.objcImplementations objectForKey:sourceAmount[@"uid"]];
    [implementationsData setObject:sourceAmount[@"uid"] forKey:@"sourceAmount"];


    LGStellarLikeOperationRecord * finalResult = [[LGStellarLikeOperationRecord alloc] initWithOperationHash:operationHash successful:successful operationType:(LGStellarLikeOperationType)operationType transactionHash:transactionHash asset:field_4 sourceAsset:field_5 sourceAmount:field_6];
    NSString *uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGStellarLikeOperationRecord *rctImpl = (RCTCoreLGStellarLikeOperationRecord *)[self.bridge moduleForName:@"CoreLGStellarLikeOperationRecord"];
    NSArray *finalResultArray = [[NSArray alloc] initWithObjects:finalResult, uuid, nil];
    [rctImpl baseSetObject:finalResultArray];
    NSDictionary *result = @{@"type" : @"CoreLGStellarLikeOperationRecord", @"uid" : uuid };
    if (result)
    {
        [self.implementationsData setObject:implementationsData forKey:uuid];
        resolve(result);
    }
}

-(void)mapImplementationsData:(NSDictionary *)currentInstance
{
    LGStellarLikeOperationRecord *objcImpl = (LGStellarLikeOperationRecord *)[self.objcImplementations objectForKey:currentInstance[@"uid"]];
    NSMutableDictionary *implementationsData = [[NSMutableDictionary alloc] init];
    id field_4 = objcImpl.asset;
    NSString *field_4_uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGStellarLikeAsset *rctImpl_field_4 = (RCTCoreLGStellarLikeAsset *)[self.bridge moduleForName:@"CoreLGStellarLikeAsset"];
    NSArray *field_4_array = [[NSArray alloc] initWithObjects:field_4, field_4_uuid, nil];
    [rctImpl_field_4 baseSetObject:field_4_array];
    NSDictionary *converted_field_4 = @{@"type" : @"CoreLGStellarLikeAsset", @"uid" : field_4_uuid };
    [implementationsData setObject:converted_field_4 forKey:@"asset"];
    id field_5 = objcImpl.sourceAsset;
    NSString *field_5_uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGStellarLikeAsset *rctImpl_field_5 = (RCTCoreLGStellarLikeAsset *)[self.bridge moduleForName:@"CoreLGStellarLikeAsset"];
    if (field_5)
    {
        NSArray *field_5_array = [[NSArray alloc] initWithObjects:field_5, field_5_uuid, nil];
        [rctImpl_field_5 baseSetObject:field_5_array];
    }
    NSDictionary *converted_field_5 = @{@"type" : @"CoreLGStellarLikeAsset", @"uid" : field_5_uuid };
    [implementationsData setObject:converted_field_5 forKey:@"sourceAsset"];
    id field_6 = objcImpl.sourceAmount;
    NSString *field_6_uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGAmount *rctImpl_field_6 = (RCTCoreLGAmount *)[self.bridge moduleForName:@"CoreLGAmount"];
    if (field_6)
    {
        NSArray *field_6_array = [[NSArray alloc] initWithObjects:field_6, field_6_uuid, nil];
        [rctImpl_field_6 baseSetObject:field_6_array];
    }
    NSDictionary *converted_field_6 = @{@"type" : @"CoreLGAmount", @"uid" : field_6_uuid };
    [implementationsData setObject:converted_field_6 forKey:@"sourceAmount"];
    [self.implementationsData setObject:implementationsData forKey:currentInstance[@"uid"]];
}
RCT_REMAP_METHOD(getOperationHash, getOperationHash:(NSDictionary *)currentInstance withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)rejecter)
{
    LGStellarLikeOperationRecord *objcImpl = (LGStellarLikeOperationRecord *)[self.objcImplementations objectForKey:currentInstance[@"uid"]];
    NSDictionary *result = @{@"value" : objcImpl.operationHash};
    resolve(result);
}

RCT_REMAP_METHOD(getSuccessful, getSuccessful:(NSDictionary *)currentInstance withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)rejecter)
{
    LGStellarLikeOperationRecord *objcImpl = (LGStellarLikeOperationRecord *)[self.objcImplementations objectForKey:currentInstance[@"uid"]];
    NSDictionary *result = @{@"value" : @(objcImpl.successful)};
    resolve(result);
}

RCT_REMAP_METHOD(getOperationType, getOperationType:(NSDictionary *)currentInstance withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)rejecter)
{
    LGStellarLikeOperationRecord *objcImpl = (LGStellarLikeOperationRecord *)[self.objcImplementations objectForKey:currentInstance[@"uid"]];
    NSDictionary *result = @{@"value" : @((int)objcImpl.operationType)};
    resolve(result);
}

RCT_REMAP_METHOD(getTransactionHash, getTransactionHash:(NSDictionary *)currentInstance withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)rejecter)
{
    LGStellarLikeOperationRecord *objcImpl = (LGStellarLikeOperationRecord *)[self.objcImplementations objectForKey:currentInstance[@"uid"]];
    NSDictionary *result = @{@"value" : objcImpl.transactionHash};
    resolve(result);
}

RCT_REMAP_METHOD(getAsset, getAsset:(NSDictionary *)currentInstance withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)rejecter)
{
    NSDictionary *data = (NSDictionary *)[self.implementationsData objectForKey:currentInstance[@"uid"]];
    if (!data)
    {
        [self mapImplementationsData:currentInstance];
        data = (NSDictionary *)[self.implementationsData objectForKey:currentInstance[@"uid"]];
    }
    NSDictionary *result = [data objectForKey:@"asset"];
    resolve(result);
}

RCT_REMAP_METHOD(getSourceAsset, getSourceAsset:(NSDictionary *)currentInstance withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)rejecter)
{
    NSDictionary *data = (NSDictionary *)[self.implementationsData objectForKey:currentInstance[@"uid"]];
    if (!data)
    {
        [self mapImplementationsData:currentInstance];
        data = (NSDictionary *)[self.implementationsData objectForKey:currentInstance[@"uid"]];
    }
    NSDictionary *result = [data objectForKey:@"sourceAsset"];
    resolve(result);
}

RCT_REMAP_METHOD(getSourceAmount, getSourceAmount:(NSDictionary *)currentInstance withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)rejecter)
{
    NSDictionary *data = (NSDictionary *)[self.implementationsData objectForKey:currentInstance[@"uid"]];
    if (!data)
    {
        [self mapImplementationsData:currentInstance];
        data = (NSDictionary *)[self.implementationsData objectForKey:currentInstance[@"uid"]];
    }
    NSDictionary *result = [data objectForKey:@"sourceAmount"];
    resolve(result);
}

@end
