//
//  LSPreviewController.m
//  FileViewer
//
//  Created by Lei Sun on 3/21/17.
//
//

#import "LSPreviewController.h"

@interface LSPreviewController ()<QLPreviewControllerDataSource,QLPreviewControllerDelegate>




@property(nonatomic,strong)NSURL* fileURL;
@end

@implementation LSPreviewController

- (id)initWithURL:(NSURL *)aFileURL; {
    self = [self init];
    if (self) {
        self.fileURL = aFileURL;
     }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    self.dataSource = self;
    self.delegate = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */
- (NSInteger)numberOfPreviewItemsInPreviewController:(QLPreviewController *)controller{
    return 1;
}

/*!
 * @abstract Returns the item that the preview controller should preview.
 * @param panel The Preview Controller.
 * @param index The index of the item to preview.
 * @result An item conforming to the QLPreviewItem protocol.
 */
- (id <QLPreviewItem>)previewController:(QLPreviewController *)controller previewItemAtIndex:(NSInteger)index{
    return self.fileURL;
}
@end
