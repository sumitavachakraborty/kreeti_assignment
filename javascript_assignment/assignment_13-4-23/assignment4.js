// [Q.1]
// Given a string “Azad Ram Madiha Yash”. 
// Return a string with the first letter of every word from the string. (Use built in methods).

// [Answer -]
// let str = "Azad Ram Madiha Yash"
// let regx = /\b[A-Z]/g
// console.log(str.match(regx).toString())



// [Q.2]
// Given an array [1, -4, 12, 0, -3, 29, -150]. Calculate the sum of all positive numbers (use built in array methods).

// [Answer -]
// let arry = [1, -4, 12, 0, -3, 29, -150];
// console.log(arry.reduce((a, b) => {
//     if (b > 0) {
//       return a + b;
//     } else {
//       return a;
//     }
// }, 0)); 



// [Q.3] Given an array [1, 2, 3, 4, 5]. Create a new array with the square of each element(use built in array methods).


// [Answer -]

// let arry = [1, 2, 3, 4, 5];
// console.log(arry.map(function (i) {
//     return i * i;
// }));


// [Q.4] 4. Given an array 
//[{ id: 2100, name: 'President Jacqueline' }, { id: 2114, name: 'Vice-president James' }, { id: 3016, name: 'House-captain Otis' },  { id: 4818, name: 'Prefect Finneas' }]. Create an array containing just the id of every individual. 
// (write two solution one using iterator and another using built-in method)

//Built in method
const arry = [{ id: 2100, name: 'President Jacqueline' }, { id: 2114, name: 'Vice-president James' }, { id: 3016, name: 'House-captain Otis' },  { id: 4818, name: 'Prefect Finneas' }];

const i = arry.map(i => i.id);
console.log(i); 

// Output - [2100, 2114, 3016, 4818]

//Iterator

const idd = [];
for (let i = 0; i < arry.length; i++) {
  idd.push(arry[i].id);
}

console.log(idd); 
// Output: [2100, 2114, 3016, 4818]