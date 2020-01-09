---
title: {{page.type}}
layout: default
parent: Macros
---
# {{page.type}}
{% for alias in page.aliases %}
{{alias}}
{: .label .label-yellow }
{% endfor %}
## Properties
{% for property in page.properties %}
{% for alias in property.aliases %}
{{alias}}
{: .label .label-blue }
{% endfor %}

{{property.type | escape}}
{: .label .label-green }
{{property.description}}


{% endfor %}
