# Example Usage
```xml
<vertical child-control-height='false'>
  <horizontal bg='panel-top' pad-left='15' pad-right='15' horizontal-fit='PreferredSize'>
    <text text='Background' align='Center' font-size='8'/>
  </horizontal>
  <horizontal>
    <background bg='round-rect-panel'>
      <text align='Center' text='Inside!'></text>
    </background>
    <text align='Center' text='Outside..'></text>
    <background bg='round-rect-panel'>
      <text align='Center' text='Inside!'></text>
    </background>
    <text align='Center' text='Outside..'></text>
  </horizontal>
</vertical>
```
This example will display some texts inside or outside background components.

![](https://i.imgur.com/Df3Qj2c.png)