# Body scroll toggle

Disables scroll-ability of the `body`, like you'd want when a fixed position modal is open, by logging the current scroll position and then making the body position fixed using that scroll offset of the body top.  Thus, the user shouldn't see the body shift position.  Many approaches just `overflow:hidden` on the body, but this does not disable scrolling in iOS.


```coffee
bodyScroll = require 'body-scroll-toggle'
bodyScroll.disable()
bodyScroll.enable()
```

A disadvantage of this approach is that the iOS bottom nav bar will get re-displayed when the scroll is disabled.

## Alternatives

There are JS `event.preventDefault()` based approaches like:

- https://github.com/gilbarbara/disable-scroll
- https://github.com/ultrapasty/jquery-disablescroll

These work but will prevent scrolling of internal elements that have an `overflow:scroll`, which is often the case in mobile navs.

## Contributing

Run `npm version <newversino> && npm publish` to push new builds up.
