(function() {
  var body, clone, divisions, element, i, reload, width;
  element = document.getElementsByClassName("sliver")[0];
  body = document.body;
  width = 320;
  divisions = 16;
  i = 0;
  while (i < width / divisions) {
    clone = element.cloneNode(true);
    clone.style.left = (i * divisions) + 'px';
    body.appendChild(clone);
    i++;
  }
  body.removeChild(element);
  body.style.display = "block";
  reload = function() {
    return window.location.reload();
  };
  body.onclick = reload;
  body.ontouchstart = reload;
})();
