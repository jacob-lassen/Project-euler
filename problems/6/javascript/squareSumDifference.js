const squareSumDifference = (n) => {
    const list = Array.from({length: n}).map((item, index) => index);
    const total = list.reduce((total, num) => total + num);
    const squareSum = list.map(square).reduce((total, num) => total + num);
    return squareSum - total;
}

const square = (n) => n * n;

console.log(squareSumDifference(100));