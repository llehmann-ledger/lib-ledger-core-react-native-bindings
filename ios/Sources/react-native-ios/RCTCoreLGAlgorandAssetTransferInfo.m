// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from idl.djinni

#import "RCTCoreLGAlgorandAssetTransferInfo.h"
#import "LGAlgorandAssetTransferInfo.h"

@implementation RCTCoreLGAlgorandAssetTransferInfo

//Export module
RCT_EXPORT_MODULE(RCTCoreLGAlgorandAssetTransferInfo)

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
RCT_REMAP_METHOD(init, initWithAssetId:(nonnull NSString *)assetId
                                amount:(nullable NSString *)amount
                      recipientAddress:(nonnull NSString *)recipientAddress
                          closeAddress:(nullable NSString *)closeAddress
                     clawedBackAddress:(nullable NSString *)clawedBackAddress
                           closeAmount:(nullable NSString *)closeAmount withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {


    LGAlgorandAssetTransferInfo * finalResult = [[LGAlgorandAssetTransferInfo alloc] initWithAssetId:assetId amount:amount recipientAddress:recipientAddress closeAddress:closeAddress clawedBackAddress:clawedBackAddress closeAmount:closeAmount];
    NSString *uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGAlgorandAssetTransferInfo *rctImpl = (RCTCoreLGAlgorandAssetTransferInfo *)[self.bridge moduleForName:@"CoreLGAlgorandAssetTransferInfo"];
    NSArray *finalResultArray = [[NSArray alloc] initWithObjects:finalResult, uuid, nil];
    [rctImpl baseSetObject:finalResultArray];
    NSDictionary *result = @{@"type" : @"CoreLGAlgorandAssetTransferInfo", @"uid" : uuid };
    if (result)
    {
        resolve(result);
    }
}

RCT_REMAP_METHOD(getAssetId, getAssetId:(NSDictionary *)currentInstance withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)rejecter)
{
    LGAlgorandAssetTransferInfo *objcImpl = (LGAlgorandAssetTransferInfo *)[self.objcImplementations objectForKey:currentInstance[@"uid"]];
    NSDictionary *result = @{@"value" : objcImpl.assetId};
    resolve(result);
}

RCT_REMAP_METHOD(getAmount, getAmount:(NSDictionary *)currentInstance withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)rejecter)
{
    LGAlgorandAssetTransferInfo *objcImpl = (LGAlgorandAssetTransferInfo *)[self.objcImplementations objectForKey:currentInstance[@"uid"]];
    NSDictionary *result = @{@"value" : objcImpl.amount};
    resolve(result);
}

RCT_REMAP_METHOD(getRecipientAddress, getRecipientAddress:(NSDictionary *)currentInstance withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)rejecter)
{
    LGAlgorandAssetTransferInfo *objcImpl = (LGAlgorandAssetTransferInfo *)[self.objcImplementations objectForKey:currentInstance[@"uid"]];
    NSDictionary *result = @{@"value" : objcImpl.recipientAddress};
    resolve(result);
}

RCT_REMAP_METHOD(getCloseAddress, getCloseAddress:(NSDictionary *)currentInstance withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)rejecter)
{
    LGAlgorandAssetTransferInfo *objcImpl = (LGAlgorandAssetTransferInfo *)[self.objcImplementations objectForKey:currentInstance[@"uid"]];
    NSDictionary *result = @{@"value" : objcImpl.closeAddress};
    resolve(result);
}

RCT_REMAP_METHOD(getClawedBackAddress, getClawedBackAddress:(NSDictionary *)currentInstance withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)rejecter)
{
    LGAlgorandAssetTransferInfo *objcImpl = (LGAlgorandAssetTransferInfo *)[self.objcImplementations objectForKey:currentInstance[@"uid"]];
    NSDictionary *result = @{@"value" : objcImpl.clawedBackAddress};
    resolve(result);
}

RCT_REMAP_METHOD(getCloseAmount, getCloseAmount:(NSDictionary *)currentInstance withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)rejecter)
{
    LGAlgorandAssetTransferInfo *objcImpl = (LGAlgorandAssetTransferInfo *)[self.objcImplementations objectForKey:currentInstance[@"uid"]];
    NSDictionary *result = @{@"value" : objcImpl.closeAmount};
    resolve(result);
}

@end
