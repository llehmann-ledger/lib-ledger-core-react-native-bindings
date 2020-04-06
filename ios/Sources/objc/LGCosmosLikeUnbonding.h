// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from wallet.djinni

#import <Foundation/Foundation.h>
@class LGCosmosLikeUnbondingEntry;


/** (Pending) Unbonding data */
@interface LGCosmosLikeUnbonding : NSObject

/** Delegator address */
- (nonnull NSString *)getDelegatorAddress;

/** Validator address */
- (nonnull NSString *)getValidatorAddress;

- (nonnull NSArray<LGCosmosLikeUnbondingEntry *> *)getEntries;

@end
