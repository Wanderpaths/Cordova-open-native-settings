//
//  NativeSettings.h
//  NativeSettings
//
//  Created by selahssea on 05.12.14.
//  Updated by igobrilhante on 20.01.17.
//
//

#import <Cordova/CDV.h>

@interface NativeSettings : CDVPlugin

- (void)open:(CDVInvokedUrlCommand*)command;
- (void)openLocation:(CDVInvokedUrlCommand*)command;

@end
