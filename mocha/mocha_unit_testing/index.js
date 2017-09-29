
function addTwoNumbers(num1, num2){
    return num1 + num2;
}

function fizzBuzzGenerator(num){
    var numbersArray = []

    for (var i = 0; i <= num; i++) {
        if (divisibleBy(i, 3) && divisibleBy(i, 5)){
            numbersArray.push(fizzbuzz());
        } else if (divisibleBy(i, 3)) {
            numbersArray.push(fizz());
        } else if (divisibleBy(i, 5)) {
            numbersArray.push(buzz());
        } else 
        numbersArray.push(i);
    }
    return numbersArray;
}

function divisibleBy(num1, num2){
    if(num1 % num2 == 0)
        return true;
    else 
        return false;
}

function fizz(){
    return "fizz";
}

function buzz(){
    return "buzz";
}

function fizzbuzz(){
    return "fizzbuzz";
}