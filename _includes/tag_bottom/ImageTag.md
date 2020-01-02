# Example Usage
`example.bsml`
```xml
<vertical child-control-height='false'>
  <horizontal bg='panel-top' pad-left='15' pad-right='15' horizontal-fit='PreferredSize'>
    <text text='Image' align='Center' font-size='8'/>
  </horizontal>
  <horizontal>
    <text align='Center' text='May the force with you!'></text>
  </horizontal>
  <image id='image' size-delta-x='60.7' size-delta-y='34.15'/> 
  <button id='load-btn' on-click='load-pic-action' text='Load pic'></button> 
</vertical>
```
```csharp
using System;
using System.Collections;
using BeatSaberMarkupLanguage.Attributes;
using BeatSaberMarkupLanguage.Parser;
using BeatSaberMarkupLanguage.ViewControllers;
using UnityEngine;
using UnityEngine.Networking;
using UnityEngine.UI;

public class TestViewController : BSMLResourceViewController
{
    public override string ResourceName => "Path.To.Resource.example.bsml";

    [UIComponent("image")]
    private RawImage image;
    
    [UIComponent("load-btn")]
    private Button loadButton;

    [UIAction("load-pic-action")]
    public void LoadPic()
    {
        loadButton.interactable = false;
        SharedCoroutineStarter.instance.StartCoroutine(LoadTextureCoroutine("https://i.imgur.com/Zboz8Ou.jpg",
                                                                                                          d => {
                                                                                                              image.texture = d;
                                                                                                              loadButton.interactable = true;
                                                                                                          }));
    }

    // https://github.com/AurosX/SiaUtil
    public static IEnumerator LoadTextureCoroutine(string spritePath, Action<Texture2D> done)
    {
        using (var www = UnityWebRequestTexture.GetTexture(spritePath))
        {
            yield return www.SendWebRequest();
            if (www.isHttpError || www.isNetworkError)
                Logger.log.Error("Connection Error: " + spritePath);
            else
            {
                var tex = DownloadHandlerTexture.GetContent(www);
                tex.wrapMode = TextureWrapMode.Clamp;
                yield return new WaitForSeconds(.01f);
                done?.Invoke(tex);
            }    
        }
    }
}
```
This example will display an image uploaded from Imgur.

![](https://i.imgur.com/RnAPXKL.png)