Countries = ["Afghanistan","Albania","Algeria","Andorra","Angola","Argentina","Armenia","Australia","Austria","Azerbaijan","Bahamas","Bahrain","Bangladesh","Barbados","Belarus","Belgium","Belize","Benin","Bermuda","Bhutan","Bolivia","Brazil","Bulgaria","Chile","China","Colombia","Congo","Croatia","Cuba","Cyprus","Denmark","Ecuador","Egypt","Estonia","Ethiopia","Fiji","Finland","France","Gabon","Gambia","Georgia","Germany","Ghana","Gibraltar","Greece","Greenland","Guinea","Guyana","Haiti","Honduras","Hungary","Iceland","India","Indonesia","Iran","Iraq","Ireland","Israel","Italy","Jamaica","Japan","Jersey","Jordan","Kazakhstan","Kenya","Kuwait","Latvia","Lebanon","Liberia","Libya","Liechtenstein","Lithuania","Luxembourg","Macau","Macedonia","Madagascar","Malawi","Malaysia","Maldives","Mali","Malta","Mauritania","Mauritius","Mexico","Moldova","Monaco","Mongolia","Montenegro","Montserrat","Morocco","Mozambique","Namibia","Nepal","Netherlands","Nicaragua","Niger","Nigeria","Norway","Oman","Pakistan","Palestine","Panama","Paraguay","Peru","Philippines","Poland","Portugal","Qatar","Romania","Russia","Rwanda","Samoa","Senegal","Serbia","Singapore","Slovakia","Slovenia","Spain","Sudan","Suriname","Sweden","Switzerland","Syria","Taiwan","Tajikistan","Tanzania","Thailand","Togo","Tonga","Tunisia","Turkey","Turkmenistan","Uganda","Ukraine","Uruguay","Uzbekistan","Venezuela","Vietnam","Yemen","Zambia","Zimbabwe"];
Fruits = ["Apples", "Apricots", "Avocados","Cherries","Elderberry", "Eggfruit","Kiwi","Olive", "Oranges","Papaya","Peach", "Pomegranate", "Pineapple","Tomato", "Tangerine","Zucchini"]
Brands = ["Nike","Amazon","Apple","Netflix","Google","Spotify","Nintendo","Microsoft","Instagram","Tesla","Linkedin","Playstation","Starbucks","Honda","Mercedes","Adobe","Logitech","Adidas"]
q = "q0"

