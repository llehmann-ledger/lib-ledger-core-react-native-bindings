// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from wallet.djinni

#import "LGKeychain+Private.h"
#import "LGKeychain.h"
#import "DJICppWrapperCache+Private.h"
#import "DJIError.h"
#import "DJIMarshal+Private.h"
#include <exception>
#include <stdexcept>
#include <utility>

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

@interface LGKeychain ()

- (id)initWithCpp:(const std::shared_ptr<::ledger::core::api::Keychain>&)cppRef;

@end

@implementation LGKeychain {
    ::djinni::CppProxyCache::Handle<std::shared_ptr<::ledger::core::api::Keychain>> _cppRefHandle;
}

- (id)initWithCpp:(const std::shared_ptr<::ledger::core::api::Keychain>&)cppRef
{
    if (self = [super init]) {
        _cppRefHandle.assign(cppRef);
    }
    return self;
}

- (BOOL)contains:(nonnull NSString *)address {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->contains(::djinni::String::toCpp(address));
        return ::djinni::Bool::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

namespace djinni_generated {

auto Keychain::toCpp(ObjcType objc) -> CppType
{
    if (!objc) {
        return nullptr;
    }
    return objc->_cppRefHandle.get();
}

auto Keychain::fromCppOpt(const CppOptType& cpp) -> ObjcType
{
    if (!cpp) {
        return nil;
    }
    return ::djinni::get_cpp_proxy<LGKeychain>(cpp);
}

}  // namespace djinni_generated

@end
