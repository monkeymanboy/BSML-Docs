### Adding page buttons
```xml
<bottom-button-panel>
  <button text="Page Up" tags="PageUpFor:id" />
  <button text="Page Down" tags="PageDownFor:id" />
</bottom-button-panel>
```
Simply by adding a tag of the form PageUpFor:{id} or PageDownFor:{id} to any button, the scroll view with the specified ID will find and manage those buttons. It will mark them intractable as appropriate, and if the scroll content is not large enough to need scrolling, it will disable them. Only the first button with the tag will be chosen for each.

### Adding a scroll indicator
```xml
<scroll-indicator tags="IndicatorFor:id" />
```