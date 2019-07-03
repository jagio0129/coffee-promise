# get = (file)->
#   console.log "file: #{file}..."
#   new Promise (resolve)->
#     setTimeout ->
#       console.log "file: #{file} complete"
#       resolve "(#{file})"
#     , 200 + Math.random() * 100

get = (file) ->
  console.log "file: #{file}..."
  new Promise (resolve)->
    if file % 2 == 0
      setTimeout ->
        console.log "file: #{file} complete" , 200 + Math.random() * 1000
        resolve "(#{file})"
    else
      setTimeout ->
        console.log "file: #{file} complete", 1
        resolve "(#{file})"

module.exports = get