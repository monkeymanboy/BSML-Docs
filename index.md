---
title: Home
layout: default
---
# Welcome to the BSML Docs!
If you're new to BSML take a look at [Getting Started](Getting Started/Getting Started)

# Patch Notes
## Version 1.3.0
- added `BSMLAutomaticViewController`, an easier to use `ViewController` with hot reloading
- added `clickable-image` component which behaves like `clickable-text` but for Images
### Misc
- gif optimizations
- added `color` property to `image` tag
- added `default-color` and `highlight-color` to `clickable-text`
### Bug Fixes
- fixed checkbox setting not working without a bound UIValue
- fixed errors when using a null host while parsing
## Version 1.2.1 - 1.2.2
- fixed bug where NotifyUpdaters would cause errors if disabled when destroyed
## Version 1.2.0
- updated for Beat Saber 1.8.0
## Version 1.1.5
### Color Components
- added `color-setting` for easily adding color options to your settings
- added `modal-color-picker` which is similar to `modal-keyboard` in usage

### Image Improvements
- animated GIF/APNG support
- aside from resource path, you can now also use file path or a link to an image
- added easy to use `SetImage` extension method for `Image` that includes the above 2 additions

### Misc
- `formatter` now works on `string-setting`

### Bug Fixes
- fixed `slider-setting` rounding issue
- fixed `UIValue` float/double culture issues