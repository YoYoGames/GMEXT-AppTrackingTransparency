
#import "ext_AppTrackingTransparency.h"

extern "C" void dsMapClear(int _dsMap );
extern "C" int dsMapCreate();
extern "C" void dsMapAddInt(int _dsMap, char* _key, int _value);
extern "C" void dsMapAddDouble(int _dsMap, char* _key, double _value);
extern "C" void dsMapAddString(int _dsMap, char* _key, char* _value);

extern "C" void createSocialAsyncEventWithDSMap(int dsmapindex);

extern UIViewController *g_controller;
extern UIView *g_glView;
extern int g_DeviceWidth;
extern int g_DeviceHeight;

@implementation ext_AppTrackingTransparency

-(double) AppTrackingTransparency_available
{
    if(@available(iOS 14.0, *))
		return 1.0;
	else
		return 0.0;
}
		
-(void) AppTrackingTransparency_request
{
	if(!(@available(iOS 14.0, *)))
		return;
	
	[ATTrackingManager requestTrackingAuthorizationWithCompletionHandler:^(ATTrackingManagerAuthorizationStatus status)
	{
		dispatch_async(dispatch_get_main_queue(), ^{
			int dsMapIndex = dsMapCreate();
			dsMapAddString(dsMapIndex, (char*)"type", (char*)"AppTrackingTransparency");
			dsMapAddDouble(dsMapIndex, (char*)"status", (double)status);
			createSocialAsyncEventWithDSMap(dsMapIndex);
		});
	}];
}

-(double) AppTrackingTransparency_status
{
	if(!(@available(iOS 14.0, *)))
		return -4;
	
	ATTrackingManagerAuthorizationStatus status = [ATTrackingManager trackingAuthorizationStatus];
	switch(status)
	{
		case ATTrackingManagerAuthorizationStatusNotDetermined:
			// The user has not yet received an authorization request to authorize access to app-related data that can be used for tracking the user or the device.
			return 0;
		case ATTrackingManagerAuthorizationStatusAuthorized:
			// The user authorizes access to app-related data that can be used for tracking the user or the device.
			return 1;
		case ATTrackingManagerAuthorizationStatusDenied:
			// The user denies authorization to access app-related data that can be used for tracking the user or the device.
			return 2;
		case ATTrackingManagerAuthorizationStatusRestricted:
			// The authorization to access app-related data that can be used for tracking the user or the device is restricted.
			return 3;
	}		
}

@end
