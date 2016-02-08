# Homework #4

## Currency
* Currency objects can be created with a currency amount and a three letter currency code. For USD, EUR and JPY, a currency object can also be created with an embedded currency symbol, e.g ¥800.
* Currency objects of the same code can be added and subtracted together using standard operators.
* Currency objects can be checked for equality (checks both amount and currency code).
* A Currency can be multiplied successfully by a Fixnum or Float.

## Currency Converter
* Is initialized with a hash of exchange rates for a given snapshot in time.
* The convert method can be used to convert from a known Currency object to another.

## Currency Trader
* Is initialized with an array of CurrencyConverter objects and a starting currency
* Calculates the ratio of each possible exchange.
* Can advise well on what investment to make, if talking only about two points in time.
* *TO DO* Add algorithm to select most optimal path for more than one trade.
_My goal here was to use recursion to play out every path and choose the most optimal. Then, to backtrack and print out the most optimal set of investments._
