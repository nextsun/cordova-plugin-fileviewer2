//
//  LSFileViewer.h
//  FileViewer
//
//  Created by Lei Sun on 3/21/17.
//
//

#import <Cordova/CDV.h>
#import "LSPreviewController.h"

@interface LSFileViewer2 : CDVPlugin  {
    NSString *localFile;
}

@property(nonatomic, strong) LSPreviewController *previewController;

- (void) open: (CDVInvokedUrlCommand*)command;
- (void) dismiss: (CDVInvokedUrlCommand*)command;
@end
