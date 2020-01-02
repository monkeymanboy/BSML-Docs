# Example Usage
`example.bsml`
```xml
<vertical child-control-height='false'>
  <horizontal bg='panel-top' pad-left='15' pad-right='15' horizontal-fit='PreferredSize'>
    <text text='Page button' align='Center' font-size='8'/>
  </horizontal>
  <horizontal vertical-fit='PreferredSize'>
    <text text='Find the lucky choice!' font-size='4.5'/>
  </horizontal>
  <page-button click-event='list#PageUp' direction='Up' pref-width='30' pref-height='5'></page-button>
  <custom-list id='list' contents='buttons' list-width='30' visible-cells='3' cell-size='8'>
    <horizontal vertical-fit='Unconstrained'>
      <vertical pref-width='20'>
        <text text='~text' align='Center' font-size='4' overflow-mode='Ellipsis'></text>
      </vertical>
      <button text='+' pad='0' all-uppercase='false' pref-width='6' pref-height='6' on-click='button-click'></button>
    </horizontal>
  </custom-list>
  <page-button click-event='list#PageDown' direction='Down' pref-width='30' pref-height='5'></page-button>
</vertical>
```
```csharp
using System.Collections.Generic;
using System.Linq;
using BeatSaberMarkupLanguage.Attributes;
using BeatSaberMarkupLanguage.MenuButtons;
using BeatSaberMarkupLanguage.Parser;
using BeatSaberMarkupLanguage.ViewControllers;

public class TestViewController : BSMLResourceViewController
{
    public override string ResourceName => "Path.To.Resource.example.bsml";

    [UIValue("buttons")]
    private List<object> buttons = Enumerable.Range(1, 7)
                                             .Select(i => {
                                                 return new MenuButton($"Choice " + i, "", () => Logger.log.Info($"You clicked the choice {i}! " + (i == 7 ? "Lucky one!" : "Try again.."))) as object;
                                             }).ToList();
}
```
This example will display a list container and its elements list contained in the script

![](https://i.imgur.com/JOOeRaG.png)