element = document.getElementsByClassName("sliver")[0]
body = document.body
#slivers = []

#generateMarkup = (i) ->
  #"<div class='sliver' style='left:#{i * 16}px'><div class='text'>Magic Text</div></div>"

width = 320
divisions = 16
i = 0
while i < width / divisions
  #for i in [0...(320/16)]
  #for i in [0...(320/16)]
  #slivers.push generateMarkup i
  clone = element.cloneNode true
  clone.style.left = (i * divisions) + 'px'
  body.appendChild clone
  i++

body.removeChild element
body.style.display = "block"

#document.body.innerHTML = slivers.join ''

# reload the page automatically after 30 seconds
reload = -> window.location.reload()
#setTimeout(reload, 30000)
body.onclick = reload
body.ontouchstart = reload

