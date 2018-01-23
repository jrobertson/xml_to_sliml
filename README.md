# Introducing the xml_to_sliml gem

    require 'xml_to_sliml'

    xml = "
    <a>
      <b>123</b>
      <b>456</b>
      <c>
        <c2>789</c2>
      </c>
      <d/>
    </a>
    "

    puts XmlToSliml.new(xml).to_s

Output:

<pre>
a
  b 123
  b 456
  c
    c2 789
  d
</pre>

## Resources

* xml_to_sliml https://rubygems.org/gems/xml_to_sliml

xml_to_sliml xml sliml gem
