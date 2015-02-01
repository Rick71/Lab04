//
//  DBScore.h
//  Lab04
//
//  Created by Ricardo Vera on 31/01/15.
//  Copyright (c) 2015 Comercomp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <sqlite3.h>
int lastScore;


@interface DBScore : NSObject
{
    NSString *dataBasePath;
}
+(DBScore*)getSharedInstance;
-(BOOL)createDB;
-(BOOL)saveData:(NSString*)registerNumber detail:(NSString*)detail;
// -(NSArray*) findByRegisterNumber:(NSString*)registerNumber;
-(NSArray*) allRecords;
@end
