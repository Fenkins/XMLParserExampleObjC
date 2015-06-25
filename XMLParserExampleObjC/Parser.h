//
//  Parser.h
//  XMLParserExampleObjC
//
//  Created by Fenkins on 25/06/15.
//  Copyright (c) 2015 Fenkins. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AppDelegate.h"
#import "List.h"

@interface Parser : NSObject /*need to add that in order to delegate and stuff ->*/ <NSXMLParserDelegate>  {
    AppDelegate *app;
    List *thelist;
    NSMutableString *currentElementValue;
    
}

- (id)initParser;

@end
