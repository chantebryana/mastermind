# Returns an array with
#  element 0: match # and position (number of correct guesses)
#  element 1: match # only (number of correct but misaligned guesses)
def scoreGuess(masterCode,guessCode)
 matchAndPosition = 0
 matchOnly = 0
 masterMatched = [false]*CODE_LENGTH
 guessMatched = [false]*CODE_LENGTH
 
 # Compute the values of the two output parameters here.
 
 # first pass: find exact matches and 'flag' matched elements
 CODE_LENGTH.times{|i|
  if masterCode[i] == guessCode[i]
   
 }
 
 # second pass: find misaligned matches and 'flag' to prevent double counting
 
 return [matchAndPosition,matchOnly]
end