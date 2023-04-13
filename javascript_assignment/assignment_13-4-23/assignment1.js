// Q1. Write a program that declares a variable using var, let, and const and prints the value to the console.
var x = 10
console.log(x)

let y = 20
console.log(y)

const z = 30
console.log(z)

//Q2 Write a program that reassigns a value to a variable declared with let and prints the new value to the console.
let a =10
a=20
console.log(`reassign value of a - ${a}`)

// output - reassign value of a - 20 
// Reason - values can be reassigned by using let but cannot be redeclared

//Q3 Write a program that tries to reassign a value to a variable declared with const and prints the message to the console
const c = 10
c = 100
console.log(c)

//output - TypeError: Assignment to constant variable.
//Reason - We cannot redeclare const variable 

//Q4 Write a program to declare a const, let, var variable within an if statement and try to access the variable outside the if block, what is the result?

if(true){
    var l = 1
    let k = 2
    const m = 3
}
console.log(l)
console.log(k)
console.log(m)

//output - since let and const are blocked scope element those will throw error and var will print the result 1

//Q5 Write a program that concatenates two or more strings and prints the result to the console.
const word1 = 'abc'
const word2 = 'def'

const res = word1+word2

console.log(`concatinated string is ${res}`)

//output - concatinated string is abcdef

//Q6 Write a program that takes a string as input and prints the length of the string to the console
var str_imp = prompt("input a string - ")
console.log(str_imp.length)

//output - input a string - lalala 6

//Q7 Write a program that converts a string to uppercase and prints the result to the console.
let str = 'abc'
let upcasestr = str.toUpperCase()
console.log(upcasestr)

//output - ABC