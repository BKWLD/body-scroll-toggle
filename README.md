# Body scroll toggle

Disables scroll-ability of the `body`, like you'd want when a fixed position modal is open, by logging the current scroll position and then making the body position fixed using that scroll offset of the body top.  Thus, the user shouldn't see the body shift position.

```coffee
bodyScroll = require 'body-scroll-toggle'
bodyScroll.disable()
bodyScroll.enable()
```
