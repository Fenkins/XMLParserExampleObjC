//
//  Products.m
//  XMLParserExampleObjC
//
//  Created by Fenkins on 28/06/15.
//  Copyright (c) 2015 Fenkins. All rights reserved.
//

#import "Products.h"

@implementation Products


-(id) initWithName: (NSString *)name
       description: (NSString *)description
             image: (NSString *)image{
    self = [super init];
    if (self) {
        // Getting the info, passed to the init method into the class propertyes
        self.productName = name;
        self.productDescription = description;
        self.productImage = image;

        
        //>>>This crap up there working just fine<<<

    }
    return self;
}

@end
