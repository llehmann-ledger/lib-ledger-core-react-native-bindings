// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from dynamic.djinni

#import "RCTCoreLGDynamicObject.h"


@implementation RCTCoreLGDynamicObject
//Export module
RCT_EXPORT_MODULE(RCTCoreLGDynamicObject)

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
        reject(@"impl_call_error", @"Error while calling RCTCoreLGDynamicObject::release, first argument should be an instance of LGDynamicObject", nil);
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

/**
 *Store a string with a given key
 *@param key, string, key to access stored value
 *@param value, string
 *@return DynamicObject object with value stored in it
 */
RCT_REMAP_METHOD(putString,putString:(NSDictionary *)currentInstance withParams:(nonnull NSString *)key
                                                                          value:(nonnull NSString *)value withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGDynamicObject::putString, first argument should be an instance of LGDynamicObject", nil);
    }
    LGDynamicObject *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGDynamicObject::putString, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    LGDynamicObject * objcResult = [currentInstanceObj putString:key value:value];

    NSString *uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGDynamicObject *rctImpl_objcResult = (RCTCoreLGDynamicObject *)[self.bridge moduleForName:@"CoreLGDynamicObject"];
    [rctImpl_objcResult.objcImplementations setObject:objcResult forKey:uuid];
    NSDictionary *result = @{@"type" : @"CoreLGDynamicObject", @"uid" : uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGDynamicObject::putString", nil);
    }

}

/**
 *Store a 32 bits integer with a given key
 *@param key, string, key to access stored value
 *@param value, 32 bits integer
 *@return DynamicObject object with value stored in it
 */
RCT_REMAP_METHOD(putInt,putInt:(NSDictionary *)currentInstance withParams:(nonnull NSString *)key
                                                                    value:(int)value withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGDynamicObject::putInt, first argument should be an instance of LGDynamicObject", nil);
    }
    LGDynamicObject *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGDynamicObject::putInt, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    LGDynamicObject * objcResult = [currentInstanceObj putInt:key value:value];

    NSString *uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGDynamicObject *rctImpl_objcResult = (RCTCoreLGDynamicObject *)[self.bridge moduleForName:@"CoreLGDynamicObject"];
    [rctImpl_objcResult.objcImplementations setObject:objcResult forKey:uuid];
    NSDictionary *result = @{@"type" : @"CoreLGDynamicObject", @"uid" : uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGDynamicObject::putInt", nil);
    }

}

/**
 *Store a 64 bits integer with a given key
 *@param key, string, key to access stored value
 *@param value, 64 bits integer
 *@return DynamicObject object with value stored in it
 */
RCT_REMAP_METHOD(putLong,putLong:(NSDictionary *)currentInstance withParams:(nonnull NSString *)key
                                                                      value:(int)value withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGDynamicObject::putLong, first argument should be an instance of LGDynamicObject", nil);
    }
    LGDynamicObject *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGDynamicObject::putLong, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    LGDynamicObject * objcResult = [currentInstanceObj putLong:key value:value];

    NSString *uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGDynamicObject *rctImpl_objcResult = (RCTCoreLGDynamicObject *)[self.bridge moduleForName:@"CoreLGDynamicObject"];
    [rctImpl_objcResult.objcImplementations setObject:objcResult forKey:uuid];
    NSDictionary *result = @{@"type" : @"CoreLGDynamicObject", @"uid" : uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGDynamicObject::putLong", nil);
    }

}

/**
 *Store a double with a given key
 *@param key, string, key to access stored value
 *@param value, double
 *@return DynamicObject object with value stored in it
 */
RCT_REMAP_METHOD(putDouble,putDouble:(NSDictionary *)currentInstance withParams:(nonnull NSString *)key
                                                                          value:(double)value withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGDynamicObject::putDouble, first argument should be an instance of LGDynamicObject", nil);
    }
    LGDynamicObject *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGDynamicObject::putDouble, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    LGDynamicObject * objcResult = [currentInstanceObj putDouble:key value:value];

    NSString *uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGDynamicObject *rctImpl_objcResult = (RCTCoreLGDynamicObject *)[self.bridge moduleForName:@"CoreLGDynamicObject"];
    [rctImpl_objcResult.objcImplementations setObject:objcResult forKey:uuid];
    NSDictionary *result = @{@"type" : @"CoreLGDynamicObject", @"uid" : uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGDynamicObject::putDouble", nil);
    }

}

