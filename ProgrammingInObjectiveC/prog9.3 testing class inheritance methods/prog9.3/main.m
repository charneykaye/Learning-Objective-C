//
//  main.m
//  prog9.3
//
//  Created by Nick Kaye on 4/13/12.
//  Copyright (c) 2012 Outright Mental. All rights reserved.
//

#import "Square.h"

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        // isSubclassOfClass
        printf ( "\n-- isSubclassOfClass --\n");
        
        printf ( "Square class %s a subclass of Rectangle\n",
                [[Square class] isSubclassOfClass:[Rectangle class]]
                ? "is" : "is not");        
        
        printf ( "Rectangle class %s a subclass of NSObject\n",
                [[Rectangle class] isSubclassOfClass:[NSObject class]]
                ? "is" : "is not");        
        
        // isSubclassOfClass
        printf ( "\n-- alloc & init --\n");
        Square *mySquare = [[Square alloc] init];
        printf( "Instantiated Square class\n" );
        
        // isMemberOfClass:
        printf ( "\n-- isMemberOfClass --\n");
        
        printf ( "Square instance %s a member of Square class\n",
                [mySquare isMemberOfClass:[Square class]]
                ? "is" : "is not");
        
        printf ( "Square instance %s a member of Rectangle class\n",
                [mySquare isMemberOfClass:[Rectangle class]]
                ? "is" : "is not");
        
        printf ( "Square instance %s a member of NSObject class\n",
                [mySquare isMemberOfClass:[NSObject class]]
                ? "is" : "is not");
        
        // isKindOfClass:
        printf ( "\n-- isKindOfClass --\n");
        
        printf ( "Square instance %s a kind of Square class\n",
                [mySquare isKindOfClass:[Square class]]
                ? "is" : "is not");
        
        printf ( "Square instance %s a kind of Rectangle class\n",
                [mySquare isKindOfClass:[Rectangle class]]
                ? "is" : "is not");
        
        printf ( "Square instance %s a kind of NSObject class\n",
                [mySquare isKindOfClass:[NSObject class]]
                ? "is" : "is not"); 
        
        // respondsToSelector:
        printf ( "\n-- respondsToSelector --\n");
        
        printf ( "Square instance %s to selector (setSide:)\n",
                [mySquare respondsToSelector:@selector(setSide:)]
                ? "responds" : "does not respond");
        
        printf ( "Square instance %s to selector (setWidth:andHeight:)\n",
                [mySquare respondsToSelector:@selector(setWidth:andHeight:)]
                ? "responds" : "does not respond");
        
        printf ( "Square instance %s to selector (alloc)\n",
                [mySquare respondsToSelector:@selector(alloc)]
                ? "responds" : "does not respond");
        
        printf ( "Square class %s to selector (alloc)\n",
                [[Square class] respondsToSelector:@selector(alloc)]
                ? "responds" : "does not respond");
        
        // instancesRespondToSelector:
        printf ( "\n-- instancesRespondToSelector --\n");
        
        printf ( "Rectangle class instances %s to selector (setSide:)\n",
                [[Rectangle class] instancesRespondToSelector:@selector(setSide:)]
                ? "respond" : "do not respond");
        
        printf ( "Square class instances %s to selector (setSide:)\n\n",
                [[Square class] instancesRespondToSelector:@selector(setSide:)]
                ? "respond" : "do not respond");
        
    }
    return 0;
}

