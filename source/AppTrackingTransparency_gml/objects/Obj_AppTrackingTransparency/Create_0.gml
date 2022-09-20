//Call this code block before of any other extension that collect data

// First we need to make sure we are running under iOS
if(os_type == os_ios)
{
	// This checks if the "Allow Apps to Request to Track" option is enabled
	if(AppTrackingTransparency_available())
	{
		// If the tracking status is NotDetermined (user hasn't been asked yet)
		if(AppTrackingTransparency_status() == AppTrackingTransparency_NotDetermined)
		{
			// Request for tracking application data
			// @triggers Social Async Event
			AppTrackingTransparency_request();
		}
	}
}