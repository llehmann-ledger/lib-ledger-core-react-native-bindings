// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from ethereum_like_wallet.djinni

#import "LGError.h"
#import <Foundation/Foundation.h>
@class LGEthereumLikeWallet;


/** A callback called when an Ethereum-like wallet is available after issuing a get command. */
@protocol LGGetEthreumLikeWalletCallback

- (void)onSuccess:(nullable LGEthereumLikeWallet *)wallet
        isCreated:(BOOL)isCreated;

- (void)onError:(nonnull LGError *)error;

@end
