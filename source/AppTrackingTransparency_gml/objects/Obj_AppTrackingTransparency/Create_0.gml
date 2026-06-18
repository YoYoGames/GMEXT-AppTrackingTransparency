
// Call this before initializing any extension that collects tracking data.

if (os_type == os_ios)
{
    // Check whether App Tracking Transparency is supported.
    if (AppTrackingTransparency_available())
    {
        var _status = AppTrackingTransparency_status();

        // Only request permission when the user has not been asked yet.
        if (_status == AppTrackingTransparencyStatus.NotDetermined)
        {
            AppTrackingTransparency_request(function(_result)
            {
                switch (_result)
                {
                    case AppTrackingTransparencyStatus.NotDetermined:
                        show_debug_message(
                            "AppTrackingTransparency: Not Determined"
                        );
                    break;

                    case AppTrackingTransparencyStatus.Authorized:
                        show_debug_message(
                            "AppTrackingTransparency: Authorized"
                        );

                        // Initialize extensions that collect tracking data here.
                    break;

                    case AppTrackingTransparencyStatus.Denied:
                        show_debug_message(
                            "AppTrackingTransparency: Denied"
                        );

                        // Initialize extensions without tracking here.
                    break;

                    case AppTrackingTransparencyStatus.Restricted:
                        show_debug_message(
                            "AppTrackingTransparency: Restricted"
                        );

                        // Initialize extensions without tracking here.
                    break;

                    case AppTrackingTransparencyStatus.Unsupported:
                        show_debug_message(
                            "AppTrackingTransparency: Unsupported"
                        );
                    break;
                }
            });
        }
        else
        {
            // The user has already made a choice.
            // Handle initialization using the current status.
            switch (_status)
            {
                case AppTrackingTransparencyStatus.Authorized:
                    show_debug_message(
                        "AppTrackingTransparency: Already Authorized"
                    );

                    // Initialize extensions with tracking enabled here.
                break;

                case AppTrackingTransparencyStatus.Denied:
                    show_debug_message(
                        "AppTrackingTransparency: Already Denied"
                    );

                    // Initialize extensions without tracking here.
                break;

                case AppTrackingTransparencyStatus.Restricted:
                    show_debug_message(
                        "AppTrackingTransparency: Restricted"
                    );

                    // Initialize extensions without tracking here.
                break;
            }
        }
    }
    else
    {
        show_debug_message(
            "AppTrackingTransparency: Unavailable on this device"
        );

        // Initialize extensions without tracking here.
    }
}
else
{
    // ATT is only available on iOS.
    // Initialize other platform extensions normally here.
}

