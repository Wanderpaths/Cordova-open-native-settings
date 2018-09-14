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

- (void)openScheme:(NSString *)scheme {
    
    UIApplication *application = [UIApplication sharedApplication];
    NSURL *URL = [NSURL URLWithString:scheme];
    
    if ([application respondsToSelector:@selector(openURL:options:completionHandler:)]) {
        [application openURL:URL options:@{} completionHandler:^(BOOL success) {
            NSLog(@"Open %@: %d",scheme,success);
        }];
    } else {
        BOOL success = [application openURL:URL];
        NSLog(@"Open %@: %d",scheme,success);
    }
}

- (void)open:(CDVInvokedUrlCommand*)command
{
    [self openScheme:UIApplicationOpenSettingsURLString];
}

- (void)openLocation:(CDVInvokedUrlCommand*)command
{
    // iOS ISSUE: Your app uses the "prefs:root=" non-public URL scheme, which is a private entity.
    // To resolve this issue, please revise your app to provide the associated 
    // functionality using public APIs or remove the functionality using the "prefs:root" or "App-Prefs:root" URL scheme.

    // if ([[[UIDevice currentDevice] systemVersion] intValue] < 10) {
    //     [self openScheme:@"prefs:root=LOCATION_SERVICES"];
    // } else {
        [self openScheme:UIApplicationOpenSettingsURLString];
    // }
}

@end
