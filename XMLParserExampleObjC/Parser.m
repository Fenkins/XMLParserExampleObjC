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
@end
