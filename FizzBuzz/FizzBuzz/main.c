//
//  main.c
//  FizzBuzz
//
//  Created by Dylan McCrindle on 2016-08-22.
//  Copyright © 2016 Dylan McCrindle. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
	
	//Count from 1 to 100
	for (int i = 1; i <= 100; i++) {
		
		//print FIzzBuzz for both multiple of 3 & 5
		if(((i % 3) == 0) && ((i % 5) == 0)){
			printf("FizzBuzz\n");
		}
		
		//Print Fizz every multiple of 3
		else if((i % 3) == 0){
			printf("Fizz\n");
			
		}
		//Print Buzz every multiple of 5
		else if((i % 5) == 0){
			printf("Buzz\n");
		}
		//Print every other number
		else{
			printf("%d \n",i);
		}
	}
    return 0;
}