// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from http_client.djinni

#import "RCTCoreLGHttpRequest.h"


@implementation RCTCoreLGHttpRequest
//Export module
RCT_EXPORT_MODULE(RCTCoreLGHttpRequest)

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

/**
 * Get method of request.
 * @return HttpMethod enum entry
 */
RCT_REMAP_METHOD(getMethod,getMethod:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGHttpRequest::getMethod, first argument should be an instance of LGHttpRequest", nil);
        return;
    }
    LGHttpRequest *currentInstanceObj = nil;
    @synchronized(self)
    {
        currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    }
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGHttpRequest::getMethod, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    LGHttpMethod objcResult = [currentInstanceObj getMethod];
    NSDictionary *result = @{@"value" : @(objcResult)};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGHttpRequest::getMethod", nil);
        return;
    }

}

/**
 * Get headers set in the request.
 * @return Map with key and value of type string
 */
RCT_REMAP_METHOD(getHeaders,getHeaders:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGHttpRequest::getHeaders, first argument should be an instance of LGHttpRequest", nil);
        return;
    }
    LGHttpRequest *currentInstanceObj = nil;
    @synchronized(self)
    {
        currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    }
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGHttpRequest::getHeaders, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    NSDictionary<NSString *, NSString *> * objcResult = [currentInstanceObj getHeaders];
    NSDictionary *result = @{@"value" : objcResult};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGHttpRequest::getHeaders", nil);
        return;
    }

}

/**
 * Get body of request.
 * @return binary
 */
RCT_REMAP_METHOD(getBody,getBody:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGHttpRequest::getBody, first argument should be an instance of LGHttpRequest", nil);
        return;
    }
    LGHttpRequest *currentInstanceObj = nil;
    @synchronized(self)
    {
        currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    }
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGHttpRequest::getBody, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    NSData * objcResult = [currentInstanceObj getBody];
    NSString *objcResultData = [self dataToHexString:objcResult];
    NSDictionary *result = @{@"value" : objcResultData};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGHttpRequest::getBody", nil);
        return;
    }

}

/**
 * Get Url of request.
 * @return string
 */
RCT_REMAP_METHOD(getUrl,getUrl:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGHttpRequest::getUrl, first argument should be an instance of LGHttpRequest", nil);
        return;
    }
    LGHttpRequest *currentInstanceObj = nil;
    @synchronized(self)
    {
        currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    }
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGHttpRequest::getUrl, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    NSString * objcResult = [currentInstanceObj getUrl];
    NSDictionary *result = @{@"value" : objcResult};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGHttpRequest::getUrl", nil);
        return;
    }

}

/**
 * Method called when reauest is completed.
 * @param response, Optional HttpUrlConnection object, response of request if succeed
 * @param error, optional Error structure, error returned in case of request failure
 */
RCT_REMAP_METHOD(complete,complete:(NSDictionary *)currentInstance withParams:(nullable NSDictionary *)response
                                                                        error:(nullable NSDictionary *)error withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGHttpRequest::complete, first argument should be an instance of LGHttpRequest", nil);
        return;
    }
    LGHttpRequest *currentInstanceObj = nil;
    @synchronized(self)
    {
        currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    }
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGHttpRequest::complete, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    RCTCoreLGHttpUrlConnection *rctParam_response = (RCTCoreLGHttpUrlConnection *)[self.bridge moduleForName:@"CoreLGHttpUrlConnection"];
    id<LGHttpUrlConnection>objcParam_0 = (id<LGHttpUrlConnection>)[rctParam_response.objcImplementations objectForKey:response[@"uid"]];
    LGHttpUrlConnectionImpl *objcParam_0_objc = (LGHttpUrlConnectionImpl *)objcParam_0;
    if (objcParam_0_objc)
    {
        objcParam_0_objc.resolve = resolve;
        objcParam_0_objc.reject = reject;
    }
    RCTCoreLGError *rctParam_error = (RCTCoreLGError *)[self.bridge moduleForName:@"CoreLGError"];
    LGError *objcParam_1 = (LGError *)[rctParam_error.objcImplementations objectForKey:error[@"uid"]];
    [currentInstanceObj complete:objcParam_0 error:objcParam_1];

}
@end
