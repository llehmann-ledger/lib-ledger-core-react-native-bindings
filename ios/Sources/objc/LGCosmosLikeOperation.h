// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from wallet.djinni

#import <Foundation/Foundation.h>
@class LGCosmosLikeMessage;
@class LGCosmosLikeTransaction;


/**Class representing a Cosmos Operation */
@interface LGCosmosLikeOperation : NSObject

/**
 *Get operation's transaction
 *@return CosmosLikeTransaction object
 */
- (nullable LGCosmosLikeTransaction *)getTransaction;

/**
 * Get message which created this operation
 * @return CosmosLikeMessage object
 */
- (nullable LGCosmosLikeMessage *)getMessage;

@end
