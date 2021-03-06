//
//  HHAirPlayButton.h
//
//  Copyright (c) 2013 Wanqiang Ji
//
//  Permission is hereby granted, free of charge, to any person obtaining a
//  copy of this software and associated documentation files (the "Software"),
//  to deal in the Software without restriction, including without limitation
//  the rights to use, copy, modify, merge, publish, distribute, sublicense,
//  and/or sell copies of the Software, and to permit persons to whom the
//  Software is furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
//  FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
//  IN THE SOFTWARE.
//

#import <UIKit/UIKit.h>

@class MPVolumeView;

/**
 *  Airplay button
 */
@interface HHAirPlayButton : UIView
{
  @private
    CGRect _volumeFrame;
    UIButton *_airPlayButton;
}

@property (nonatomic, readonly) BOOL isAirplayActive;

/**
 *  init method
 *
 *  @param frame  the button's frame
 *  @param aImage when the airplay is available, the button display it
 *  @param dImage when the airplay is disabled, the button display it
 *  @param iImage when the airplay is in used, the button display it
 *
 *  @return <#return value description#>
 */
- (HHAirPlayButton *)initWithFrame:(CGRect)frame
                    availableImage:(UIImage *)aImage
                     disabledImage:(UIImage *)dImage
                        inuseImage:(UIImage *)iImage;

@end
