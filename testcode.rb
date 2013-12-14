# Until we have a way to get alternate lengths from the user, assume length 4
CODE_LENGTH = 4
# Untel we are getting number of code symbols from the user, assume 6
MAX_CODE_SYMBOL = 6

def validateLength(sc)
 return sc.length == CODE_LENGTH
end

# Return true if all character are numbers between 1 and MAX_CODE_SYMBOL
# Return false otherwise
def validateMembers(sc)
 sc.split("").map{|i|i.to_i}.each{|i|return false if i < 1 or i > MAX_CODE_SYMBOL}
 return true
end

def testcode(sc)
 return false unless validateLength(sc)
 return false unless validateMembers(sc)
 return true
end