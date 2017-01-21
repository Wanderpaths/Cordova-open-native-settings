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
    if (&UIApplicationOpenSettingsURLString != NULL) {
        [self openScheme:UIApplicationOpenSettingsURLString];
    }
}

- (void)openLocation:(CDVInvokedUrlCommand*)command
{
    [self openScheme:@"prefs:root=LOCATION_SERVICES"];
}

@end
