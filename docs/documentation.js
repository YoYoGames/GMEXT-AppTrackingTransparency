// FUNCTIONS

/** 
 * @func AppTrackingTransparency_available
 * @desc Checks whether or not the App Tracking Transparency feature is available. This feature was introduced with iOS 14, meaning iOS versions prior to v14 will return `false`, otherwise `true` is returned.
 * @returns {boolean}
 * 
 * @func_end
 */
function AppTrackingTransparency_available() {}


/** 
 * @func AppTrackingTransparency_request
 * @desc The function is a one-time request to authorize or deny access to app-related data that can be used for tracking the user or the device. The system remembers the user’s choice and doesn’t prompt again unless a user uninstalls and then reinstalls the app on the device.
 * 
 * @event social
 * @desc Triggered after the user has given an answer to the authorization prompt. After this you can use ${function.AppTrackingTransparency_status} to check the authorization status.
 * @member {string} type The value `"AppTrackingTransparency"`
 * @event_end
 * 
 * @func_end
 */
function AppTrackingTransparency_request() {}


/** 
 * @func AppTrackingTransparency_status
 * @desc This function returns the current authorization status for your application.
 * @returns {constant.AuthorizationStatus}
 * @func_end
 */
function AppTrackingTransparency_status() {}

// CONSTANTS

/**
 * @const AuthorizationStatus
 * @desc These constants are the status values for app tracking authorization.
 * @member AppTrackingTransparency_NotDetermined The value that returns when the app can’t determine the user’s authorization status for access to app-related data for tracking the user or the device.
 * @member AppTrackingTransparency_Authorized The value that returns if the user authorizes access to app-related data for tracking the user or the device.
 * @member AppTrackingTransparency_Denied The value that returns if the user denies authorization to access app-related data for tracking the user or the device.
 * @member AppTrackingTransparency_Restricted The value that returns if authorization to access app-related data for tracking the user or the device has a restricted status.
 * @const_end
 */

// MODULES

/** 
 * @module home
 * @title Home
 * @desc App Tracking Transparency is a feature introduced in iOS 14 that requires apps to get user permission before tracking their activity across other apps and websites for advertising or data collection purposes. When an app requests to track a user, a pop-up message appears on the screen asking for their consent. Users can choose to either allow or deny tracking for that app. This feature gives users more control over their personal data and privacy while using apps on their Apple devices.
 * 
 * By using this extension, you can request for app tracking permissions that are required to use other extension ie.: AdMob.
 * @section_func
 * @ref AppTrackingTransparency_*
 * @section_end
 * 
 * @section_const
 * @ref AuthorizationStatus
 * @section_end
 * 
 * @module_end
 */