/**
 *Store a binary integer with a given key
 *@param key, string, key to access stored value
 *@param value, binary
 *@return DynamicObject object with value stored in it
 */
RCT_REMAP_METHOD(putData,putData:(NSDictionary *)currentInstance withParams:(nonnull NSString *)key
                                                                      value:(nonnull NSData *)value withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGDynamicObject::putData, first argument should be an instance of LGDynamicObject", nil);
    }
    LGDynamicObject *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGDynamicObject::putData, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    LGDynamicObject * objcResult = [currentInstanceObj putData:key value:value];

    NSString *uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGDynamicObject *rctImpl_objcResult = (RCTCoreLGDynamicObject *)[self.bridge moduleForName:@"CoreLGDynamicObject"];
    [rctImpl_objcResult.objcImplementations setObject:objcResult forKey:uuid];
    NSDictionary *result = @{@"type" : @"CoreLGDynamicObject", @"uid" : uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGDynamicObject::putData", nil);
    }

}

/**
 *Store a boolean integer with a given key
 *@param key, string, key to access stored value
 *@param value, bool
 *@return DynamicObject object with value stored in it
 */
RCT_REMAP_METHOD(putBoolean,putBoolean:(NSDictionary *)currentInstance withParams:(nonnull NSString *)key
                                                                            value:(BOOL)value withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGDynamicObject::putBoolean, first argument should be an instance of LGDynamicObject", nil);
    }
    LGDynamicObject *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGDynamicObject::putBoolean, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    LGDynamicObject * objcResult = [currentInstanceObj putBoolean:key value:value];

    NSString *uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGDynamicObject *rctImpl_objcResult = (RCTCoreLGDynamicObject *)[self.bridge moduleForName:@"CoreLGDynamicObject"];
    [rctImpl_objcResult.objcImplementations setObject:objcResult forKey:uuid];
    NSDictionary *result = @{@"type" : @"CoreLGDynamicObject", @"uid" : uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGDynamicObject::putBoolean", nil);
    }

}

/**
 *Store another DynamicObject object with a given key
 *@param key, string, key to access stored value
 *@return DynamicObject object with value stored in it
 */
RCT_REMAP_METHOD(putObject,putObject:(NSDictionary *)currentInstance withParams:(nonnull NSString *)key
                                                                          value:(NSDictionary *)value withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGDynamicObject::putObject, first argument should be an instance of LGDynamicObject", nil);
    }
    LGDynamicObject *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGDynamicObject::putObject, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    RCTCoreLGDynamicObject *rctParam_value = (RCTCoreLGDynamicObject *)[self.bridge moduleForName:@"CoreLGDynamicObject"];
    LGDynamicObject *objcParam_1 = (LGDynamicObject *)[rctParam_value.objcImplementations objectForKey:value[@"uid"]];
    LGDynamicObject * objcResult = [currentInstanceObj putObject:key value:objcParam_1];

    NSString *uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGDynamicObject *rctImpl_objcResult = (RCTCoreLGDynamicObject *)[self.bridge moduleForName:@"CoreLGDynamicObject"];
    [rctImpl_objcResult.objcImplementations setObject:objcResult forKey:uuid];
    NSDictionary *result = @{@"type" : @"CoreLGDynamicObject", @"uid" : uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGDynamicObject::putObject", nil);
    }

}

/**
 *Store a DynamicArray object with a given key
 *@param key, string, key to access stored reference
 *@return DynamicArray object with value stored in it
 */
