//
//  Parser.m
//  XMLParserExampleObjC
//
//  Created by Fenkins on 25/06/15.
//  Copyright (c) 2015 Fenkins. All rights reserved.
//

#import "Parser.h"

@implementation Parser
- (id) initParser {
    if (self == [super init]) {
        app = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    }
    return self;
}

- (void) parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary *)attributeDict {
    if ([elementName isEqualToString:@"Products"]) {
        app.listArray = [[NSMutableArray alloc] init];
    } else if ([elementName isEqualToString:@"Product"]) {
        thelist = [[List alloc] init];
        thelist.productID = [[attributeDict objectForKey:@"id"]integerValue];
    }
}

- (void) parser:(NSXMLParser *)parser foundCharacters:(NSString *)string {
    if (currentElementValue) {
        currentElementValue = [[NSMutableString alloc] initWithString:string];
    } else {
        [currentElementValue appendString:string];
    }
}

- (void) parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName {
    if ([elementName isEqualToString:@"Prices"]) {
        return;
    } else if ([elementName isEqualToString:@"Price"]) {
        [app.listArray addObject:thelist];
        thelist = nil;
    }
    else {
        [thelist setValue:currentElementValue forKey:elementName];
        currentElementValue = nil;
    }
}

@end
