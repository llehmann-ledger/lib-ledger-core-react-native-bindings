// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from messages.djinni

#import "RCTCoreLGCosmosLikeMsgEditValidator.h"
#import "LGCosmosLikeMsgEditValidator.h"

@implementation RCTCoreLGCosmosLikeMsgEditValidator

//Export module
RCT_EXPORT_MODULE(RCTCoreLGCosmosLikeMsgEditValidator)

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
RCT_REMAP_METHOD(init, initWithDescr:(nullable NSDictionary *)descr
                    validatorAddress:(nonnull NSString *)validatorAddress
                      commissionRate:(nonnull NSString *)commissionRate
                   minSelfDelegation:(nonnull NSString *)minSelfDelegation withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    NSMutableDictionary *implementationsData = [[NSMutableDictionary alloc] init];
    RCTCoreLGCosmosLikeValidatorDescription *rctParam_descr = (RCTCoreLGCosmosLikeValidatorDescription *)[self.bridge moduleForName:@"CoreLGCosmosLikeValidatorDescription"];
    LGCosmosLikeValidatorDescription *field_0 = (LGCosmosLikeValidatorDescription *)[rctParam_descr.objcImplementations objectForKey:descr[@"uid"]];
    [implementationsData setObject:descr[@"uid"] forKey:@"descr"];


    LGCosmosLikeMsgEditValidator * finalResult = [[LGCosmosLikeMsgEditValidator alloc] initWithDescr:field_0 validatorAddress:validatorAddress commissionRate:commissionRate minSelfDelegation:minSelfDelegation];
    NSString *uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGCosmosLikeMsgEditValidator *rctImpl = (RCTCoreLGCosmosLikeMsgEditValidator *)[self.bridge moduleForName:@"CoreLGCosmosLikeMsgEditValidator"];
    NSArray *finalResultArray = [[NSArray alloc] initWithObjects:finalResult, uuid, nil];
    [rctImpl baseSetObject:finalResultArray];
    NSDictionary *result = @{@"type" : @"CoreLGCosmosLikeMsgEditValidator", @"uid" : uuid };
    if (result)
    {
        [self.implementationsData setObject:implementationsData forKey:uuid];
        resolve(result);
    }
}

-(void)mapImplementationsData:(NSDictionary *)currentInstance
{
    LGCosmosLikeMsgEditValidator *objcImpl = (LGCosmosLikeMsgEditValidator *)[self.objcImplementations objectForKey:currentInstance[@"uid"]];
    NSMutableDictionary *implementationsData = [[NSMutableDictionary alloc] init];
    id field_0 = objcImpl.descr;
    NSString *field_0_uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGCosmosLikeValidatorDescription *rctImpl_field_0 = (RCTCoreLGCosmosLikeValidatorDescription *)[self.bridge moduleForName:@"CoreLGCosmosLikeValidatorDescription"];
    if (field_0)
    {
        NSArray *field_0_array = [[NSArray alloc] initWithObjects:field_0, field_0_uuid, nil];
        [rctImpl_field_0 baseSetObject:field_0_array];
    }
    NSDictionary *converted_field_0 = @{@"type" : @"CoreLGCosmosLikeValidatorDescription", @"uid" : field_0_uuid };
    [implementationsData setObject:converted_field_0 forKey:@"descr"];
    [self.implementationsData setObject:implementationsData forKey:currentInstance[@"uid"]];
}
RCT_REMAP_METHOD(getDescr, getDescr:(NSDictionary *)currentInstance withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)rejecter)
{
    NSDictionary *data = (NSDictionary *)[self.implementationsData objectForKey:currentInstance[@"uid"]];
    if (!data)
    {
        [self mapImplementationsData:currentInstance];
        data = (NSDictionary *)[self.implementationsData objectForKey:currentInstance[@"uid"]];
    }
    NSDictionary *result = [data objectForKey:@"descr"];
    resolve(result);
}

RCT_REMAP_METHOD(getValidatorAddress, getValidatorAddress:(NSDictionary *)currentInstance withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)rejecter)
{
    LGCosmosLikeMsgEditValidator *objcImpl = (LGCosmosLikeMsgEditValidator *)[self.objcImplementations objectForKey:currentInstance[@"uid"]];
    NSDictionary *result = @{@"value" : objcImpl.validatorAddress};
    resolve(result);
}

RCT_REMAP_METHOD(getCommissionRate, getCommissionRate:(NSDictionary *)currentInstance withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)rejecter)
{
    LGCosmosLikeMsgEditValidator *objcImpl = (LGCosmosLikeMsgEditValidator *)[self.objcImplementations objectForKey:currentInstance[@"uid"]];
    NSDictionary *result = @{@"value" : objcImpl.commissionRate};
    resolve(result);
}

RCT_REMAP_METHOD(getMinSelfDelegation, getMinSelfDelegation:(NSDictionary *)currentInstance withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)rejecter)
{
    LGCosmosLikeMsgEditValidator *objcImpl = (LGCosmosLikeMsgEditValidator *)[self.objcImplementations objectForKey:currentInstance[@"uid"]];
    NSDictionary *result = @{@"value" : objcImpl.minSelfDelegation};
    resolve(result);
}

@end