RCT_REMAP_METHOD(putArray,putArray:(NSDictionary *)currentInstance withParams:(nonnull NSString *)key
                                                                        value:(NSDictionary *)value withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGDynamicObject::putArray, first argument should be an instance of LGDynamicObject", nil);
    }
    LGDynamicObject *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGDynamicObject::putArray, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    RCTCoreLGDynamicArray *rctParam_value = (RCTCoreLGDynamicArray *)[self.bridge moduleForName:@"CoreLGDynamicArray"];
    LGDynamicArray *objcParam_1 = (LGDynamicArray *)[rctParam_value.objcImplementations objectForKey:value[@"uid"]];
    LGDynamicObject * objcResult = [currentInstanceObj putArray:key value:objcParam_1];

    NSString *uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGDynamicObject *rctImpl_objcResult = (RCTCoreLGDynamicObject *)[self.bridge moduleForName:@"CoreLGDynamicObject"];
    [rctImpl_objcResult.objcImplementations setObject:objcResult forKey:uuid];
    NSDictionary *result = @{@"type" : @"CoreLGDynamicObject", @"uid" : uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGDynamicObject::putArray", nil);
    }

}

/**
 *Get, if exists, stored string having a specific key
 *@param key, string, key of string to look for
 *@return Optional string
 */
RCT_REMAP_METHOD(getString,getString:(NSDictionary *)currentInstance withParams:(nonnull NSString *)key withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGDynamicObject::getString, first argument should be an instance of LGDynamicObject", nil);
    }
    LGDynamicObject *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGDynamicObject::getString, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    NSString * objcResult = [currentInstanceObj getString:key];
    NSDictionary *result = @{@"value" : objcResult};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGDynamicObject::getString", nil);
    }

}

/**
 *Get, if exists, stored 32 bits integer having a specific key
 *@param key, string, key of 32 bits integer to look for
 *@return Optional 32 bits integer
 */
RCT_REMAP_METHOD(getInt,getInt:(NSDictionary *)currentInstance withParams:(nonnull NSString *)key withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGDynamicObject::getInt, first argument should be an instance of LGDynamicObject", nil);
    }
    LGDynamicObject *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGDynamicObject::getInt, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    NSNumber * objcResult = [currentInstanceObj getInt:key];
    NSDictionary *result = @{@"value" : @([objcResult intValue])};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGDynamicObject::getInt", nil);
    }

}

/**
 *Get, if exists, stored 64 bits integer having a specific key
 *@param key, string, key of 64 bits integer to look for
 *@return Optional 64 bits integer
 */
RCT_REMAP_METHOD(getLong,getLong:(NSDictionary *)currentInstance withParams:(nonnull NSString *)key withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGDynamicObject::getLong, first argument should be an instance of LGDynamicObject", nil);
    }
    LGDynamicObject *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGDynamicObject::getLong, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    NSNumber * objcResult = [currentInstanceObj getLong:key];
    NSDictionary *result = @{@"value" : @([objcResult intValue])};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGDynamicObject::getLong", nil);
    }

}

/**
 *Get, if exists, stored double having a specific key
 *@param key, string, key of double to look for
 *@return Optional double
 */
RCT_REMAP_METHOD(getDouble,getDouble:(NSDictionary *)currentInstance withParams:(nonnull NSString *)key withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGDynamicObject::getDouble, first argument should be an instance of LGDynamicObject", nil);
    }
    LGDynamicObject *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGDynamicObject::getDouble, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    NSNumber * objcResult = [currentInstanceObj getDouble:key];
    NSDictionary *result = @{@"value" : @([objcResult intValue])};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGDynamicObject::getDouble", nil);
    }

}

/**
 *Get, if exists, stored binary having a specific key
 *@param key, string, key of binary to look for
 *@return Optional binary
 */
RCT_REMAP_METHOD(getData,getData:(NSDictionary *)currentInstance withParams:(nonnull NSString *)key withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGDynamicObject::getData, first argument should be an instance of LGDynamicObject", nil);
    }
    LGDynamicObject *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGDynamicObject::getData, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    NSData * objcResult = [currentInstanceObj getData:key];
    NSDictionary *result = @{@"value" : objcResult.description};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGDynamicObject::getData", nil);
    }

}

