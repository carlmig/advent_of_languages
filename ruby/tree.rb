puts "Please enter names: \n"
name = gets
names = Array.new
names.push(name.strip)

while name.strip.length > 0
    name = gets

    if(name.strip.length > 0)
        names.push(name.strip)
    end
end

if names.length % 2 != 0
    print "Please an even number of names"
    exit
end

donevalues = Array.new

names.each do |n|
  
    valid = false

  while !valid

    pos = rand(names.length)
    possible_name = names[pos]

    if possible_name != n && !donevalues.include?(pos)
        donevalues.push(pos)
        print n + " - " + names[pos] + "\n"
        valid = true
    end

  end
  
end

