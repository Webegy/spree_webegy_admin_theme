Deface::Override.new(:virtual_path => 'spree/admin/products/_form',
                     :name => 'remove_product_meta_description_field',
                     :remove => "code[erb-loud]:contains('f.field_container :meta_description do')",
                     :closing_selector => "code[erb-silent]:contains('end')")

Deface::Override.new(:virtual_path => 'spree/admin/products/_form',
                     :name => 'add_short_description',
                     :insert_before => "code[erb-loud]:contains('f.field_container :description do')",
                     :text => "<%= f.field_container :meta_description do %>
    						   	<%= f.label :meta_description, t(:short_description) %><br />
    							<%= f.text_field :meta_description, :class => 'fullwidth title' %>
  							   <% end %>")