const sumMultiples = (multiples, ceiling) => {
    return Array.apply(null, {length: ceiling})
        .map(Number.call, Number)
        .filter((num) => isMultipleOf(num, multiples))
        .reduce((sum, num) => sum + num, 0);
}

const isMultipleOf = (num, multiples) => {
    return multiples.some((multiple) => num % multiple === 0);
}

module.exports = sumMultiples;

console.log(sumMultiples([3,5], 1000));