def echo str 
    str
end

def shout str 
    str.upcase
end

def repeat str, times = 2
    str + (" " + str) * (times - 1)
end

def start_of_word str, length
    str[0..length - 1]
end

def first_word str 
    str.split[0]
end

def titleize str 
    n = 0
    str.split.map{ |word| 
        n == 0 ? (n=1 ; word.capitalize) : 
        word == "and" || word == "the" ? word : word.capitalize
    }.join(' ')
end