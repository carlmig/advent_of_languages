local levels = arg[1]

function get_chars(char_to_print, num)
    local char_seq = {}
    for i=1,num do
        char_seq[#char_seq+1] = char_to_print
    end
    return table.concat( char_seq)
end

local spaces = levels - 1
local asterisks = 1

for i=1,levels do
    print(get_chars(" ", spaces) .. get_chars("*", asterisks))
    asterisks = asterisks + 2
    spaces = spaces - 1
end

print(get_chars(" ", levels -1).."|")
