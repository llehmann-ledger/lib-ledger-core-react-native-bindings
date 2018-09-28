// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from http_client.djinni

#import "RCTCoreLGHttpUrlConnection.h"


@implementation RCTCoreLGHttpUrlConnection
//Export module
RCT_EXPORT_MODULE(RCTCoreLGHttpUrlConnection)

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
        reject(@"impl_call_error", @"Error while calling RCTCoreLGHttpUrlConnection::release, first argument should be an instance of LGHttpUrlConnection", nil);
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
 * Gets the HTTP response status code
 * @return The HTTP response status code
 */
RCT_REMAP_METHOD(getStatusCode,getStatusCode:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGHttpUrlConnection::getStatusCode, first argument should be an instance of LGHttpUrlConnectionImpl", nil);
    }
    LGHttpUrlConnectionImpl *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGHttpUrlConnectionImpl::getStatusCode, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    int32_t objcResult = [currentInstanceObj getStatusCode];
    NSDictionary *result = @{@"value" : @(objcResult)};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGHttpUrlConnectionImpl::getStatusCode", nil);
    }

}

/**
 * Gets the HTTP response status text
 * @return The HTTP response status text
 */
RCT_REMAP_METHOD(getStatusText,getStatusText:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGHttpUrlConnection::getStatusText, first argument should be an instance of LGHttpUrlConnectionImpl", nil);
    }
    LGHttpUrlConnectionImpl *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGHttpUrlConnectionImpl::getStatusText, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    NSString * objcResult = [currentInstanceObj getStatusText];
    NSDictionary *result = @{@"value" : objcResult};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGHttpUrlConnectionImpl::getStatusText", nil);
    }

}

/**
 * Gets the HTTP response headers
 * @return The HTTP response headers
 */
RCT_REMAP_METHOD(getHeaders,getHeaders:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGHttpUrlConnection::getHeaders, first argument should be an instance of LGHttpUrlConnectionImpl", nil);
    }
    LGHttpUrlConnectionImpl *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGHttpUrlConnectionImpl::getHeaders, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    NSDictionary<NSString *, NSString *> * objcResult = [currentInstanceObj getHeaders];
    NSDictionary *result = @{@"value" : objcResult};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGHttpUrlConnectionImpl::getHeaders", nil);
    }

}

/**
 * Reads available HTTP response body. This method will be called multiple times until it returns a empty bytes array.
 * @returns A chunk of the body data wrapped into a HttpReadBodyResult (for error management)
 */
RCT_REMAP_METHOD(readBody,readBody:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGHttpUrlConnection::readBody, first argument should be an instance of LGHttpUrlConnectionImpl", nil);
    }
    LGHttpUrlConnectionImpl *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGHttpUrlConnectionImpl::readBody, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    LGHttpReadBodyResult * objcResult = [currentInstanceObj readBody];

    NSString *uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGHttpReadBodyResult *rctImpl_objcResult = (RCTCoreLGHttpReadBodyResult *)[self.bridge moduleForName:@"CoreLGHttpReadBodyResult"];
    [rctImpl_objcResult.objcImplementations setObject:objcResult forKey:uuid];
    NSDictionary *result = @{@"type" : @"CoreLGHttpReadBodyResult", @"uid" : uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGHttpUrlConnectionImpl::readBody", nil);
    }

}
RCT_REMAP_METHOD(newInstance, newInstanceWithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    LGHttpUrlConnectionImpl *objcResult = [[LGHttpUrlConnectionImpl alloc] init];
    NSString *uuid = [[NSUUID UUID] UUIDString];
    [self.objcImplementations setObject:objcResult forKey:uuid];
    NSDictionary *result = @{@"type" : @"CoreLGHttpUrlConnectionImpl", @"uid" : uuid };
    if (!objcResult || !result)
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGHttpUrlConnectionImpl::init", nil);
    }
    resolve(result);
}
@end