# Example Usage
`example.bsml`
```xml
<vertical child-control-height="false">
  <horizontal bg="panel-top" pad-left="15" pad-right="15" horizontal-fit="PreferredSize">
    <text text="Text" align="Center" font-size="8"/>
  </horizontal>
  <horizontal>
    <vertical spacing="4">
      <horizontal pad-bottom="7">
        <text text="Are you sure?" italics="true" font-size="6.5" align="Center"/>
      </horizontal>
      <text id="modified-text" text="I don't know" font-size="5.5" align="Center"/>
      <button text="Answer" on-click="randomize-btn-action" />
    </vertical>
  </horizontal>
</vertical>
```
```csharp
using System;
using BeatSaberMarkupLanguage.Attributes;
using BeatSaberMarkupLanguage.Parser;
using BeatSaberMarkupLanguage.ViewControllers;
using TMPro;
using Random = UnityEngine.Random;

public class TestViewController : BSMLResourceViewController
{
    public override string ResourceName => "Path.To.Resource.example.bsml";
    private string[] words = new string[] { "Yes", "No", "Maybe" };

    [UIParams]
    private BSMLParserParams parserParams;

    [UIComponent("modified-text")]
    private TextMeshProUGUI modifiedText;

    [UIAction("randomize-btn-action")]
    private void RandomizeButtonAction() => modifiedText.text = words[Random.Range(0, words.Length)];

    private void Awake() => Random.InitState((int)DateTime.Now.Ticks);
}
```
This example will display a text randomized when clicking the main button.

![](https://i.imgur.com/WVTYVtw.png)