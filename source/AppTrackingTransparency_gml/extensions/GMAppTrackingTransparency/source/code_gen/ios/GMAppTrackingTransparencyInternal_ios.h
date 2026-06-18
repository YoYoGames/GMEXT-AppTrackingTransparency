// ##### extgen :: Auto-generated file do not edit!! #####

#pragma once
#import <Foundation/Foundation.h>

#include <cstdint>
#include <string_view>
#include <vector>
#include <array>
#include <optional>
#include "core/GMExtWire.h"

namespace gm_consts
{
}


namespace gm_enums
{
    enum class AppTrackingTransparencyStatus : std::int32_t
    {
        Unsupported = -4,
        NotDetermined = 0,
        Authorized = 1,
        Denied = 2,
        Restricted = 3
    };

}


namespace gm_structs
{

}

namespace gm::wire::codec
{
}

namespace gm::wire::details
{
}

@protocol GMAppTrackingTransparencyInterface <NSObject>
- (bool)AppTrackingTransparency_available;
- (void)AppTrackingTransparency_request:(gm::wire::GMFunction)callback;
- (std::int32_t)AppTrackingTransparency_status;
@end


@interface GMAppTrackingTransparencyInternal : NSObject
- (double)__EXT_NATIVE__AppTrackingTransparency_available;
- (double)__EXT_NATIVE__AppTrackingTransparency_request:(char*)__arg_buffer arg1:(double)__arg_buffer_length;
- (double)__EXT_NATIVE__AppTrackingTransparency_status;
- (double)__EXT_NATIVE__GMAppTrackingTransparency_invocation_handler:(char*)__ret_buffer arg1:(double)__ret_buffer_length;
@end


