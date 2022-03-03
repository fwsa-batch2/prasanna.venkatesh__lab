// let array = [];

// function submitForm() {
//     event.preventDefault()
//     const userInput = document.getElementById("Input").value;

//     array.push(userInput);

//     const arraystring = JSON.stringify(array);
//     sessionStorage.setItem("Tasks", arraystring);

//     string();
// }

// function string() {
//     const add = sessionStorage.getItem("Tasks");

//     const task = JSON.parse("add");
//     array = task;
//     const len = task.length;

//     let tasks = "";
//     for (let t = 0; t < len; t++) {
//         const createli = "<li class='Li_tag'>" + task[t] + "</li>";
//         tasks = tasks + createli;
//     }

//     const ulTag = document.getElementById("Ul_tag");
//     ulTag.innerHTML = tasks;
// }

// function del() {
//     const Arr = JSON.stringify([]);
//     sessionStorage.setItem("Tasks", Arr);
//     string();
// }

// string();


let array = [];

function submitForm() {
    event.preventDefault()
    const userInput = document.getElementById('Input').value;

    updateTask(userInput);
    getStore();
}

function erras(){
    array.pop(array);
    getStore();
}

function updateTask(userInput){
    array.push(userInput);
    const arrayToString = JSON.stringify(array);
    localStorage.setItem("Tasks", arrayToString);
}

function getStore(){
    let len = array.length;

    let Tasks = "";
    for (let t = 0; t < len; t++) {
        let createli = "<li class='Li_tag'>" + array[t] + "</li>";
        Tasks = Tasks + createli;
    }

    document.querySelector("#Ul_tag").innerHTML = Tasks;
}

function updateitem(){
    const add = localStorage.getItem("Tasks");
    const task = JSON.parse(add);
    array = task;
}

function del(){
    const Arr = JSON.stringify([]);
    localStorage.setItem("Tasks", Arr);
    array = [];
    getStore();
}



updateitem();

getStore();