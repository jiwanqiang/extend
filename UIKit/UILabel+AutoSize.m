//
//  UILabel+AutoSize.m
//
//  Copyright (c) 2014 Wanqiang Ji
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

#import "UILabel+AutoSize.h"

@implementation UILabel (AutoSize)

- (CGSize)sizeToFitConfigure
{
    CGSize size;
    
    NSComparisonResult result = [[[UIDevice currentDevice] systemVersion] compare:@"7"];
    if (result == NSOrderedAscending)
    {
        size = [self.text sizeWithFont:self.font constrainedToSize:CGSizeMake(self.bounds.size.width, MAXFLOAT) lineBreakMode:self.lineBreakMode];
    }
    else
    {
        NSStringDrawingOptions options = NSStringDrawingUsesLineFragmentOrigin;
        NSDictionary *attr = @{NSFontAttributeName: self.font};
        CGRect rect = [self.text boundingRectWithSize:CGSizeMake(self.bounds.size.width, MAXFLOAT) options:options attributes:attr context:nil];
        size = rect.size;
    }
    
    return size;
}

- (CGSize)sizeToFitLimitedConfigure
{
    return [self sizeToFitMaxBoundsLimitedToNumberOfLines:self.numberOfLines];
}

- (CGSize)sizeToFitMaxBoundsLimitedToNumberOfLines:(NSInteger)numberOfLines
{
    CGRect bounds = CGRectMake(0.f, 0.f, self.bounds.size.width, self.bounds.size.height);
    CGRect rect = [self textRectForBounds:bounds limitedToNumberOfLines:numberOfLines];
    return rect.size;
}

@end