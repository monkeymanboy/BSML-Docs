# Example Usage
`example.bsml`
```xml
<vertical child-control-height="false">
  <horizontal bg="panel-top" pad-left="15" pad-right="15" horizontal-fit="PreferredSize">
    <text text="Clickable Text" align="Center" font-size="8"/>
  </horizontal>
  <horizontal horizontal-fit="PreferredSize" spacing="5">
    <vertical bg="round-rect-panel" pad-left="5" pad-right="5">
      <clickable-text align="Center" text="Click this!" on-click="link-click-action"></clickable-text>
    </vertical>
    <vertical bg="round-rect-panel" pad-left="5" pad-right="5">
      <text align="Center" text="Can't click this!"></text>
    </vertical>
    <vertical bg="round-rect-panel" pad-left="5" pad-right="5">
      <clickable-text align="Center" text="Click this!" on-click="link2-click-action"></clickable-text>
    </vertical>
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

    [UIAction("link-click-action")]
    private void LinkClickAction() => Logger.log.Info("You clicked this one!");

    [UIAction("link2-click-action")]
    private void AnotherLinkClickAction() => Logger.log.Info("No way, this one too!");
}
```
This example will display some clickable texts logging in the console different messages.

![](https://i.imgur.com/O14lO2d.png)