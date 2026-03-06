export function add(a, b) {
    return Number(a) + Number(b);
}

export function subtract(a, b) {
    return Number(a) - Number(b);
}

export function multiply(a, b) {
    return Number(a) * Number(b);
}

export function divide(a, b) {
    if (b == 0) {
        return 'Cannot divide by zero';
    }
    return Number(a) / Number(b);
}