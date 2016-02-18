//
//  UIImage+ReSize.m
//  
//
//  Created by ma c on 16/1/20.
//  Copyright © 2016年 lu. All rights reserved.
//

#import "UIImage+ReSize.h"

@implementation UIImage (ReSize)

//- (UIImage *)stretchableImageWithLeftCapWidth:(NSInteger)leftCapWidth topCapHeight:(NSInteger)topCapHeight;
//一般 leftCapWidth = imageWidth *.5f, topCapHeight = imageWidth * .5f;

/**
 *  尺寸改变，自定义图片的长宽
 *
 *  @param image  要变换尺寸的image
 *  @param reSize 传入image要变换的新尺寸
 *
 *  @return 尺寸改变后的image
 */
- (UIImage *)reSizeImage:(UIImage *)image toSize:(CGSize)reSize {
    
    UIGraphicsBeginImageContext(CGSizeMake(reSize.width, reSize.height));
    [image drawInRect:CGRectMake(0, 0, reSize.width, reSize.height)];
    UIImage *reSizeImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return reSizeImage;
}

/**
 *  图片image等比例缩放
 *
 *  @param image     要缩放的image
 *  @param scaleSize 要缩放的比例
 *
 *  @return 缩放后的image
 */
- (UIImage *)scaleImage:(UIImage *)image toScale:(float)scaleSize {
    
    UIGraphicsBeginImageContext(CGSizeMake(image.size.width * scaleSize, image.size.height * scaleSize));
    [image drawInRect:CGRectMake(0, 0, image.size.width * scaleSize, image.size.height * scaleSize)];
    UIImage * scaledImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return scaledImage;
}

/**
 *  处理某个特定View，只要是集成与UIView的object都可以处理，
 *  但必须先#import QuzrtzCore.framework
 */
/**
 *  对于特定UIView的截屏
 *
 *  @param theView 根据当前theView的layer输出一个ImageContext
 *
 *  @return 利用这个ImageContext得到的image
 */
- (UIImage *)captureView:(UIView *)theView {
    
    CGRect rect = theView.frame;
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    [theView.layer renderInContext:context];
    UIImage * image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

























@end
