# coding4cash.ms@outlook.com

# teamname.zip
#  | [problem1name].txt (SPECIFIC. NAME IT EXACTLY THE SAME)
#  | [problem2name].txt (SPECIFIC. NAME IT EXACTLY THE SAME)
#  | [problem3name].txt (SPECIFIC. NAME IT EXACTLY THE SAME)
#  | [problem4name].txt (SPECIFIC. NAME IT EXACTLY THE SAME)


fs = require 'fs'

toSec = (str) =>
  nums = str.split(':')
  hour = parseInt(nums[0])
  min = parseInt(nums[1])
  sec = parseInt(nums[2])

  {
    hour: hour
    min: min
    sec: sec
  }

hourPos = (time) => (time.hour*3600 + time.min*60 + time.sec)/120
minPos = (time) => (time.min*60 + time.sec)/10
secPos = (time) => time.sec*6

hourToMin = (input) ->
  time = toSec(input)
  ans = hourPos(time) - minPos(time)

  ans = Math.abs(ans)

  if ans > 180 then ans = 360-ans


  ans.toFixed(2)
hourToSec = (input) ->
  time = toSec(input)

  ans = hourPos(time) - secPos(time)

  ans = Math.abs(ans)

  if ans > 180 then ans = 360-ans
  ans.toFixed(2)

minToSec = (input) ->
  time = toSec(input)

  ans = minPos(time) - secPos(time)

  ans = Math.abs(ans)

  if ans > 180 then ans = 360-ans
  ans.toFixed(2)


file = fs.readFileSync process.argv[2]

lineNum = 0

file.toString().split('\n').forEach (line) =>
  if lineNum is 0
    console.log line
  else console.log "#{hourToMin(line)}, #{hourToSec(line)}, #{minToSec(line)}"
  lineNum++
