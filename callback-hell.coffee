get = require "./get"

# Promise.all ["a.txt", "b.txt", "c.txt"].map get 
# .then (result)->
#   console.log result
# .catch (error)->
#   console.log "error", error

for file in [1..5]
  get file
  