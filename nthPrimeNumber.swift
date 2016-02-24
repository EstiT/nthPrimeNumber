//
//  nthPrimeNumber.swift
//
//Deugo, D. "COMP 1601: Introduction to Mobile Application Development" [PDF document].
//Retrieved from: http://people.scs.carleton.ca/~deugo/comp1601/ (Winter 2016).
//
//  Created on 2016-01-20.
//

//displays the nth prime number where n is the parameter
func nthPrimeNumber (n: Int) -> Int {
    var prime: Int
    var divisor: Int
    var isPrime: Bool
    var counter: Int
    counter=0
    for (prime = 2;  prime <= 200;  ++prime )  {
        isPrime = true;
        for (divisor = 2;  divisor < prime;  ++divisor ) {
            if ((prime % divisor) == 0 ) {
                isPrime = false
            }
        }
        if (isPrime == true ) {
            counter=counter+1
            if (counter==n){
                return prime}
        }
    }
return 0
}


let prime = 5
print("the \(prime)th prime number is: ",nthPrimeNumber (prime))