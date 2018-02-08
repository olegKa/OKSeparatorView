//
//  OKSeparatorView.m
//  OKSeparatorView
//
//  Created by OLEG KALININ on 08.02.18.
//

#import "OKSeparatorView.h"

@implementation OKSeparatorView

- (void)applyStyle
{
    UIColor *borderColor = self.backgroundColor;
    self.backgroundColor = [UIColor clearColor];
    self.clipsToBounds = YES;
    
    CALayer *border = [CALayer layer];
    border.backgroundColor = borderColor.CGColor;
    
    if ([_style isEqualToString:@"bottom"])
    {
        border.frame = CGRectMake(0, self.bounds.size.height - 1 / [UIScreen mainScreen].scale, 2000, 1 / [UIScreen mainScreen].scale);
    }
    else if ([_style isEqualToString:@"left"])
    {
        border.frame = CGRectMake(0, 0, 1 / [UIScreen mainScreen].scale, 2000);
    }
    else if ([_style isEqualToString:@"right"])
    {
        border.frame = CGRectMake(self.bounds.size.width - 1 / [UIScreen mainScreen].scale, 0, 1 / [UIScreen mainScreen].scale, 2000);
    }
    else   //default 'top'
    {
        border.frame = CGRectMake(0, 0, 2000, 1 / [UIScreen mainScreen].scale);
    }
    
    [self.layer addSublayer:border];
}

- (void)setStyle:(NSString *)style
{
    _style = style;
    [self applyStyle];
}


@end
