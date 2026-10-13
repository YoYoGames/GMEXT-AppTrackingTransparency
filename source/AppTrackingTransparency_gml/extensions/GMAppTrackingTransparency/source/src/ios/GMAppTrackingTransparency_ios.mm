
#import <AppTrackingTransparency/AppTrackingTransparency.h>
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#include <cstdint>

#import "GMAppTrackingTransparency_ios.h"

namespace
{
    constexpr int32_t kATTUnsupported   = -4;
    constexpr int32_t kATTNotDetermined = 0;
    constexpr int32_t kATTAuthorized    = 1;
    constexpr int32_t kATTDenied        = 2;
    constexpr int32_t kATTRestricted    = 3;

    gm::wire::GMFunction g_requestCallback = nil;

    int32_t NormalizeTrackingStatus(ATTrackingManagerAuthorizationStatus status)
    {
        switch (status)
        {
            case ATTrackingManagerAuthorizationStatusNotDetermined:
                return kATTNotDetermined;

            case ATTrackingManagerAuthorizationStatusAuthorized:
                return kATTAuthorized;

            case ATTrackingManagerAuthorizationStatusDenied:
                return kATTDenied;

            case ATTrackingManagerAuthorizationStatusRestricted:
                return kATTRestricted;
        }

        // Defensive fallback for any future status added by Apple.
        return kATTUnsupported;
    }

    // Apple only presents the ATT prompt while the app is active. Requests made
    // earlier (e.g. during first-launch startup) are dropped, so defer them.
    // Must be called on the main queue.
    void RunWhenAppActive(void (^block)(void))
    {
        if ([UIApplication sharedApplication].applicationState == UIApplicationStateActive)
        {
            block();
            return;
        }

        NSNotificationCenter *center = [NSNotificationCenter defaultCenter];
        __block id observer = [center addObserverForName:UIApplicationDidBecomeActiveNotification
                                                  object:nil
                                                   queue:[NSOperationQueue mainQueue]
                                              usingBlock:^(NSNotification *)
        {
            [center removeObserver:observer];
            observer = nil;
            block();
        }];
    }
}

@implementation GMAppTrackingTransparency

- (bool)AppTrackingTransparency_available
{
    if (@available(iOS 14.0, *))
        return true;

    return false;
}

- (void)AppTrackingTransparency_request:(gm::wire::GMFunction)callback
{
    if (!callback)
        return;

    if (!(@available(iOS 14.0, *)))
    {
        callback.call(kATTUnsupported);
        return;
    }

    g_requestCallback = callback;

    // Apple's authorization prompt is UI work, so always initiate it on the
    // main queue, once the app is active. The callback replaces the old
    // Social Async event.
    dispatch_async(dispatch_get_main_queue(), ^{
        RunWhenAppActive(^{
            [ATTrackingManager requestTrackingAuthorizationWithCompletionHandler:
                ^(ATTrackingManagerAuthorizationStatus status)
            {
                const int32_t normalizedStatus = NormalizeTrackingStatus(status);

                // Keep the GameMaker callback invocation on the main queue too.
                dispatch_async(dispatch_get_main_queue(), ^{
                    if (g_requestCallback)
                    {
                        g_requestCallback.call(normalizedStatus);
                        g_requestCallback = nil;
                    }
                });
            }];
        });
    });
}

- (int32_t)AppTrackingTransparency_status
{
    if (!(@available(iOS 14.0, *)))
        return kATTUnsupported;

    return NormalizeTrackingStatus([ATTrackingManager trackingAuthorizationStatus]);
}

@end
