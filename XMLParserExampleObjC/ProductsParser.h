//
//  ProductsParser.h
//  XMLParserExampleObjC
//
//  Created by Fenkins on 28/06/15.
//  Copyright (c) 2015 Fenkins. All rights reserved.
//
// Creating methods and custom initializers to populate productsArray with data

#import <Foundation/Foundation.h>

@interface ProductsParser : NSObject <NSXMLParserDelegate>

@property NSMutableArray *productsArray;

-(id) initWithArray: (NSMutableArray *)productArray;
-(void) parseXMLFile;

@end
