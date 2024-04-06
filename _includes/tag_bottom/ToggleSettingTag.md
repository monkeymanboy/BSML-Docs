# Example Usage
`example.bsml`
```xml
<scrollable-settings-container>
  <toggle-setting text="Cool switch" value="cool-switch"></toggle-setting>
</scrollable-settings-container>
```
```csharp
using BeatSaberMarkupLanguage.Attributes;
using BeatSaberMarkupLanguage.Parser;

public class ExampleSettingsController : PersistentSingleton<ExampleSettingsController>
{
    [UIValue("cool-switch")]
    private bool coolSwitch = true;

    [UIAction("#apply")]
    public void OnApply() => Logger.log.Info($"cool-switch value applied, now: {coolSwitch}");
}
```
This example shows how you can display a boolean component in the `Mods settings` panel.

![](https://i.imgur.com/Mc9eivZ.png)