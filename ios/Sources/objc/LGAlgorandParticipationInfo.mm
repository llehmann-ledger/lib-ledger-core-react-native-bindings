// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from idl.djinni

#import "LGAlgorandParticipationInfo.h"


@implementation LGAlgorandParticipationInfo

- (nonnull instancetype)initWithRootPublicKey:(nonnull NSString *)rootPublicKey
                                 vrfPublicKey:(nonnull NSString *)vrfPublicKey
                              voteKeyDilution:(nonnull NSString *)voteKeyDilution
                               voteFirstRound:(nonnull NSString *)voteFirstRound
                                voteLastRound:(nonnull NSString *)voteLastRound
{
    if (self = [super init]) {
        _rootPublicKey = [rootPublicKey copy];
        _vrfPublicKey = [vrfPublicKey copy];
        _voteKeyDilution = [voteKeyDilution copy];
        _voteFirstRound = [voteFirstRound copy];
        _voteLastRound = [voteLastRound copy];
    }
    return self;
}

+ (nonnull instancetype)AlgorandParticipationInfoWithRootPublicKey:(nonnull NSString *)rootPublicKey
                                                      vrfPublicKey:(nonnull NSString *)vrfPublicKey
                                                   voteKeyDilution:(nonnull NSString *)voteKeyDilution
                                                    voteFirstRound:(nonnull NSString *)voteFirstRound
                                                     voteLastRound:(nonnull NSString *)voteLastRound
{
    return [[self alloc] initWithRootPublicKey:rootPublicKey
                                  vrfPublicKey:vrfPublicKey
                               voteKeyDilution:voteKeyDilution
                                voteFirstRound:voteFirstRound
                                 voteLastRound:voteLastRound];
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"<%@ %p rootPublicKey:%@ vrfPublicKey:%@ voteKeyDilution:%@ voteFirstRound:%@ voteLastRound:%@>", self.class, (void *)self, self.rootPublicKey, self.vrfPublicKey, self.voteKeyDilution, self.voteFirstRound, self.voteLastRound];
}

@end