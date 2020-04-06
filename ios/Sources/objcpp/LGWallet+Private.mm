// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from wallet.djinni

#import "LGWallet+Private.h"
#import "LGWallet.h"
#import "DJICppWrapperCache+Private.h"
#import "DJIError.h"
#import "DJIMarshal+Private.h"
#import "LGAccountCallback+Private.h"
#import "LGAccountCreationInfo+Private.h"
#import "LGAccountCreationInfoCallback+Private.h"
#import "LGAccountListCallback+Private.h"
#import "LGBitcoinLikeWallet+Private.h"
#import "LGBlockCallback+Private.h"
#import "LGCosmosLikeWallet+Private.h"
#import "LGCurrency+Private.h"
#import "LGDynamicObject+Private.h"
#import "LGErrorCodeCallback+Private.h"
#import "LGEventBus+Private.h"
#import "LGExtendedKeyAccountCreationInfo+Private.h"
#import "LGExtendedKeyAccountCreationInfoCallback+Private.h"
#import "LGI32Callback+Private.h"
#import "LGLogger+Private.h"
#import "LGPreferences+Private.h"
#import "LGStellarLikeWallet+Private.h"
#import "LGWalletType+Private.h"
#include <exception>
#include <stdexcept>
#include <utility>

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

@interface LGWallet ()

- (id)initWithCpp:(const std::shared_ptr<::ledger::core::api::Wallet>&)cppRef;

@end

@implementation LGWallet {
    ::djinni::CppProxyCache::Handle<std::shared_ptr<::ledger::core::api::Wallet>> _cppRefHandle;
}

- (id)initWithCpp:(const std::shared_ptr<::ledger::core::api::Wallet>&)cppRef
{
    if (self = [super init]) {
        _cppRefHandle.assign(cppRef);
    }
    return self;
}

