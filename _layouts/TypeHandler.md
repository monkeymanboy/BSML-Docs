---
title: {{page.type}}
layout: default
parent: Handled Components
---
# {{page.type}}
{% for property in page.properties %}
{% for alias in property.aliases %}
{{alias}}
{: .label .label-blue }
{% endfor %}

{{property.type}}
{: .label .label-green }
{{property.description}}


{% endfor %}
