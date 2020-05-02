#!/usr/bin/env ruby

# file: xml_to_sliml.rb

require 'rexle'


class XmlToSliml

  attr_reader :to_s

  def initialize(obj, spacer: '  ')

    @spacer = spacer
    @to_s = ''
    doc = (obj.is_a?(Rexle) or obj.is_a?(Rexle::Element)) ? obj : Rexle.new(obj)
    @to_s << scanbuild(doc.to_a)    

  end

  private

  # format attributes
  #
  def fa(h)

    "{%s}" % h.map {|k, v| "%s: %s" % [k, v.inspect]}.join(' ')

  end

  def scanbuild(x, indent=0)

    name, attributes, *remaining = x

    children = remaining.shift
    text = ''

      
    if children.is_a? Array then
      nested = scanbuild(children, indent+1) 
    elsif children
      text = children
    end

    pad = @spacer * indent

    buffer = pad + name
    buffer << ' ' + fa(attributes) if attributes.any?
    buffer << ' ' + text unless text.strip.empty?
    

    while remaining.any? do
      children = remaining.shift
      if children and children.is_a? Array then
        buffer << "\n" + scanbuild(children, indent+1) 
      end
    end

    buffer
  end

 
end
