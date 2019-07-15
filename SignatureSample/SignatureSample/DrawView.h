//
//  DrawView.h
//  SignatureSample
//
//  Created by Apple on 15/07/19.
//  Copyright © 2019 Karvy. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DrawView : UIView
@property (nonatomic, retain) UIGestureRecognizer *theSwipeGesture;
@property (nonatomic, retain) UIImageView *drawImage;
@property (nonatomic, assign) CGPoint lastPoint;
@property (nonatomic, assign) BOOL mouseSwiped;
@property (nonatomic, assign) NSInteger mouseMoved;

- (void)erase;
- (void)setSignature:(NSData *)theLastData;
- (BOOL)isSignatureWrite;
@end

NS_ASSUME_NONNULL_END
