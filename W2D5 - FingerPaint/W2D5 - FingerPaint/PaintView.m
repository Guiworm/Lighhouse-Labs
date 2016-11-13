//
//  PaintView.m
//  W2D5 - FingerPaint
//
//  Created by Dylan McCrindle on 2016-11-11.
//  Copyright © 2016 Dylan McCrindle. All rights reserved.
//

#import "PaintView.h"

@implementation PaintView

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
	if (self = [super initWithCoder:aDecoder]) {
		// add gestures.
		UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(drawMe:)];
		[self addGestureRecognizer:pan];
		_line = [NSMutableArray new];
		_allLines = [NSMutableArray new];
	}
	return self;
}

- (void)drawRect:(CGRect)rect{
	
	CGContextRef context = UIGraphicsGetCurrentContext();
	CGContextSetStrokeColorWithColor(context, self.color.CGColor);
	CGContextSetLineWidth(context, self.lineWidth);
	
	if(self.line.count != 0){
		//for
		CGContextMoveToPoint(context, [self.line[0] CGPointValue].x, [self.line[0] CGPointValue].y);
		
		for(NSValue *item in self.line){
			CGContextAddLineToPoint(context, [item CGPointValue].x, [item CGPointValue].y);
		}
		CGContextStrokePath(context);
	}
}

- (void)drawMe:(UIPanGestureRecognizer *)sender {
	CGPoint point = [sender locationInView: self];
	
	if(sender.state == UIGestureRecognizerStateBegan){
		
	}
	
	if(sender.state == UIGestureRecognizerStateChanged){
		[self.line addObject: [NSValue valueWithCGPoint: point]];
		NSLog(@"%f, %f",point.x, point.y);
		
		[self setNeedsDisplay];
	}
	if(sender.state == UIGestureRecognizerStateEnded){
		[self.allLines addObject: self.line];
		[self.line removeAllObjects];
	}
	
}


@end
