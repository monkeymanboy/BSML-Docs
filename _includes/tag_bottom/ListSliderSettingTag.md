# Example Usage
`example.bsml`
```xml
<scrollable-settings-container>
  <list-slider-setting text="Best staff" value="list-choice" choices="list-options" />
</scrollable-settings-container>
```
```csharp
using System.Collections.Generic;
using System.Linq;
using BeatSaberMarkupLanguage.Attributes;
using BeatSaberMarkupLanguage.Parser;

public class ExampleSettingsController : PersistentSingleton<ExampleSettingsController>
{
    [UIValue("list-options")]
    private List<object> options = new object[] { "Reaxt", "Steven", "williums", "Assistant" }.ToList();

    [UIValue("list-choice")]
    private string listChoice = "Steven";

    [UIAction("#apply")]
    public void OnApply() => Logger.log.Info($"list-choice value applied, now: {listChoice}");
}
```
This example shows how you can display a list slider component in the `Mods settings` panel.

![](https://i.imgur.com/euGrsLC.png)