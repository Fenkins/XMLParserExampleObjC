//
//  Products.h
//  XMLParserExampleObjC
//
//  Created by Fenkins on 28/06/15.
//  Copyright (c) 2015 Fenkins. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Products : NSObject

@property NSString *productName;
@property NSString *productDescription;

-(id) initWithName: (NSString *)Name
       description: (NSString *)Description;

@end
