
draw_set_color(c_white);
draw_set_valign(fa_top);
draw_set_font(Font_YoYo_20);

if (os_type == os_ios)
{
    switch (AppTrackingTransparency_status())
    {
        case AppTrackingTransparencyStatus.NotDetermined:
            draw_text(
                x,
                y,
                "The user has not yet received an authorization request\n"
                + "to allow access to app-related data that may be used\n"
                + "for tracking the user or the device."
            );
        break;

        case AppTrackingTransparencyStatus.Authorized:
            draw_text(
                x,
                y,
                "The user authorizes access to app-related data that\n"
                + "may be used for tracking the user or the device."
            );
        break;

        case AppTrackingTransparencyStatus.Denied:
            draw_text(
                x,
                y,
                "The user denies authorization to access app-related\n"
                + "data that may be used for tracking."
            );
        break;

        case AppTrackingTransparencyStatus.Restricted:
            draw_text(
                x,
                y,
                "Authorization to access app-related tracking data\n"
                + "is restricted on this device."
            );
        break;

        case AppTrackingTransparencyStatus.Unsupported:
        default:
            draw_text(
                x,
                y,
                "App Tracking Transparency is unavailable on this device."
            );
        break;
    }
}
else
{
    draw_text(
        x,
        y,
        "App Tracking Transparency is only available on iOS."
    );
}