while q != "q6"
    global q
    global word
    global word1
    global found
    global life
    if q == "q0"
        # Print start screen
        life = 6
        println("""
            
        ██   ██   █████   ███    ██   ██████   ███    ███   █████   ███    ██
        ██   ██  ██   ██  ████   ██  ██        ████  ████  ██   ██  ████   ██
        ███████  ███████  ██ ██  ██  ██   ███  ██ ████ ██  ███████  ██ ██  ██
        ██   ██  ██   ██  ██  ██ ██  ██    ██  ██  ██  ██  ██   ██  ██  ██ ██
        ██   ██  ██   ██  ██   ████   ██████   ██      ██  ██   ██  ██   ████                                                                
        """)
        q = "q1"

    elseif q == "q1"
        #Select the category
        category = "0"
        parse(Int64, category)
        while parse(Int64, category) < 1 || 3 < parse(Int64, category)
            println()
            println("Select the category:")
            println("1- Countries")
            println("2- Fruits")
            println("3- Brand Names")
            category = readline()
        end

        #Set Word
        if parse(Int64, category) == 1
            word = Countries[rand(1:length(Countries))]
        elseif parse(Int64, category) == 2
            word = Fruits[rand(1:length(Fruits))]
        elseif parse(Int64, category) == 3
            word = Brands[rand(1:length(Brands))]
        end
        #word1 is the blank word that we will show to the user
        word1 = Array{Char}(undef,length(word))
        for i in 1:length(word1)
            word1[i] = '_'
        end
        #Printing word1
        for i in 1:length(word1)
            print(word1[i]," ")
        end
        q = "q2"

    elseif q == "q2"
        #Guess a Letter
        println()
        found=0
        letter = read(stdin,Char)
        read(stdin,Char)
        read(stdin,Char)
        for i in 1:length(word1)
            if cmp(word[i],letter) == 0 && cmp(word1[i],'_') == 0
                word1[i] = letter
                found = 1
            end
        end
        if found == 0
            life = life - 1
        end
        for i in 1:length(word1)
            print(word1[i]," ")
        end
        println()

        q = "q3"

    elseif q == "q3"
        #Draw Hangman
        println("Remaining lives: ",life)
        if life == 6
            println("    +------------------------------+          \n");
            println("    |                              |          \n");
            println("    |                              |          \n");
            println("    |                                         \n");
            println("    |                                         \n");
            println("    |                                         \n");
            println("    |                                         \n");
            println("    |                                         \n");
            println("    |                                         \n");
            println("    |                                         \n");
            println("    |                                         \n");
            println("    |                                         \n");
            println("    |                                         \n");
            println("    |                                         \n");
            println("    |                                         \n");
            println("    |                                         \n");
            println("    |                                         \n");
            println("    |                                         \n");
            println("    |                                         \n");
            println("    |                                         \n");
            println("    |                                         \n");
            println(" ___|___                                      \n");
        elseif life == 5
            println("    +------------------------------+          \n");
            println("    |                              |          \n");
            println("    |                              |          \n");
            println("    |                          ---------      \n");
            println("    |                          | ^   ^ |      \n");
            println("    |                          |   .   |      \n");
            println("    |                          |  ---  |      \n");
            println("    |                          ---------      \n");
            println("    |                                         \n");
            println("    |                                         \n");
            println("    |                                         \n");
            println("    |                                         \n");
            println("    |                                         \n");
            println("    |                                         \n");
            println("    |                                         \n");
            println("    |                                         \n");
            println("    |                                         \n");
            println("    |                                         \n");
            println("    |                                         \n");
            println("    |                                         \n");
            println("    |                                         \n");
            println(" ___|___                                      \n");
        elseif life ==4
            println("    +------------------------------+          \n");
            println("    |                              |          \n");
            println("    |                              |          \n");
            println("    |                          ---------      \n");
            println("    |                          | ^   ^ |      \n");
            println("    |                          |   .   |      \n");
            println("    |                          |  ---  |      \n");
            println("    |                          ---------      \n");
            println("    |                              |          \n");
            println("    |                              |          \n");
            println("    |                              |          \n");
            println("    |                              |          \n");
            println("    |                              |          \n");
            println("    |                              |          \n");
            println("    |                              |          \n");
            println("    |                              |          \n");
            println("    |                              |          \n");
            println("    |                                         \n");
            println("    |                                         \n");
            println("    |                                         \n");
            println("    |                                         \n");
            println(" ___|___                                      \n");
        elseif life == 3
            println("    +------------------------------+          \n");
            println("    |                              |          \n");
            println("    |                              |          \n");
            println("    |                          ---------      \n");
            println("    |                          | ^   ^ |      \n");
            println("    |                          |   .   |      \n");
            println("    |                          |  ---  |      \n");
            println("    |                          ---------      \n");
            println("    |                              |          \n");
            println("    |                             /|          \n");
            println("    |                            / |          \n");
            println("    |                           /  |          \n");
            println("    |                          /   |          \n");
            println("    |                              |          \n");
            println("    |                              |          \n");
            println("    |                              |          \n");
            println("    |                              |          \n");
            println("    |                                         \n");
            println("    |                                         \n");
            println("    |                                         \n");
            println("    |                                         \n");
        elseif life == 2
            println("    +------------------------------+          \n");
            println("    |                              |          \n");
            println("    |                              |          \n");
            println("    |                          ---------      \n");
            println("    |                          | ^   ^ |      \n");
            println("    |                          |   .   |      \n");
            println("    |                          |  ---  |      \n");
            println("    |                          ---------      \n");
            println("    |                              |          \n");
            println("    |                             /|\\        \n");
            println("    |                            / | \\       \n");
            println("    |                           /  |  \\      \n");
            println("    |                          /   |   \\     \n");
            println("    |                              |          \n");
            println("    |                              |          \n");
            println("    |                              |          \n");
            println("    |                              |          \n");
            println("    |                                         \n");
            println("    |                                         \n");
            println("    |                                         \n");
            println("    |                                         \n");
            println(" ___|___                                      \n");
        elseif life == 1
            println("    +------------------------------+          \n");
            println("    |                              |          \n");
            println("    |                              |          \n");
            println("    |                          ---------      \n");
            println("    |                          | -   - |      \n");
            println("    |                          |   .   |      \n");
            println("    |                          |  (~)  |      \n");
            println("    |                          ---------      \n");
            println("    |                              |          \n");
            println("    |                             /|\\        \n");
            println("    |                            / | \\       \n");
            println("    |                           /  |  \\      \n");
            println("    |                          /   |   \\     \n");
            println("    |                             /           \n");
            println("    |                            /            \n");
            println("    |                           /             \n");
            println("    |                          /              \n");
            println("    |                         /               \n");
            println("    |                                         \n");
            println("    |                                         \n");
            println("    |                                         \n");
            println(" ___|___                                      \n");
        end
        for i in 1:length(word1)
            print(word1[i]," ")
        end
        if life == 0
            q = "q5"
        else
            found = 1
            for i in 1:length(word1)
                if cmp(word1[i],'_') == 0
                    found = 0
                end
            end
            if found == 1
                q = "q4"
            else
                q = "q2"
            end
        end

    elseif q == "q4"
        #Win state
        println("You Won!")
        println("    +------------------------------+          \n");
        println("    |                              |          \n");
        println("    |                              |          \n");
        println("    |                             /-\\        \n");
        println("    |                            /   \\       \n");
        println("    |                           /     \\      \n");
        println("    |                          ---------      \n");
        println("    |           ---------                     \n");
        println("    |      _    | ^   ^ |    _                \n");
        println("    |      |    |   .   |    |                \n");
        println("    |      \\    | [___] |    /               \n");
        println("    |       \\   ---------   /                \n");
        println("    |        \\      |      /                 \n");
        println("    |         \\-----|-----/                  \n");
        println("    |               |                         \n");
        println("    |               |                         \n");
        println("    |               |                         \n");
        println("    |              / \\                       \n");
        println("    |             /   \\                      \n");
        println("    |            /     \\                     \n");
        println("    |           /       \\                    \n");
        println(" ___|___     __/         \\__                 \n");
        println("Word was: ",word)
        q = "q6"
    
    elseif q == "q5"
        #Lose state
        println("You lost")
        println("    +------------------------------+          \n");
        println("    |                              |          \n");
        println("    |                              |          \n");
        println("    |                          ---------      \n");
        println("    |                          | x   x |      \n");
        println("    |                          |   .   |      \n");
        println("    |                          |   O   |      \n");
        println("    |                          ---------      \n");
        println("    |                       -------|-------   \n");
        println("    |                             /|\\        \n");
        println("    |                            / | \\       \n");
        println("    |                           /  |  \\      \n");
        println("    |                          /   |   \\     \n");
        println("    |                             / \\        \n");
        println("    |                            /   \\       \n");
        println("    |                           /     \\      \n");
        println("    |                          /       \\     \n");
        println("    |                         /         \\    \n");
        println("    |                                         \n");
        println("    |                                         \n");
        println("    |                                         \n");
        println(" ___|___                                      \n");
        println("Word was: ",word)
        q = "q6"

    elseif q == "q6"
        #End state
        println("Game Ended!")
    end
end