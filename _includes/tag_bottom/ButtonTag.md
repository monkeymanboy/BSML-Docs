# Example Usage
`example.bsml`
```xml
<vertical child-control-height='false'>
  <horizontal bg='panel-top' pad-left='15' pad-right='15' horizontal-fit='PreferredSize'>
    <text text='Buttons' align='Center' font-size='8'/>
  </horizontal>
  <horizontal horizontal-fit='PreferredSize' spacing='10'>
    <button text='Click!' on-click='click-btn-action'/>
    <button text='Clack!' on-click='clack-btn-action'/>
  </horizontal>
  <horizontal horizontal-fit='PreferredSize' spacing='10'>
    <button text='Cluck!' on-click='cluck-btn-action'/>
    <button text='Clock!' on-click='clock-btn-action'/>
  </horizontal>
</vertical>
```
```csharp
using BeatSaberMarkupLanguage.Attributes;
using BeatSaberMarkupLanguage.Parser;
using BeatSaberMarkupLanguage.ViewControllers;

public class TestViewController : BSMLResourceViewController
{
    public override string ResourceName => "Path.To.Resource.example.bsml";

    [UIParams]
    private BSMLParserParams parserParams;

    [UIAction("click-btn-action")]
    private void ClickButtonAction() => Logger.log.Info("Click!");

    [UIAction("clack-btn-action")]
    private void ClackButtonAction() => Logger.log.Info("Clack!");

    [UIAction("cluck-btn-action")]
    private void CluckButtonAction() => Logger.log.Info("Cluck!");

    [UIAction("clock-btn-action")]
    private void ClockButtonAction() => Logger.log.Info("Clock!");
}
```
This example will display some buttons logging in the console their name.

![](https://i.imgur.com/PVR1k9p.png)