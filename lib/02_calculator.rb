def add a, b 
    a + b
end

def subtract a, b 
    a - b
end

def sum array 
    array.empty? ? 0 : array.reduce(:+)
end

def multiply a, b 
    a * b
end

def power a, b 
    a ** b
end

def factorial a 
    a > 0 ? (1..a).reduce(:*) : 1
end