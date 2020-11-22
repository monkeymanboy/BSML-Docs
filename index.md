---
title: Home
layout: default
---
# Welcome to the BSML Docs!
If you're new to BSML take a look at [Getting Started](Getting Started/Getting Started)

# Patch Notes

## Version 1.4.2
- Removed localization option from BSML (this will be handled by a different mod)
- `scroll-view` bug fixes
- Fixed attributes not working on inherited properties

## Version 1.4.1
- Fixed some floating screen bugs
- Added `vertical-icon-segments` tag

## Version 1.4.0
- Updated for version 1.12 of Beat Saber
- Removed some tags (`bottom-button-panel`, `big-button`)
- Added localization option to BSML settings
- Added `primary-button` tag

## Version 1.3.5
- Added `RelativePathToLayout` property to the `HotReload` attribute
- Fixed false positive fpfc bug with floating screens
- Made mod button menu scroll when there are enough buttons
- daily reminder to add bsipa to your dependencies

## Version 1.3.4
- Bug fixes

## Version 1.3.3

### Formattable Text
- The `text` tag now creates `FormattableText` where you can pass any type of object in the `data` property and have it be formatted either by a given `data-format` using any `data-formatter` or the object being `IFormattable`

### Misc
- Can now use refer to fields, properties, and methods directly without UIValue or UIAction. You can change how this is handled with the `HostOptions` attribute.
- `interactable` moved to Selectable handler
- Added `GenericInteractableSetting` for settings that have an interactable property
- Settings can now make use of property binding with the new `bind-value` property
- `text-page` can now use all text options

## Version 1.3.2

### Fonts
- Can now load system fonts as TMPro fonts
- Loads some fallback fonts on startup for base game font

### Scrolly things
- Added generic `scroll-view` (no more using `scrollable-settings-container` everywhere!)
- Added `scrollable-container` which is a barebones scrollable container intended to be used with a tagged `scroll-indicator` and or buttons

### Misc
- Added `data` parameter similar to the one for `custom-list` to `list`
- Added `characteristicSprites` to CustomCellInfo
- Made default resource path for `BSMLAutomaticViewController` first check if it exists with no extension in case `DependentUpon` is being used on that embedded resource

### Bug Fixes
- Fixed `BSMLAutomaticViewController` parsing every time it's opened when not being hot reloaded
- Fixed bug where gifs/apngs with a delay longer than 1 second wouldn't look right
- Fixed private properties not working as a `UIValue`

## Version 1.3.1
- change image's `color` to `image-color`

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