//Javascript Exercise

//1. JavaScript Program To Print Hello World

alert("Hello world");

//2. JavaScript Program to Add Two Numbers

function Myadd() {
     let First = parseInt(document.getElementById("firstnum").value);
     let second = parseInt(document.getElementById("secnum").value);
     document.getElementById("output").value = First + second;
}

//3. JavaScript Program to Find the Square Root

function Value() {
     const a = parseInt(document.getElementById("Value").value);
     document.getElementById("Reval").value = a ** 0.5;
}

//4. JavaScript Program to Swap Two Variables

let Sec1, sec2;

Sec1 = document.getElementById("Valuea");
sec2 = document.getElementById("Valueb");

[Sec1, sec2] = [sec2, Sec1]

function swap1() {
     document.write("first value " + Sec1.value + " second value " + sec2.value);
}

//5. Javascript Program to Convert Celsius to Fahrenheit

let First1 = document.getElementById("Valueaa");

function Fahrenheit2() {
     document.write(" value of Celsius to Fahrenheit " + ((First1.value * 1.8) + 32));
}

//6. Javascript Program to Generate a Random Number

let han = Math.random() * 100;

function Han1() {
     document.write(" Random Number " + han);
}
//7. Javascript Program to Check if a Number is Odd or Even

let add = document.getElementById("odd");


function Odd1() {

     if (add.value % 2 == 0) {
          document.write("Odd")
     }
     else {
          document.write("Even")
     }
}

//8. JavaScript Program to Check Prime Number

function Prime1() {
     let p = parseInt(document.getElementById("Number").value);

     let s = 0

     for (let i = 1; i <= p; i++) {
          if (p % i == 0) {
               s++;
          }
     }
     if (s == 2) {
          console.log(p + " is a prime number");
     }
     else {
          console.log(p + " is not a prime number");
     }
}
//9. JavaScript Program to Find the Factorial of a Number

function Factorial1() {
     let number = parseInt(document.getElementById("Factorial").value);
     let fact = 1;
     for (i = 1; i <= number; i++) {
          fact *= i;
     }
     console.log(fact)
}

//10. JavaScript Program to Print the Fibonacci Sequence
function Fibonacci1() {
     const number = parseInt(document.getElementById("Fibonacci").value);
     let p1 = 0, p2 = 1, Prasanna;

     for (let i = 1; i <= number; i++) {
          console.log(p1);
          Prasanna = p1 + p2;
          p1 = p2;
          p2 = Prasanna;
     }
}

//11. JavaScript Program to Make a Simple Calculator   
function Plus() {
     const val1 = document.getElementById('val1');
     const val2 = document.getElementById('val2');
      
      document.getElementById('val3').value = +val1.value + +val2.value;
    }

    function minus() {
     const val1 = document.getElementById('val1');
     const val2 = document.getElementById('val2');
      document.getElementById('val3').value = +val1.value - +val2.value;
    }

    function div() {
     const val1 = document.getElementById('val1');
     const val2 = document.getElementById('val2');
      document.getElementById('val3').value = +val1.value / +val2.value;
    }

    function mul() {
     const val1 = document.getElementById('val1');
     const val2 = document.getElementById('val2');
      document.getElementById('val3').value = +val1.value * +val2.value;
    }

    function re() {
     const val1 = document.getElementById('val1');
     const val2 = document.getElementById('val2');
      document.getElementById('val3').value = +val1.value % +val2.value;
    }

//whatsapp

