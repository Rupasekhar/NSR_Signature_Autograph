//
//  ViewController.m
//  SignatureSample
//
//  Created by Apple on 15/07/19.
//  Copyright © 2019 Karvy. All rights reserved.
//

#import "ViewController.h"
#import "DrawView.h"

@interface ViewController ()
{
    
}
@property (strong, nonatomic) IBOutlet DrawView *drawSignView;

@end

@implementation ViewController
@synthesize drawSignView;

- (void)viewDidLoad {
    [super viewDidLoad];
    drawSignView.layer.cornerRadius = 5.0;
    drawSignView.layer.borderColor = [[UIColor darkGrayColor] CGColor];
    drawSignView.layer.borderWidth = 2.0;
    drawSignView.clipsToBounds = YES;
    
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)actionSave:(id)sender
{
    // code for save the signature to gallery
    UIGraphicsBeginImageContext(self.drawSignView.bounds.size);
    [[self.drawSignView.layer presentationLayer] renderInContext:UIGraphicsGetCurrentContext()];
    UIImage *viewImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    UIImageWriteToSavedPhotosAlbum(viewImage, nil, nil, nil);

}


- (IBAction)actionClear:(id)sender
{
    //code for clear the signature
    [self.drawSignView erase];
}

@end
