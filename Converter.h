//
//  Converter.h
//  NumberToBiner
//
//  Created by Giri Putra on 7/8/12.
//  Copyright 2012 Universitas Pendidikan Indonesia. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface Converter : NSObject {
	IBOutlet NSTextField * decimalText;
	IBOutlet NSTextField * binaryText;
}

- (IBAction) ConvertDecimalToBinary: (id) pId;


@end
