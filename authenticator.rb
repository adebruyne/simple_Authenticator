users = [
    { username: "aylin", password: "password1"},
    { username: "jeff", password: "password2"},
    { username: "bruce", password: "password3"},
    { username: "beth", password: "password4"},
    { username: "santa", password: "password5"}
    
]

#Fuction to authenticate
def auth_user(username, password, user_array)
    user_array.each do |user_record|
        if user_record[:username] == username && user_record[:password] == password
            return user_record
        
        else
            return "Credentials were not correct"
        end
    end

end




puts "Welcome to the authenticator"
25.times {print "-"}
puts "This program will take input from the user and compare password"
puts "If password is correct, you will get back the user object."


attempts = 1
while attempts < 4
    # Get Username and Password from user input
    print "Username: "
    username = gets.chomp
    print "Password: "
    password =  gets.chomp

    # Authenticate User Input 
    authentication = auth_user(username, password, users)
    puts authentication
    
    #Continue
    puts "Press n to quit or any other key to continue:"
    input = gets.chomp.downcase
    break if input == "n"
    attempts += 1


end