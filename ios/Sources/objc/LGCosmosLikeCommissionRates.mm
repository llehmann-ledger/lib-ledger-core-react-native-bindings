// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from messages.djinni

#import "LGCosmosLikeCommissionRates.h"


@implementation LGCosmosLikeCommissionRates

- (nonnull instancetype)initWithRate:(nonnull NSString *)rate
                             maxRate:(nonnull NSString *)maxRate
                       maxChangeRate:(nonnull NSString *)maxChangeRate
{
    if (self = [super init]) {
        _rate = [rate copy];
        _maxRate = [maxRate copy];
        _maxChangeRate = [maxChangeRate copy];
    }
    return self;
}

+ (nonnull instancetype)CosmosLikeCommissionRatesWithRate:(nonnull NSString *)rate
                                                  maxRate:(nonnull NSString *)maxRate
                                            maxChangeRate:(nonnull NSString *)maxChangeRate
{
    return [[self alloc] initWithRate:rate
                              maxRate:maxRate
                        maxChangeRate:maxChangeRate];
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"<%@ %p rate:%@ maxRate:%@ maxChangeRate:%@>", self.class, (void *)self, self.rate, self.maxRate, self.maxChangeRate];
}

@end
