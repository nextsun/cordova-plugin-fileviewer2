//
//  LSFileViewer.m
//  FileViewer
//
//  Created by Lei Sun on 3/21/17.
//
//

#import "LSFileViewer.h"

@implementation LSFileViewer



- (void) open: (CDVInvokedUrlCommand*)command {
    
    NSString *path = command.arguments[0];
    
//    CDVViewController* cont = (CDVViewController*)[ super viewController ];
    
    dispatch_async(dispatch_get_main_queue(), ^{
        // TODO: test if this is a URI or a path
        NSURL *fileURL = [NSURL URLWithString:path];
        
        localFile = fileURL.path;
        
        NSLog(@"looking for file at %@", fileURL);
        NSFileManager *fm = [NSFileManager defaultManager];
        if(![fm fileExistsAtPath:localFile]) {
            NSDictionary *jsonObj = @{@"status" : @"9",
                                      @"message" : @"File does not exist"};
            CDVPluginResult *pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR
                                                          messageAsDictionary:jsonObj];
            [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
            return;
        }
        
        self.previewController = [[LSPreviewController alloc]  initWithURL:fileURL];
        
        
        
        [self.viewController presentViewController:self.previewController animated:YES completion:^{
            
        }];
        
        
        
//        if(wasOpened) {
          CDVPluginResult*   pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString: @""];
//        } else {
//            NSDictionary *jsonObj = @{@"status" : @"9",
//                                      @"message" : @"Could not handle UTI"};
//            pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR
//                                         messageAsDictionary:jsonObj];
//        }
        [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
    });
}

- (void) dismiss: (CDVInvokedUrlCommand*)command
{
    
    if (self.previewController ) {
        [self.previewController dismissViewControllerAnimated:YES completion:^{
            
        }];
    }
    
}

@end
