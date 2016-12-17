###
See http://stackoverflow.com/a/4770179/59160
###

keys = {37: 1, 38: 1, 39: 1, 40: 1}

preventDefault = (e) ->
	console.log e
	e = e || window.event
	e.preventDefault() if e.preventDefault
	e.returnValue = false

preventDefaultForScrollKeys = (e) ->
	if keys[e.keyCode]
		preventDefault(e)
		return false

module.exports =

	disable: ->
		if window.addEventListener # older FF
			window.addEventListener('DOMMouseScroll', preventDefault, false)
		window.onwheel = preventDefault # modern standard
		window.onmousewheel = document.onmousewheel = preventDefault # older browsers, IE
		window.ontouchmove = preventDefault # mobile
		document.onkeydown = preventDefaultForScrollKeys

	enable: ->
		if window.removeEventListener
			window.removeEventListener('DOMMouseScroll', preventDefault, false)
		window.onmousewheel = document.onmousewheel = null
		window.onwheel = null
		window.ontouchmove = null
		document.onkeydown = null
