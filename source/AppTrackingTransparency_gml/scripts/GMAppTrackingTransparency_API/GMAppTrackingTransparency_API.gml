// ##### extgen :: Auto-generated file do not edit!! #####

// #####################################################################
// # Macros
// #####################################################################

// #####################################################################
// # Enums
// #####################################################################

enum AppTrackingTransparencyStatus
{
    Unsupported = -4,
    NotDetermined = 0,
    Authorized = 1,
    Denied = 2,
    Restricted = 3
}

// #####################################################################
// # Constructors
// #####################################################################

// #####################################################################
// # Codecs
// #####################################################################

// #####################################################################
// # Functions
// #####################################################################

// Skipping function AppTrackingTransparency_available (no wrapper is required)


/**
 * @param {Function} _callback
 */
function AppTrackingTransparency_request(_callback)
{
    static __dispatcher = __GMAppTrackingTransparency_get_dispatcher();

    var __args_buffer = __ext_core_get_args_buffer();

    // param: _callback, type: Function
    if (!is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected callable type", true);
    var _callback_handle = __ext_core_function_register(_callback, __dispatcher);
    buffer_write(__args_buffer, buffer_u64, _callback_handle);

    var _return_value = __AppTrackingTransparency_request(buffer_get_address(__args_buffer), buffer_tell(__args_buffer));

    return _return_value;
}

// Skipping function AppTrackingTransparency_status (no wrapper is required)


/// @ignore
function __GMAppTrackingTransparency_get_decoders()
{
    static __decoders = [];
    return __decoders;
}
/// @ignore
function __GMAppTrackingTransparency_get_dispatcher()
{
    static __dispatcher = new __GMNativeFunctionDispatcher(__GMAppTrackingTransparency_invocation_handler, __GMAppTrackingTransparency_get_decoders());
    return __dispatcher;
}
