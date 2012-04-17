//
//  Animal.h
//  prog10.0
//
//  Created by Nick Kaye on 4/16/12.
//  Copyright (c) 2012 Outright Mental. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 *  Animal Interface
 */
@interface Animal : NSObject {
    NSString * _typeName;
    NSString * _name;
}

// Initializer
@property int id;

// name getter returns _name if set, else _typeName
-(NSString *) name;
-(void) setName:(NSString *) s;

// typeName getter returns _typeName if set, else "Animal"
-(NSString *) typeName;
-(void) setTypeName:(NSString *) s;

// Methods
-(void) holler;
-(void) doAction:(NSString*) action;

// Properties
+(int) count;

@end
