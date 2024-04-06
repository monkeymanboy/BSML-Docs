# Example Usage
`example.bsml`
```xml
<scrollable-settings-container>
  <slider-setting text="IQ value" min="0" max="220" increment="5" value="iq-value" integer-only="true" />
</scrollable-settings-container>
```
```csharp
using BeatSaberMarkupLanguage.Attributes;
using BeatSaberMarkupLanguage.Parser;

public class ExampleSettingsController : PersistentSingleton<ExampleSettingsController>
{
    [UIValue("iq-value")]
    private int iqValue = 120;

    [UIAction("#apply")]
    public void OnApply() => Logger.log.Info($"iq-value value applied, now: {iqValue}");
}
```
This example shows how you can display a slider component in the `Mods settings` panel.

![](https://i.imgur.com/8B4oDUf.png)