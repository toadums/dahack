# coding4cash.ms@outlook.com

# teamname.zip
#  | [problem1name].txt (SPECIFIC. NAME IT EXACTLY THE SAME)
#  | [problem2name].txt (SPECIFIC. NAME IT EXACTLY THE SAME)
#  | [problem3name].txt (SPECIFIC. NAME IT EXACTLY THE SAME)
#  | [problem4name].txt (SPECIFIC. NAME IT EXACTLY THE SAME)


fs = require 'fs'
_ = require 'underscore'

splitWord = (str) =>
  spl = str.split('|')


  word = spl[0]
  num = parseInt(spl[1])

  subs = []

  for i in [0..word.length - 1] by num
    subs.push(word.substr(i, num))

  subs2 = _.clone subs

  subs2.reverse()

  same = false

  if _.isEqual(subs, subs2) then same = true

  "#{word}|#{num}|#{if same is true then '1' else '0' }"


file = fs.readFileSync process.argv[2]

file.toString().split('\n').forEach (line) =>

  console.log splitWord(line)
