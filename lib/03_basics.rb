def who_is_bigger a,b,c
    !a || !b || !c ? 'nil detected' : a >= b && a >= c ? 'a is bigger' : b >= a && b >= c ? 'b is bigger' : 'c is bigger'
end

def reverse_upcase_noLTA str
    str.reverse.upcase.delete('LTA')
end

def array_42 arr
    arr.any?(42) ? true : false
end

def magic_array arr
    arr.flatten.sort.map! { |n| n * 2 }.reject { |n| n % 3 == 0 }.uniq.sort
end