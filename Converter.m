//
//  Converter.m
//  NumberToBiner
//
//  Created by Giri Putra on 7/8/12.
//  Copyright 2012 Universitas Pendidikan Indonesia. All rights reserved.
//

#import "Converter.h"


@implementation Converter

- (IBAction) ConvertDecimalToBinary: (id) pId{
	NSInteger decimalSource = [decimalText integerValue];
	NSString * binaryAnswer = @"";
	
	if (decimalSource == 0) {
		binaryAnswer = [binaryAnswer stringByAppendingString:@"0"];
	}else{
		while (decimalSource > 0) {
			NSInteger binaryNow = decimalSource%2;
			
			if (decimalSource >= 2) {
				decimalSource = (int)(decimalSource/2);
			}else {
				decimalSource = 0;
			}
			
			if (binaryNow == 1) {
				binaryAnswer = [binaryAnswer stringByAppendingString:@"1"];
			}else {
				binaryAnswer = [binaryAnswer stringByAppendingString:@"0"];
			}
		}
		
	}
	
		
	NSMutableString * reverseAnswer = [NSMutableString string];
	
	NSInteger i;
	for (i=[binaryAnswer length]-1; i >= 0; i--) {
		NSRange subStrRange = NSMakeRange(i, 1);
		[reverseAnswer appendString:[binaryAnswer substringWithRange:subStrRange]];
	}
	
	[binaryText setStringValue:reverseAnswer];
}

@end
