
fs = require 'fs'
_ = require 'underscore'



# repl =
#   "xx": "e"
#   "x": "a"
#   "U": "you"
#   ")": "'.'"
#   "%": "Zz"
#   "^O^": "n"
#   "(;(": ":"
#   "?": "\ "
#   "\ ": '?'
#   '("': ""
#   "123": "ou"
#   "@": "or"
#   "YZ": "gh"
#   "Rules might not even be used!": "(Like this)."
#   "Not Infinite!": "Not Infinite! Not Infinite!"
#   "Z": "zz"
#   "*^": "ion"
#   "*": "st"
#   "~~": "*"
#   ":-p": "ff"
#   ":-O": "tt"
#   "$$": "I"
#   "$": "i"
#   "zzzzz": "Rules can be pretty complex"
#   "   ": " Spaces! Watch out for them."
#   "&": "x"
#   "*": "Redefining rules can be tricky. you should watch out."
#   '#g': "G"
#   "'#": "\')"
#   'G#': "g"
#   '#': "("
#   ". you": ". You"
#   "aaaa": "ally"
#   "nut": "peanut"



RegExp.quote = (str) ->
     return str.replace(/([.?*+^$[\]\\(){}-])/g, "\\$1")


input = "This is your sample input message. $$t contx$ns xxn123YZ *u((;(-p to let U test y123r solut*^.?U s(h(1(2(3(l(d( (u(s(e( ($(t( (t(o hxxlp y123rsxxlf. Z%, xxspxxc$xaaa whxxn thxxy xrxx lxyerxxd.????Rxxmxxmbxxr:?ZzZ. T$mxx?f@ somxx usxxlxxss #g#xrbxgxx?f@ txxst$ng. #YZosts xttxck xt niYZt!?((#()(#(( $$ l$kxx ^O^ut bu:-Oxxr xnd flu(;(-p. Not Infinite! Are U rxxxdy\? ~~ P(;(-p, th$s one was xxxsy! Nxx&t problxxm m$YZt bxx xxvxxn xxxs$xxr... @ hxrdxxr. $$nput $s over xftxxr th$s! Or is it...   "

file = fs.readFileSync process.argv[2]

done = false

file.toString().split('\r\n').forEach (line) =>

  if _.isEmpty(line) then done = true

  if not done
    spl = line.split('|')

    pre = spl[0]
    aft = spl[1]
    r = new RegExp(RegExp.quote(pre), 'g')
    input = input.replace(r, aft)
    #console.log pre, RegExp.quote(pre)
console.log input

# newstr = input
# _.each repl, (rep) ->
#   newstr = newstr.replace(rep)

# console.log newstr