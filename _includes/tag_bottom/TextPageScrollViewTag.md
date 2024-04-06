# Example Usage
`example.bsml`
```xml
<vertical horizontal-fit="Unconstrained">
  <horizontal vertical-fit="Unconstrained">
    <text-page text="~lorem-ipsum" />
  </horizontal>
  <horizontal vertical-fit="Unconstrained">
    <text-page text="~lorem-ipsum-r" />
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

    [UIValue("lorem-ipsum")]
    public static string loremIpsum =
        "Ut enim quisque sibi plurimum confidit et ut quisque maxime virtute et sapientia sic munitus est, " +
        "ut nullo egeat suaque omnia in se ipso posita iudicet, ita in amicitiis expetendis colendisque " +
        "maxime excellit. Quid enim? Africanus indigens mei? Minime hercule! ac ne ego quidem illius; " +
        "sed ego admiratione quadam virtutis eius, ille vicissim opinione fortasse non nulla, quam de meis " +
        "moribus habebat, me dilexit; auxit benevolentiam consuetudo. Sed quamquam utilitates multae et " +
        "magnae consecutae sunt, non sunt tamen ab earum spe causae diligendi profectae.\n\nInter quos " +
        "Paulus eminebat notarius ortus in Hispania, glabro quidam sub vultu latens, odorandi vias periculorum " +
        "occultas perquam sagax. is in Brittanniam missus ut militares quosdam perduceret ausos conspirasse Magnentio, " +
        "cum reniti non possent, iussa licentius supergressus fluminis modo fortunis conplurium sese repentinus infudit " +
        "et ferebatur per strages multiplices ac ruinas, vinculis membra ingenuorum adfligens et quosdam obterens manicis," +
        " crimina scilicet multa consarcinando a veritate longe discreta. unde admissum est facinus impium, quod Constanti tempus " +
        "nota inusserat sempiterna.\n\nThalassius vero ea tempestate praefectus praetorio praesens ipse quoque adrogantis " +
        "ingenii, considerans incitationem eius ad multorum augeri discrimina, non maturitate vel consiliis mitigabat, " +
        "ut aliquotiens celsae potestates iras principum molliverunt, sed adversando iurgandoque cum parum congrueret, " +
        "eum ad rabiem potius evibrabat, Augustum actus eius exaggerando creberrime docens, idque, incertum qua mente, " +
        "ne lateret adfectans. quibus mox Caesar acrius efferatus, velut contumaciae quoddam vexillum altius erigens, " +
        "sine respectu salutis alienae vel suae ad vertenda opposita instar rapidi fluminis irrevocabili impetu " +
        "ferebatur.\n\nUt enim quisque sibi plurimum confidit et ut quisque maxime virtute et sapientia sic munitus" +
        " est, ut nullo egeat suaque omnia in se ipso posita iudicet, ita in amicitiis expetendis colendisque maxime" +
        " excellit. Quid enim? Africanus indigens mei? Minime hercule! ac ne ego quidem illius; sed ego admiratione " +
        "quadam virtutis eius, ille vicissim opinione fortasse non nulla, quam de meis moribus habebat, me dilexit; " +
        "auxit benevolentiam consuetudo. Sed quamquam utilitates multae et magnae consecutae sunt, non sunt tamen ab " +
        "earum spe causae diligendi profectae.\n\nExcogitatum est super his, ut homines quidam ignoti, vilitate " +
        "ipsa parum cavendi ad colligendos rumores per Antiochiae latera cuncta destinarentur relaturi quae audirent. " +
        "hi peragranter et dissimulanter honoratorum circulis adsistendo pervadendoque divites domus egentium habitu " +
        "quicquid noscere poterant vel audire latenter intromissi per posticas in regiam nuntiabant, id observantes " +
        "conspiratione concordi, ut fingerent quaedam et cognita duplicarent in peius, laudes vero supprimerent Caesaris, " +
        "quas invitis conpluribus formido malorum inpendentium exprimebat.";

    [UIValue("lorem-ipsum-r")]
    private string loremIpsumReverse = ReverseString(loremIpsum);

    public static string ReverseString(string s)
    {
        var array = new char[s.Length];
        var forward = 0;
        for (var i = s.Length - 1; i >= 0; i--)
            array[forward++] = s[i];
        return new string(array);
    }
}
```
This example will display two text page scrollviews vertically placed, one having a string without modification and the other one reversed.

![](https://i.imgur.com/w2m6AAv.png)