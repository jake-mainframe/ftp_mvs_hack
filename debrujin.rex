/* REXX */
/* Simplistic De Brujin pattern generator in REXX                     */
/* SYNTAX: BRUJIN <pattern length>                                    */
parse arg len
/* Alphabets                                                          */
UPPERCASE = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
LOWERCASE = "abcdefghijklmnopqrstuvwxyz"
ALLDIGITS = "1234567890"
x = debrujin(len)
say x
exit
debrujin:
  pattern = ""
  do u=1 to length(UPPERCASE)
    do l=1 to length(LOWERCASE)
      do d=1 to length(ALLDIGITS)
        if length(pattern) < len   then
        do
          ucase = substr(UPPERCASE, u, 1)
          lower = substr(LOWERCASE, l, 1)
          digit = substr(ALLDIGITS, d, 1)
          pattern = pattern || ucase || lower || digit
        end
      end
    end
  end
  return substr(pattern, 1, len)