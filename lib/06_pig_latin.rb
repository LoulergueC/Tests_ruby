def translate str
    result = []
    str.split.each do |word|
        if word[0] =~ /[aeiouAEIOU]/

            result << word + "ay"

        elsif word[0..2].downcase == "sch"

            result << word[3..word.length] + word[0..2] + "ay"

        elsif word[0..1].downcase == "qu"

            result << word[2..word.length] + word[0..1] + "ay"

        elsif word[0..2].downcase.include?("qu") 

            result << word[3..word.length] + word[0..2] + "ay"

        elsif countConsonants(word[0..2]) == 3

            result << word[3..word.length] + word[0..2] + "ay"

        elsif countConsonants(word[0..1]) == 2

            result << word[2..word.length] + word[0..1] + "ay"

        else
            result << word[1..word.length] + word[0] + "ay"
        end
    end

    return result.join(" ")
end

def countConsonants str
    str.gsub(/[aeiouAEIOU]/i, "").length
end