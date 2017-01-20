//
//  NativeSettings.m
//  NativeSettings
//
//  Created by selahssea on 05.12.14.
//  Updated by igobrilhante on 20.01.17.
//
//

#import "NativeSettings.h"

@implementation NativeSettings

- (void)open:(CDVInvokedUrlCommand*)command
{
        if (&UIApplicationOpenSettingsURLString != NULL) {
            NSURL *appSettings = [NSURL URLWithString:UIApplicationOpenSettingsURLString];
            [[UIApplication sharedApplication] openURL:appSettings];
        }
}

- (void)openLocation:(CDVInvokedUrlCommand*)command
{
    NSURL *locationSettings = [NSURL URLWithString:@"prefs:root=LOCATION_SERVICES"];
    [[UIApplication sharedApplication] openURL:locationSettings];
}

@end
