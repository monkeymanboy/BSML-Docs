# Example Usage
`example.bsml`
```xml
<vertical child-control-height="false">
  <horizontal bg="panel-top" pad-left="15" pad-right="15" horizontal-fit="PreferredSize">
    <text text="Grid" align="Center" font-size="8"/>
  </horizontal>
  <horizontal horizontal-fit="PreferredSize">
    <grid cell-size="36 9" spacing="2 2" align="Center">
      <macro.for-each items="buttons">
        <button id="menu-button" pref-width="36" pref-height="9" text="~text" on-click="button-click"></button>
      </macro.for-each>
    </grid>
  </horizontal>
</vertical>
```
```csharp
using System;
using System.Collections.Generic;
using System.Linq;
using BeatSaberMarkupLanguage.Attributes;
using BeatSaberMarkupLanguage.MenuButtons;
using BeatSaberMarkupLanguage.Parser;
using BeatSaberMarkupLanguage.ViewControllers;
using Random = UnityEngine.Random;

public class TestViewController : BSMLResourceViewController
{
    public override string ResourceName => "Path.To.Resource.example.bsml";

    [UIValue("buttons")]
    private List<object> buttons = Enumerable.Range(1, 12)
                                             .Select(i => {
                                                 if (i == 1)
                                                     Random.InitState((int)DateTime.Now.Ticks);
                                                 var nthUniverse = Random.Range(0, 100);
                                                 return new MenuButton($"Universe {nthUniverse}!", "", () => Logger.log.Info($"You entered the universe {nthUniverse}")) as object;
                                             }).ToList();
}
```
This example will display some buttons inside a grid logging some information.

![](https://i.imgur.com/oFKhGKF.png)