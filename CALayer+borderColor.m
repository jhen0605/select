//
//  CALayer+borderColor.m
//  select
//
//  Created by 簡吟真 on 2021/5/1.
//

#import "CALayer+borderColor.h"
#import <UIKit/UIKit.h>
@implementation CALayer (borderColor)
- (void)setBorderColorWithUIColor:(UIColor *)color
{
 self.borderColor = color.CGColor;
}@end
