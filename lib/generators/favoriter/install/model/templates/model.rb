<% module_namespacing do -%>
  class <%= class_name %> < <%= parent_class_name.classify %>
    attr_accessible :favoriter_id, :favoriter_type, :favoritable_id, :favoritable_type

    belongs_to :favoriter, :polymorphic => true
    belongs_to :favoritable, :polymorphic => true
  end
<% end %>