/**
 *Get, if exists, stored bool having a specific key
 *@param key, string, key of bool to look for
 *@return Optional bool
 */
RCT_REMAP_METHOD(getBoolean,getBoolean:(NSDictionary *)currentInstance withParams:(nonnull NSString *)key withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGDynamicObject::getBoolean, first argument should be an instance of LGDynamicObject", nil);
    }
    LGDynamicObject *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGDynamicObject::getBoolean, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    NSNumber * objcResult = [currentInstanceObj getBoolean:key];
    NSDictionary *result = @{@"value" : @([objcResult intValue])};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGDynamicObject::getBoolean", nil);
    }

}

/**
 *Get, if exists, stored DynamicObject having a specific key
 *@param key, string, key of DynamicObject to look for
 *@return Optional DynamicObject
 */
RCT_REMAP_METHOD(getObject,getObject:(NSDictionary *)currentInstance withParams:(nonnull NSString *)key withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGDynamicObject::getObject, first argument should be an instance of LGDynamicObject", nil);
    }
    LGDynamicObject *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGDynamicObject::getObject, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    LGDynamicObject * objcResult = [currentInstanceObj getObject:key];

    NSString *uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGDynamicObject *rctImpl_objcResult = (RCTCoreLGDynamicObject *)[self.bridge moduleForName:@"CoreLGDynamicObject"];
    [rctImpl_objcResult.objcImplementations setObject:objcResult forKey:uuid];
    NSDictionary *result = @{@"type" : @"CoreLGDynamicObject", @"uid" : uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGDynamicObject::getObject", nil);
    }

}

/**
 *Get, if exists, stored DynamicArray having a specific key
 *@param key, string, key of DynamicArray to look for
 *@return Optional DynamicArray
 */
RCT_REMAP_METHOD(getArray,getArray:(NSDictionary *)currentInstance withParams:(nonnull NSString *)key withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGDynamicObject::getArray, first argument should be an instance of LGDynamicObject", nil);
    }
    LGDynamicObject *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGDynamicObject::getArray, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    LGDynamicArray * objcResult = [currentInstanceObj getArray:key];

    NSString *uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGDynamicArray *rctImpl_objcResult = (RCTCoreLGDynamicArray *)[self.bridge moduleForName:@"CoreLGDynamicArray"];
    [rctImpl_objcResult.objcImplementations setObject:objcResult forKey:uuid];
    NSDictionary *result = @{@"type" : @"CoreLGDynamicArray", @"uid" : uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGDynamicObject::getArray", nil);
    }

}

/**
 *Check if a key was used to store a value
 *@param key, string, key to look for
 *@return bool
 */
RCT_REMAP_METHOD(contains,contains:(NSDictionary *)currentInstance withParams:(nonnull NSString *)key withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGDynamicObject::contains, first argument should be an instance of LGDynamicObject", nil);
    }
    LGDynamicObject *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGDynamicObject::contains, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    BOOL objcResult = [currentInstanceObj contains:key];
    NSDictionary *result = @{@"value" : @(objcResult)};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGDynamicObject::contains", nil);
    }

}

/**
 *Delete key and value stored with it
 *@param key, string, key to look for
 *@return bool, true if key exists and deletion succeeded, false otherwise
 */
RCT_REMAP_METHOD(remove,remove:(NSDictionary *)currentInstance withParams:(nonnull NSString *)key withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGDynamicObject::remove, first argument should be an instance of LGDynamicObject", nil);
    }
    LGDynamicObject *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGDynamicObject::remove, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    BOOL objcResult = [currentInstanceObj remove:key];
    NSDictionary *result = @{@"value" : @(objcResult)};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGDynamicObject::remove", nil);
    }

}

/**
 *Get list of keys
 *@return list of string, list all stored keys
 */
