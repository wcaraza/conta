//
//  DetailViewTextController.m
//  conta
//
//  Created by Walter Caraza Barrera on 14/10/12.
//  Copyright (c) 2012 Walter Caraza Barrera. All rights reserved.
//

#import "DetailViewTextController.h"

@implementation DetailViewTextController

@synthesize textView;

- (void)setTextView:(UITextView *)newTextView
{
	textView = newTextView;
	[self.textView retain];
	[self.contentView addSubview:newTextView];
	[self layoutSubviews];
}

- (void)layoutSubviews
{
	[super layoutSubviews];
	CGRect contentRect = [self.contentView bounds];
	self.textView.frame  = CGRectMake(contentRect.origin.x + 5.0,
									  contentRect.origin.y + 5.0,
									  contentRect.size.width - (5.0*2),
									  contentRect.size.height - (5.0*2));
}

- (void)dealloc
{
    [textView release];
    [super dealloc];
}

@end
