
# Scroll container reference in different browsers
# http://stackoverflow.com/a/39657473/59160
scrollContainer = document.scrollingElement || document.documentElement

# The last scrollTop
scrollTop = null
originalStyles = null

# Public API
module.exports =

	# Toggle scrolling
	toggle: -> if scrollTop then disable() else enable()

	# Disable scrolling
	# http://stackoverflow.com/a/3968772/59160
	disable: ->
		scrollTop = scrollContainer.scrollTop
		originalStyles = document.body.style.cssText
		document.body.style.cssText = ';'+"
			overflow: hidden;
			position: fixed;
			height:   100%;
			width:    100%;
			top:      #{-scrollTop}px; "

	# Re-enable scrolling
	enable: ->
		document.body.style.cssText = originalStyles
		scrollContainer.scrollTop = scrollTop
