// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from preferences.djinni

#import "LGPreferencesChangeType.h"
#import <Foundation/Foundation.h>

@interface LGPreferencesChange : NSObject
- (nonnull instancetype)initWithType:(LGPreferencesChangeType)type
                                 key:(nonnull NSData *)key
                               value:(nonnull NSData *)value;
+ (nonnull instancetype)PreferencesChangeWithType:(LGPreferencesChangeType)type
                                              key:(nonnull NSData *)key
                                            value:(nonnull NSData *)value;

@property (nonatomic, readonly) LGPreferencesChangeType type;

@property (nonatomic, readonly, nonnull) NSData * key;

@property (nonatomic, readonly, nonnull) NSData * value;

@end
