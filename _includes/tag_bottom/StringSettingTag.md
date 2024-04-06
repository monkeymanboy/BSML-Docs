# Example Usage
`example.bsml`
```xml
<scrollable-settings-container>
  <string-setting text="Nice text" value="nice-text"></string-setting>
</scrollable-settings-container>
```
```csharp
using BeatSaberMarkupLanguage.Attributes;
using BeatSaberMarkupLanguage.Parser;

public class ExampleSettingsController : PersistentSingleton<ExampleSettingsController>
{
    [UIValue("nice-text")]
    private string niceText = "Some text";

    [UIAction("#apply")]
    public void OnApply() => Logger.log.Info($"nice-text value applied, now: {niceText}");
}
```
This example shows how you can display a string component in the `Mods settings` panel.

![](https://i.imgur.com/nyM6CoF.png)
_screenshot has bug with left rounded edge of string setting, has since been fixed_