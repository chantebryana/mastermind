=begin
def run
 startIn = Dir.pwd
 Dir.chdir("C:/Users/Chauncy/Desktop/Chauncy's Secret Codes/Mastermind/mastermind")
 eval(File.read('mastermind.rb'))
 Dir.chdir(startIn)
end
=end

require("./testcode.rb")
require("./scoreGuess.rb")

def codemasterBoard
 puts "Codemaster, type your code: "
end

def codebreakerGuess
 puts "Codebreaker, type your guess: "
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

begin
 puts "enter code 1:"
 firstCode = gets.chomp
end until testcode(firstCode)

begin
 puts "enter code 2:"
 secondCode = gets.chomp
end until testcode(secondCode)

puts scoreGuess(firstCode, secondCode).inspect

#puts testcode(gets.chomp).inspect