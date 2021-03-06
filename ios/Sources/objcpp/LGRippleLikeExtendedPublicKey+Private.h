// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from addresses.djinni

#include "RippleLikeExtendedPublicKey.hpp"
#include <memory>

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

@class LGRippleLikeExtendedPublicKey;

namespace djinni_generated {

class RippleLikeExtendedPublicKey
{
public:
    using CppType = std::shared_ptr<::ledger::core::api::RippleLikeExtendedPublicKey>;
    using CppOptType = std::shared_ptr<::ledger::core::api::RippleLikeExtendedPublicKey>;
    using ObjcType = LGRippleLikeExtendedPublicKey*;

    using Boxed = RippleLikeExtendedPublicKey;

    static CppType toCpp(ObjcType objc);
    static ObjcType fromCppOpt(const CppOptType& cpp);
    static ObjcType fromCpp(const CppType& cpp) { return fromCppOpt(cpp); }

private:
    class ObjcProxy;
};

}  // namespace djinni_generated

