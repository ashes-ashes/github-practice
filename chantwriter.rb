def chantwriter(string)
    vowels = "aeiouy"
    consonants = "bcdfghjklmnpqrstvwxz"
    chars = string.split(" ").join("").split("")
    chars.map! do |char|
        if vowels.include?(char)
            vowels[(vowels.index(char) + 3) % 6]
        elsif consonants.include?(char)
            consonants[(consonants.index(char) + 10) % 20]
        else
            char
        end
    end
    chars += chars.reverse
    final = ""
    while chars.length > 3
        if chars.length > 10
            rand(2..10).times { final += chars.shift }
        else
            rand(2..chars.length).times { final += chars.shift}
        end
        final += " "
    end
    until chars.length == 0
        final += chars.shift
    end
    puts final
end