RCT_REMAP_METHOD(getKeys,getKeys:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGDynamicObject::getKeys, first argument should be an instance of LGDynamicObject", nil);
    }
    LGDynamicObject *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGDynamicObject::getKeys, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    NSArray<NSString *> * objcResult = [currentInstanceObj getKeys];
    NSDictionary *result = @{@"value" : objcResult};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGDynamicObject::getKeys", nil);
    }

}

/**
 *Get type of object stored with specific key
 *@param key, string, key to look for
 *@return Optional DynamicType enum entry
 */
RCT_REMAP_METHOD(getType,getType:(NSDictionary *)currentInstance withParams:(nonnull NSString *)key withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGDynamicObject::getType, first argument should be an instance of LGDynamicObject", nil);
    }
    LGDynamicObject *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGDynamicObject::getType, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    NSNumber * objcResult = [currentInstanceObj getType:key];
    NSDictionary *result = @{@"value" : objcResult};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGDynamicObject::getType", nil);
    }

}

/**
 *Dump whole object's content as string
 *@return string
 */
RCT_REMAP_METHOD(dump,dump:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGDynamicObject::dump, first argument should be an instance of LGDynamicObject", nil);
    }
    LGDynamicObject *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGDynamicObject::dump, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    NSString * objcResult = [currentInstanceObj dump];
    NSDictionary *result = @{@"value" : objcResult};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGDynamicObject::dump", nil);
    }

}

/**
 *Serialize whole object to a binary
 *@return binary
 */
RCT_REMAP_METHOD(serialize,serialize:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGDynamicObject::serialize, first argument should be an instance of LGDynamicObject", nil);
    }
    LGDynamicObject *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGDynamicObject::serialize, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    NSData * objcResult = [currentInstanceObj serialize];
    NSDictionary *result = @{@"value" : objcResult.description};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGDynamicObject::serialize", nil);
    }

}

/**
 *Get readonly status of object
 *@param bool
 */
RCT_REMAP_METHOD(isReadOnly,isReadOnly:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGDynamicObject::isReadOnly, first argument should be an instance of LGDynamicObject", nil);
    }
    LGDynamicObject *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGDynamicObject::isReadOnly, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    BOOL objcResult = [currentInstanceObj isReadOnly];
    NSDictionary *result = @{@"value" : @(objcResult)};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGDynamicObject::isReadOnly", nil);
    }

}

/**
 *Get count of stored references
 *@return 64 bits integer
 */
RCT_REMAP_METHOD(size,size:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGDynamicObject::size, first argument should be an instance of LGDynamicObject", nil);
    }
    LGDynamicObject *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGDynamicObject::size, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    int64_t objcResult = [currentInstanceObj size];
    NSDictionary *result = @{@"value" : @(objcResult)};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGDynamicObject::size", nil);
    }

}

/**
 *Create a new instance of DynamicObject class
 *@return DynamicObject instance
 */
RCT_REMAP_METHOD(newInstance,newInstanceWithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    LGDynamicObject * objcResult = [LGDynamicObject newInstance];

    NSString *uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGDynamicObject *rctImpl_objcResult = (RCTCoreLGDynamicObject *)[self.bridge moduleForName:@"CoreLGDynamicObject"];
    [rctImpl_objcResult.objcImplementations setObject:objcResult forKey:uuid];
    NSDictionary *result = @{@"type" : @"CoreLGDynamicObject", @"uid" : uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGDynamicObject::newInstance", nil);
    }

}

/**
 *Parse a binary to a DynamicObject
 *@param serialized, binary to parse
 *@return Optional DynamicObject
 */
RCT_REMAP_METHOD(load,loadwithParams:(nonnull NSData *)serialized withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    LGDynamicObject * objcResult = [LGDynamicObject load:serialized];

    NSString *uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGDynamicObject *rctImpl_objcResult = (RCTCoreLGDynamicObject *)[self.bridge moduleForName:@"CoreLGDynamicObject"];
    [rctImpl_objcResult.objcImplementations setObject:objcResult forKey:uuid];
    NSDictionary *result = @{@"type" : @"CoreLGDynamicObject", @"uid" : uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGDynamicObject::load", nil);
    }

}
@end
