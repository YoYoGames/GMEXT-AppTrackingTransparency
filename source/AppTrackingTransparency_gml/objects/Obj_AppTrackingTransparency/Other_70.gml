
// Most apps/games don't need this event, feel free of delete/ignore it.

// First we do some early exit checks we want to look for an async event that
// has the "type" key in the 'async_load' map and check if it's value is set
// to "AppTrackingTransparency"
if(!ds_map_exists(async_load,"type")) return;
if(async_load[?"type"] != "AppTrackingTransparency") return;

// Now that we checked past the event type we can now use the
// 'AppTrackingTransparency_status()' functio to retreive the
// current app tracking status. 
switch(AppTrackingTransparency_status())//in theory only 'Authorized' and 'Denied' cases can be called here
{
	case AppTrackingTransparency_NotDetermined:
		// The user has not yet received an authorization request to authorize access to app-related data that can be used for tracking the user or the device.
		show_debug_message("AppTrackingTransparency ASYNC: Not Determined")
	break
	
	case AppTrackingTransparency_Authorized:
		// The user authorizes access to app-related data that can be used for tracking the user or the device.
		show_debug_message("AppTrackingTransparency ASYNC: Authorized")
	break
	
	case AppTrackingTransparency_Denied:
		// The user denies authorization to access app-related data that can be used for tracking the user or the device.
		show_debug_message("AppTrackingTransparency ASYNC: Denied")
	break
	
	case AppTrackingTransparency_Restricted:
		// The authorization to access app-related data that can be used for tracking the user or the device is restricted.
		show_debug_message("AppTrackingTransparency ASYNC: Restricted")
	break
}

