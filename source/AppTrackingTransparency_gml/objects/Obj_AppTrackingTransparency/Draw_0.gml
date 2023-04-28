
draw_set_color(c_white)
draw_set_valign(fa_top)
draw_set_font(Font_YoYo_20)

if(os_type == os_ios)
{
	switch(AppTrackingTransparency_status())
	{
		case AppTrackingTransparency_NotDetermined:
			draw_text(X,Y,"The user has not yet received an authorization \n request to authorize access to app-related data that can be \n used for tracking the user or the device.")
		break
	
		case AppTrackingTransparency_Authorized:
			draw_text(X,Y,"The user authorizes access to app-related data that \n can be used for tracking the user or the device.")
		break
	
		case AppTrackingTransparency_Denied:
			draw_text(X,Y,"The user denies authorization to access app-related \n data that can be used for tracking the user or the device.")
		break
	
		case AppTrackingTransparency_Restricted:
			draw_text(X,Y,"The authorization to access app-related data that \n can be used for tracking the user or the device is restricted.")
		break
		
		default://noone
			draw_text(X,Y,"Unavailable in this device")
		break
	}
}
else
{
	draw_text(X,Y,"Feature only available on iOS")
}

