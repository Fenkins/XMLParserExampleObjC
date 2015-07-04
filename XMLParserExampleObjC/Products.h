//
//  Products.h
//  XMLParserExampleObjC
//
//  Created by Fenkins on 28/06/15.
//  Copyright (c) 2015 Fenkins. All rights reserved.
//
// Helper class with custom initializer
// This one will help us create an object with name and description of the product in ProductsParser

#import <Foundation/Foundation.h>

@interface Products : NSObject

@property NSString *productName;
@property NSString *productDescription;
@property NSString *productImage;

-(id) initWithName: (NSString *)name
       description: (NSString *)description
             image: (NSString *)image;

@end
