//
//  UIImage+ReSize.h
//  
//
//  Created by ma c on 16/1/20.
//  Copyright © 2016年 lu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (ReSize)

- (UIImage *)reSizeImage:(UIImage *)image toSize:(CGSize)reSize;

- (UIImage *)scaleImage:(UIImage *)image toScale:(float)scaleSize;

- (UIImage *)captureView:(UIView *)theView;

@end
