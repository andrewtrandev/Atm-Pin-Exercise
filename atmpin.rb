# Valid ATM Pin
# ATM machines allow 4 or 6 digit PIN codes and PIN codes 
# cannot contain anything but exactly 4 digits or exactly 6 digits. 
# Your task is to create a method that takes a string and returns true if 
# the PIN is valid and false if it's not.

# E.g. is_valid_PIN("1234"), should return true

# E.g. is_valid_PIN("a234"), should return false

# E.g. is_valid_PIN("123456"), should return true

def is_valid_PIN(pin)
    
    p pin.length
    if pin.length == 4 || pin.length == 6
        p "pin is valid for 4 or 6 chars"
        
        if pin !~ /\D/  #https://stackoverflow.com/questions/39743299/check-if-a-string-contains-only-digits-in-ruby
            return true
        else 
            return false
        end

       
    else
        return false
    end
end

p is_valid_PIN("12a7")

p is_valid_PIN("a123")

#\d digit (0-9)
#\D Not a Digit (0-9)
#\w word character
#\W Not a word character
#\s whitespace (space, tab, newline)
#\S Not whitespace