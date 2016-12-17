###
See http://stackoverflow.com/a/4770179/59160
###

keys = {37: 1, 38: 1, 39: 1, 40: 1}

# List of elements where interactions within children should be ignored
ignored = []

# Prevent interactions as long as the interacted with element is not inside
# the array of parents to ignore
preventDefault = (e) ->
	console.log ignored, e.target
	for el in ignored
		return if el.contains e.target
	e.preventDefault()

preventDefaultForScrollKeys = (e) ->
	if keys[e.keyCode]
		preventDefault(e)
		return false

module.exports =

	disable: (els = []) ->

		# Make sure ignored items are an array
		els = [els] if typeof els != 'array'
		ignored = els

		# Add listeners
		window.addEventListener 'wheel', preventDefault

		# if window.addEventListener # older FF
		# 	window.addEventListener('DOMMouseScroll', preventDefault, false)
		# window.onwheel = preventDefault # modern standard
		# window.onmousewheel = document.onmousewheel = preventDefault # older browsers, IE
		# window.ontouchmove = preventDefault # mobile
		# document.onkeydown = preventDefaultForScrollKeys

	enable: ->



		window.removeEventListener 'wheel', preventDefault

		# if window.removeEventListener
		# 	window.removeEventListener('DOMMouseScroll', preventDefault, false)
		# window.onmousewheel = document.onmousewheel = null
		# window.onwheel = null
		# window.ontouchmove = null
		# document.onkeydown = null
