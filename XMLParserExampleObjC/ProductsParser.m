//
//  ProductsParser.m
//  XMLParserExampleObjC
//
//  Created by Fenkins on 28/06/15.
//  Copyright (c) 2015 Fenkins. All rights reserved.
//

#import "ProductsParser.h"
#import "Products.h"


// This will create private properties, this called interface extension
@interface ProductsParser()

@property NSXMLParser *parser;
@property NSString *element;
// Product properties below, temporaty stuff
@property NSString *currentProductName;
@property NSString *currentProductDescription;

@end

@implementation ProductsParser

-(id) initWithArray:(NSMutableArray *)productArray {
    self = [super init];
     if (self) {
         self.productsArray = productArray;
     }
     return self;
}

-(void) parseXMLFile {
    NSURL *xmlPath = [[NSBundle mainBundle] URLForResource:@"productsList" withExtension:@"xml"];
    self.parser = [[NSXMLParser alloc] initWithContentsOfURL:xmlPath];

    // Dont forget to add <NSXMLParserDelegate> protocol in the .h file to get rid of the warning
    self.parser.delegate = self;
}

- (void)parser:(NSXMLParser *)parser
didStartElement:(NSString *)elementName
  namespaceURI:(NSString *)namespaceURI
 qualifiedName:(NSString *)qualifiedName
    attributes:(NSDictionary *)attributeDict {
    self.element = elementName;
}

- (void)parser:(NSXMLParser *)parser
foundCharacters:(NSString *)string {
    if ([self.element isEqualToString:@"Name"]) {
        // string is a returned string that is just being analized
        self.currentProductName = string;
    }
    if ([self.element isEqualToString:@"Description"]) {
        self.currentProductDescription = string;
    }
}

@end
