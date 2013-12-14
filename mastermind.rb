=begin
def run
 startIn = Dir.pwd
 Dir.chdir("C:/Users/Chauncy/Desktop/Chauncy's Secret Codes/Mastermind/mastermind")
 eval(File.read('mastermind.rb'))
 Dir.chdir(startIn)
end
=end

require("./testcode.rb")

def codemasterBoard
 puts "Codemaster, type your code: "
end

def codebreakerGuess
 puts "Codebreaker, type your guesses: "
end

def codebreakerBoard(board)
 puts codebreakerHeader = "TURN  CODE  SCORE\n====  ====  =====\n      XXXX       \n"
 cBreak = "  "
 c01 = 1
 c02 = "----"
 c03 = "...." #dots temp place-holders
 c01bWidth = c01aSpaces = c02.size
 puts board.map { |i|
  c01cSpaceRemainder = c01bWidth - c01.to_s.size
  c01dFinalString = c01aSpaces = " " * c01cSpaceRemainder + c01.to_s
  rowString = [c01dFinalString,c02,c03].join(cBreak)
  c01 = (c01 + 1)
  rowString + "\n"
 }.join
end

board = [1,2,3,4,5,6,7,8,9,10]

codebreakerBoard(board)
puts codebreakerGuess

#convert codemaster's code into array
#(no number validation yet) 
def codemaster
 codemaster = gets
 codemaster = codemaster.chomp
 codemaster.split("").map{|i|i.to_i}
 #how the hell does this .map/.to work?!
 #why does it turn it into an array?
 #why doesn't it like |x|?
 if codemaster > 0 and codemaster < 7
  puts "awesome"
 else
  puts "suck"
 end
end

=begin
def testcode(secretcode)
 secretcode.split("").each{|i|
  i = i.to_i
  if i < 0 or i > 7
   return "failure!"
  if 
   return "failure!"
 }
 return "success!"
end

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

def testcode(secretcode)
 0.upto(secretcode.length-1){|i|testint = secretcode[i].to_i
  if testint > 0 and testint < 7
   puts secretcode[i] + " awesome"
  else
   puts secretcode[i] + " suck"
  end
 }
end
=end

puts testcode(gets.chomp).inspect