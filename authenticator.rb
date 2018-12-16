users = [
    { username: "aylin", password: "password1"},
    { username: "jeff", password: "password2"},
    { username: "bruce", password: "password3"},
    { username: "beth", password: "password4"},
    { username: "santa", password: "password5"}
    
]

puts "Welcome to the authenticator"
25.times {print "-"}
puts "This program will take input from the user and compare password"
puts "If password is correct, you will get back the user object."


attempts = 1
while attempts < 4
    print "Username: "
    username = gets.chomp
    print "Password: "
    password =  gets.chomp
    puts "Press n to quit or any other key to continue:"
    input = gets.chomp.downcase
    break if input == "n"
    attempts += 1


end