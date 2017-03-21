//
//  LSPreviewController.h
//  FileViewer
//
//  Created by Lei Sun on 3/21/17.
//
//

#import <UIKit/UIKit.h>
#import <QuickLook/QuickLook.h>

@interface LSPreviewController : QLPreviewController

- (id)initWithURL:(NSURL *)fileURL;

@end
