//
//  InputCollector.m
//  ContactList
//
//  Created by PHOENIXMAC on 2018-07-31.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector
-(NSString *)inputForPrompt:(NSString *)promptString{
    char someCString[255];
    //printf("The menu: What would you like do next? new - Create a new contact list - List all contacts quit - Exit Application");
    NSLog(@"%@", promptString);
    fgets(someCString, 255 ,stdin);
    NSString *userInput = [NSString stringWithCString:someCString  encoding:NSUTF8StringEncoding];
    NSString *newstring = [userInput stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    return newstring;
}

@end
