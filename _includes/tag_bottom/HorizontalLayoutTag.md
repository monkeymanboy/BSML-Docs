# Example Usage
```xml
<vertical child-control-height='false'>
  <horizontal bg='panel-top' pad-left='15' pad-right='15' horizontal-fit='PreferredSize'>
    <text text='Horizontal layout' align='Center' font-size='8'/>
  </horizontal>
  <horizontal horizontal-fit='PreferredSize' spacing='10'>
    <text text='Left text' align='Center' />
    <button text='Mid button'/>
    <text text='Right text' align='Center'/>
  </horizontal>
  <horizontal horizontal-fit='PreferredSize' spacing='10'>
    <text text='Bottom left-mid text' align='Center' />
    <text text='Bottom right-mid text' align='Center'/>
  </horizontal>
</vertical>
```
This example will display some components contained inside a horizontal container

![](https://i.imgur.com/bJYA8ke.png)