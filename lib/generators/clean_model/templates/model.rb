# Fields
<%- model_attributes.each do |attribute, index| -%>
# <%= attribute.name %>: [<%= attribute.type %>]
<%- end -%>
#
# Associations
<%- model_attributes.each_with_index do |attribute, index| -%>
  <%- if attribute.type == :references -%>
# <%= attribute.name.classify %>
  <%- end -%>
<%- end -%>

class <%= class_name %> < ActiveRecord::Base

  has_paper_trail

  # associations
  <%- for attribute in model_attributes -%>
    <%- if attribute.type.to_s == "references" -%>
  belongs_to :<%= attribute.name %>
    <%- end -%>
  <%- end -%>

  # attr accessible
  attr_accessible <%= model_attributes.map { |a| ":#{a.name}" }.join(", ") %>

  # validations

  validates <%= model_attributes.map { |a| ":#{a.name}" }.join(", ") %>, presence: true

  <%- for attribute in model_attributes -%>
    <%- case attribute.type -%>
      <%- when :integer -%>
  # validates :<%= attribute.name %>, numericality: true, length: TODO
      <%- when :string -%>
  # validates :<%= attribute.name %>, length: TODO
    <%- end -%>
  <%- end -%>

end