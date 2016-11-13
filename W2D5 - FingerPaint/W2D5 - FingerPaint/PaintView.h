//
//  PaintView.h
//  W2D5 - FingerPaint
//
//  Created by Dylan McCrindle on 2016-11-11.
//  Copyright © 2016 Dylan McCrindle. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PaintView : UIView

@property UIColor *color;
@property CGFloat lineWidth;
@property NSMutableArray *line;
@property NSMutableArray *allLines;

@end
