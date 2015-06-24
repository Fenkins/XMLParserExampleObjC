//
//  List.h
//  XMLParserExampleObjC
//
//  Created by Fenkins on 24/06/15.
//  Copyright (c) 2015 Fenkins. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface List : NSObject

@property (nonatomic, retain) NSString *name;
@property (nonatomic, retain) NSString *description;
@property (nonatomic, readwrite) NSInteger productID;

@end
