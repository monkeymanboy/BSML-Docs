---
title: {{page.type}}
layout: default
parent: Tags
---
# {{page.type}}
{% for alias in page.aliases %}
{{alias}}
{: .label .label-yellow }
{% endfor %}
{% include tag_top/{{page.type}}.md %}
## Components and Properties
{% for component in page.components %}
{% assign typehandler = site.data.TypeHandlers | where: "type", component | first %}
### {{typehandler.type}}
{% for property in typehandler.properties %}
{% for alias in property.aliases %}
{{alias}}
{: .label .label-blue }
{% endfor %}

{{property.type | escape}}
{: .label .label-green }
{{property.description}}


{% endfor %}
{% endfor %}

{% include tag_bottom/{{page.type}}.md %}