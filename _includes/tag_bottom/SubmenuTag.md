# Example Usage
`example.bsml`
```xml
<scrollable-settings-container>
  <settings-submenu text="Secret info" hover-hint="much secret">
    <settings-container>
      <vertical spacing="4" vertical-fit="PreferredSize">
        <horizontal pad-left="5" pad-right="5" horizontal-fit="PreferredSize">
          <text font-size="6" text="Imagine Beat Saber having"/>
        </horizontal>
        <horizontal pad-left="-45" horizontal-fit="PreferredSize">
          <dropdown-list-setting value="list-choice" text="" choices="list-options"></dropdown-list-setting>
        </horizontal>
        <horizontal horizontal-fit="PreferredSize">
          <text font-size="5" text="degrees levels!"/>
        </horizontal>
        <horizontal pad-top="5" horizontal-fit="PreferredSize">
          <button text="Back" click-event="back" />
        </horizontal>
      </vertical>
    </settings-container>
  </settings-submenu>
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
    private List<object> options = new object[] { "360", "90" }.ToList();

    [UIValue("list-choice")]
    private string listChoice = "360";
}
```
This example shows how you can display a submenu and some interactable content in the `Mods settings` panel.

![](https://i.imgur.com/02b8R7Z.png)