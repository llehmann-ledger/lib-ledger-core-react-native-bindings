// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from stellar_like_wallet.djinni

#import "LGStellarLikeOperationRecord.h"
#import <Foundation/Foundation.h>
@class LGStellarLikeTransaction;


@interface LGStellarLikeOperation : NSObject

/** Get the underlying operation information */
- (nonnull LGStellarLikeOperationRecord *)getRecord;

/** Get the underlying transaction in which this operation can be found. */
- (nullable LGStellarLikeTransaction *)getTransaction;

@end
