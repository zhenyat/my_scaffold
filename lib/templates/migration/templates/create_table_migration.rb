class <%= migration_class_name %> < ActiveRecord::Migration
  def change
    create_table :<%= table_name %> do |t|
<%- attributes.each do |attribute| -%>
<%- if attribute.name == 'password_digest' || attribute.name == 'email' || attribute.name == 'name' || attribute.name == 'title' || attribute.name == 'position' -%>
      t.<%= attribute.type %> :<%= attribute.name %><%= attribute.inject_options %>, null: false
<%- elsif attribute.name == 'role' || attribute.name == 'status' -%>
      t.<%= attribute.type %> :<%= attribute.name %><%= attribute.inject_options %>, null: false, default: 0, limit: 1
<%- else -%>
<%- if attribute.reference? -%>
<%- if attribute.name == 'parent' -%>
     t.references :parent, index: true    #, foreign_key: true - remove! (see: http://edgeguides.rubyonrails.org/association_basics.html)
<%- else -%>
      t.<%= attribute.type %> :<%= attribute.name %><%= attribute.inject_options %>, null: false
<%- end -%>
<%- else -%>
      t.<%= attribute.type %> :<%= attribute.name %><%= attribute.inject_options %>
<%- end -%>
<%- end -%>
<%- end -%>
<%- if options[:timestamps] %>
      t.timestamps null: false
<%- end -%>
    end
<%- attributes_with_index.each do |attribute| -%>
    add_index :<%= table_name %>, :<%= attribute.index_name %><%= attribute.inject_index_options %>
<%- end -%>
  end
end

