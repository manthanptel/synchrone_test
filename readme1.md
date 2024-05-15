## Python Test 1

Write a function:

``def solution (N)``

which, given an integer N, returns the smallest integer that is greater than N and the sum of whose digits is equal to the sum of the digits of N.
Examples:

1. Given N = 28, your function should return 37. The sum of the digits of 28 is equal to 2 + 8 = 10. The subsequent numbers are (with the sum of their digits in brackets): 29 (11), 30 (3), 31 (4), 32 (5), 33 (6), 34 (7), 35 (8), 36 (9) and 37 (10). 37 is the smallest number bigger than 28 whose digits add up to 10.

2. Given N = 734, your function should return 743. The sum of the digits of 734 and 743 are equal 7 + 3 + 4 = 7 + 4 + 3 = 14. No other integer between 735 and 742 adds up to 14.
   
3. Given N = 1990, your function should return 2089. The sum of the digits of both numbers is equal to 19 and there is no other integer between them with the same sum of digits.
   
4. Given N = 1000, your function should return 10000. The sum of the digits of both numbers is equal to 1 and there is no other integer between them with the same sum of digits.
 
Assume that:
N is an integer within the range [1..50,000].
In your solution, focus on correctness. The performance of your solution will not be the focus of the assessment.


## Python Test 2

You are given an array of integers. Your task is to create pairs of them, such that every pair consists of equal numbers. Each array element may belong to one pair only. Is it possible to use all of the integers?
Write a function:


``def solution (A)``

that, given an array A consisting of N integers, returns whether it is possible to split all integers into pairs.
Examples:

1. Given A = [1, 2, 2, 1], your function should return True, as the pairs are (A[0], A[3]) (both have value 1) and (A[1], A[2]) (both have value 2).
   
2. Given A = [7, 7, 7], your function should return False, as you can make one pair of numbers 7, but you still have a single 7 left.
   
3. Given A = [1, 2, 2, 3], your function should return False, as there's nothing that A[0] can be paired with.
   
Write an efficient algorithm for the following assumptions:
·
N is an integer within the range [1..100,000];
• each element of array A is an integer within the range
[-1,000,000..1,000,000].


## Python Test 3

Write a function:

``def solution (A)``

that, given an array A of N integers, returns ``True`` if A contains at least two elements which differ by 1, and ``False`` otherwise.

Examples:
1. Given A = [7], the function should return ``False`` .
   
2. Given A = [4, 3], the function should return ``True`` .
   
3. Given A = [11, 1, 8, 12, 14], the function should return ``True`` . Pair of elements which differ by 1 is (11, 12).
   
4. Given A = [4, 10, 8, 5, 9], the function should return ``True`` . Pairs of elements which differ by 1 are (4, 5), (10, 9) and (8, 9).
   
5. Given A = [5, 5, 5, 5, 5], the function should return ``False`` . There are no two elements in A whose values differ by 1.

Write an efficient algorithm for the following assumptions:


N is an integer within the range [1..100,000];

each element of array A is an integer within the range [1..1,000,000,000].

