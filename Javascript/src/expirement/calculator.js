function Cal(x) {
    event.preventDefault();
    let Input1 = document.getElementById("result");
    Input1.value += x;
}

function Add() {
    event.preventDefault();
    let inp = document.getElementById("result").value;

    let num = inp.indexOf("+");
    let num1 = inp.indexOf("-");
    let num2 = inp.indexOf("/");
    let num3 = inp.indexOf("*");

    let Sec = num + 1;
    let Sec1 = num1 + 1;
    let Sec2 = num2 + 1;
    let Sec3 = num3 + 1;

    let Fis = inp.slice(0, num);
    let Fis1 = inp.slice(0, num1);
    let Fis2 = inp.slice(0, num2);
    let Fis3 = inp.slice(0, num3);

    let sec = inp.slice(Sec);
    let sec1 = inp.slice(Sec1);
    let sec2 = inp.slice(Sec2);
    let sec3 = inp.slice(Sec3);

    let sum = parseFloat(Fis) + parseFloat(sec);
    let sum1 = parseFloat(Fis1) - parseFloat(sec1);
    let sum2 = parseFloat(Fis2) / parseFloat(sec2);
    let sum3 = parseFloat(Fis3) * parseFloat(sec3);

    switch (inp[num] != "+" || inp[num] != "-" || inp[num] != "*" || inp[num] != "/") {

        case inp[num] == "+":
            document.getElementById("result").value = sum;
            break;
        case inp[num1] == "-":
            document.getElementById("result").value = sum1;
            break;
        case inp[num2] == "/":
            document.getElementById("result").value = sum2;
            break;
        case inp[num3] == "*":
            document.getElementById("result").value = sum3;
            break;
    }
}