- (nonnull NSString *)getName {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->getName();
        return ::djinni::String::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (void)getAccount:(int32_t)index
          callback:(nullable id<LGAccountCallback>)callback {
    try {
        _cppRefHandle.get()->getAccount(::djinni::I32::toCpp(index),
                                        ::djinni_generated::AccountCallback::toCpp(callback));
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (void)getAccountCount:(nullable id<LGI32Callback>)callback {
    try {
        _cppRefHandle.get()->getAccountCount(::djinni_generated::I32Callback::toCpp(callback));
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (void)getAccounts:(int32_t)offset
              count:(int32_t)count
           callback:(nullable id<LGAccountListCallback>)callback {
    try {
        _cppRefHandle.get()->getAccounts(::djinni::I32::toCpp(offset),
                                         ::djinni::I32::toCpp(count),
                                         ::djinni_generated::AccountListCallback::toCpp(callback));
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (void)getNextAccountIndex:(nullable id<LGI32Callback>)callback {
    try {
        _cppRefHandle.get()->getNextAccountIndex(::djinni_generated::I32Callback::toCpp(callback));
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nullable LGEventBus *)getEventBus {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->getEventBus();
        return ::djinni_generated::EventBus::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (BOOL)isSynchronizing {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->isSynchronizing();
        return ::djinni::Bool::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nullable LGEventBus *)synchronize {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->synchronize();
        return ::djinni_generated::EventBus::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nullable LGPreferences *)getPreferences {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->getPreferences();
        return ::djinni_generated::Preferences::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nullable LGLogger *)getLogger {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->getLogger();
        return ::djinni_generated::Logger::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nullable LGPreferences *)getAccountPreferences:(int32_t)index {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->getAccountPreferences(::djinni::I32::toCpp(index));
        return ::djinni_generated::Preferences::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nullable LGBitcoinLikeWallet *)asBitcoinLikeWallet {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->asBitcoinLikeWallet();
        return ::djinni_generated::BitcoinLikeWallet::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nullable LGCosmosLikeWallet *)asCosmosLikeWallet {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->asCosmosLikeWallet();
        return ::djinni_generated::CosmosLikeWallet::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nonnull LGCurrency *)getCurrency {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->getCurrency();
        return ::djinni_generated::Currency::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (BOOL)isInstanceOfBitcoinLikeWallet {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->isInstanceOfBitcoinLikeWallet();
        return ::djinni::Bool::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (BOOL)isInstanceOfCosmosLikeWallet {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->isInstanceOfCosmosLikeWallet();
        return ::djinni::Bool::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (BOOL)isInstanceOfEthereumLikeWallet {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->isInstanceOfEthereumLikeWallet();
        return ::djinni::Bool::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (BOOL)isInstanceOfRippleLikeWallet {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->isInstanceOfRippleLikeWallet();
        return ::djinni::Bool::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (BOOL)isInstanceOfStellarLikeWallet {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->isInstanceOfStellarLikeWallet();
        return ::djinni::Bool::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nullable LGStellarLikeWallet *)asStellarLikeWallet {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->asStellarLikeWallet();
        return ::djinni_generated::StellarLikeWallet::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (LGWalletType)getWalletType {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->getWalletType();
        return ::djinni::Enum<::ledger::core::api::WalletType, LGWalletType>::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (void)getLastBlock:(nullable id<LGBlockCallback>)callback {
    try {
        _cppRefHandle.get()->getLastBlock(::djinni_generated::BlockCallback::toCpp(callback));
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (void)getAccountCreationInfo:(int32_t)accountIndex
                      callback:(nullable id<LGAccountCreationInfoCallback>)callback {
    try {
        _cppRefHandle.get()->getAccountCreationInfo(::djinni::I32::toCpp(accountIndex),
                                                    ::djinni_generated::AccountCreationInfoCallback::toCpp(callback));
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (void)getExtendedKeyAccountCreationInfo:(int32_t)accountIndex
                                 callback:(nullable id<LGExtendedKeyAccountCreationInfoCallback>)callback {
    try {
        _cppRefHandle.get()->getExtendedKeyAccountCreationInfo(::djinni::I32::toCpp(accountIndex),
                                                               ::djinni_generated::ExtendedKeyAccountCreationInfoCallback::toCpp(callback));
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (void)getNextAccountCreationInfo:(nullable id<LGAccountCreationInfoCallback>)callback {
    try {
        _cppRefHandle.get()->getNextAccountCreationInfo(::djinni_generated::AccountCreationInfoCallback::toCpp(callback));
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (void)getNextExtendedKeyAccountCreationInfo:(nullable id<LGExtendedKeyAccountCreationInfoCallback>)callback {
    try {
        _cppRefHandle.get()->getNextExtendedKeyAccountCreationInfo(::djinni_generated::ExtendedKeyAccountCreationInfoCallback::toCpp(callback));
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (void)newAccountWithInfo:(nonnull LGAccountCreationInfo *)accountCreationInfo
                  callback:(nullable id<LGAccountCallback>)callback {
    try {
        _cppRefHandle.get()->newAccountWithInfo(::djinni_generated::AccountCreationInfo::toCpp(accountCreationInfo),
                                                ::djinni_generated::AccountCallback::toCpp(callback));
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (void)newAccountWithExtendedKeyInfo:(nonnull LGExtendedKeyAccountCreationInfo *)extendedKeyAccountCreationInfo
                             callback:(nullable id<LGAccountCallback>)callback {
    try {
        _cppRefHandle.get()->newAccountWithExtendedKeyInfo(::djinni_generated::ExtendedKeyAccountCreationInfo::toCpp(extendedKeyAccountCreationInfo),
                                                           ::djinni_generated::AccountCallback::toCpp(callback));
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (void)eraseDataSince:(nonnull NSDate *)date
              callback:(nullable id<LGErrorCodeCallback>)callback {
    try {
        _cppRefHandle.get()->eraseDataSince(::djinni::Date::toCpp(date),
                                            ::djinni_generated::ErrorCodeCallback::toCpp(callback));
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nullable LGDynamicObject *)getConfiguration {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->getConfiguration();
        return ::djinni_generated::DynamicObject::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

namespace djinni_generated {

auto Wallet::toCpp(ObjcType objc) -> CppType
{
    if (!objc) {
        return nullptr;
    }
    return objc->_cppRefHandle.get();
}

auto Wallet::fromCppOpt(const CppOptType& cpp) -> ObjcType
{
    if (!cpp) {
        return nil;
    }
    return ::djinni::get_cpp_proxy<LGWallet>(cpp);
}

}  // namespace djinni_generated

@end
