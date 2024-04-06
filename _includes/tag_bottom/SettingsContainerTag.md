# Example Usage
`example.bsml`
```xml  
<settings-container>
  <!--.. whatever settings components you want inside ..-->
  <bool-setting text="Cool switch" value="cool-switch"></bool-setting>
  <string-setting text="Nice text" value="nice-text"></string-setting>
</settings-container>
```
```csharp
using BeatSaberMarkupLanguage.Attributes;
using BeatSaberMarkupLanguage.Parser;

public class ExampleSettingsController : PersistentSingleton<ExampleSettingsController>
{
    [UIValue("cool-switch")]
    private bool coolSwitch = true;

    [UIValue("nice-text")]
    private string niceText = "Some text";

    [UIAction("#apply")]
    public void OnApply() => Logger.log.Info($"nice-textvalue applied, now: {niceText}");
}
```
This example shows how you can display a generic settings container in the `Mods settings` panel.

![](https://i.imgur.com/LRbTFEB.png)