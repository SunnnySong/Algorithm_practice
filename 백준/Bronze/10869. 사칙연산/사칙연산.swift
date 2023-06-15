let inputNumber = readLine()!.split(separator: " ").map { Int($0) ?? 0 }

func plus(_ num1: Int, _ num2: Int) {
    print(num1 + num2)
}

func minus(_ num1: Int, _ num2: Int) {
    print(num1 - num2)
}

func multiply(_ num1: Int, _ num2: Int) {
    print(num1 * num2)
}

func divideQuotient(_ num1: Int, _ num2: Int) {
    print(num1 / num2)
}

func divideRemainder(_ num1: Int, _ num2: Int) {
    print(num1 % num2)
}

plus(inputNumber[0], inputNumber[1])
minus(inputNumber[0], inputNumber[1])
multiply(inputNumber[0], inputNumber[1])
divideQuotient(inputNumber[0], inputNumber[1])
divideRemainder(inputNumber[0], inputNumber[1])