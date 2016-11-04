//
//  NSString+PigLatin.m
//  W1D5 - Pig Latin
//
//  Created by Dylan McCrindle on 2016-11-04.
//  Copyright © 2016 Dylan McCrindle. All rights reserved.
//

#import "NSString+PigLatin.h"

@implementation NSString (PigLatin)

-(NSString *)stringByPigLatinization{
	
	//Variables
	NSString *firstLetters;
	NSCharacterSet *vowels = [NSCharacterSet characterSetWithCharactersInString:@"aeiouAEIOU"];
	NSScanner *scan;
	NSArray *sentence = [self componentsSeparatedByString:@" "];
	NSMutableArray *pigSentence = [NSMutableArray new];
	
	//if it starts with a vowel then just go add -ay to the end
	for(NSString *word in sentence){
		if ([word rangeOfCharacterFromSet:vowels].location == 0) {
			[pigSentence addObject:[word stringByAppendingString:@"ay"]];
		}
		else{
			scan = [NSScanner scannerWithString: word];
			[scan scanUpToCharactersFromSet:vowels intoString: &firstLetters];
			
			[pigSentence addObject:[[[word substringFromIndex: scan.scanLocation] stringByAppendingString: firstLetters] stringByAppendingString:@"ay"]];
		}
	}
	return [pigSentence componentsJoinedByString:@" "];
}

@end
