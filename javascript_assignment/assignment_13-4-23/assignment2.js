
// [Q.1] If we execute this Javascript, what will the browser's console show?

// var text = 'outside';
// function logIt(){
//     console.log(text);
//     var text = 'inside';
// };
// logIt();

// output - undefined , since the var text is already declared outside the block 
// so when the var is again declared then it is hoisted to the top of block and is 
// declared as undefined



// [Q.2] Write a regular expression  to reverse the first and last name

// [Answer - ]
// let str = "abc def";
// let reversestr = str.replace(/^(\w+)\s+(\w+)$/, "$2 $1");
// console.log(reversestr);

//\s is used to take the first word till space and $ is used to pick the second word
// till the end of string.



// [Q.3] Write a Regular expression to validate email address.
// [Answer -]  
// let email = "abc.def@gola.com";
// let mailregx = /^[a-zA-Z0-9.+%]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{1,}$/;
// console.log(mailregx.test(email));

// [Q.4] 
// Find the Output
// var x = 100;
//    console.log(x);
    
//    function test(){
//        var x = 250;
//        console.log(x);
    
//        if (x > 100) {
//            let x = 350;
//            console.log(x);
//        }
    
//        console.log(x);
//    }
    
//    test();
//    console.log(x);

// output - 
// 100
// 250
// 350
// 250
// 100



// [Q.5] What is the difference of output between these two expressions? Give your reasons for it:
//   a. 12 == “12”
//   b. 12 === “12”
//   c. Number(12) === 12

// [Answer - ]
// a. will return true since == checks the value of the two expressions
// b. will return false since === checks value and also the datatype of the two expressions
//    since the datatype is string and integer hence false.
// c. will return true since both datatype and the value is same.



// [Q.6] What is NaN?


// [Answer - ]
// NaN is not a number if we console 0/0 then it will give NaN since the output is not a number.
// That is the output cannot be shown by any valid number 