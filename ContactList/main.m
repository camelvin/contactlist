//
//  main.m
//  ContactList
//
//  Created by PHOENIXMAC on 2018-07-31.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BOOL menuOn = YES;
        
       
        while (menuOn == YES){
            InputCollector *firstcontact =[[InputCollector alloc]init];
            NSString * output =[firstcontact inputForPrompt:@"The menu: What would you like do next? new - Create a new contact list - List all contacts quit - Exit Application"];
              \
            NSLog(@"%@",output);
            if ([output isEqualToString:@"quit"]) {
                menuOn = NO;
                continue;
            }
            
        }
        
        
        return 0;
    }
}

