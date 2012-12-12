ActiveAdmin.register Employee do
  index do
    column(:name) { |i| best_in_place i, :name, :type => :input, :path => [:admin, i] }
    column(:phone) { |i| best_in_place i, :phone, :type => :input, :path => [:admin, i] }
    column(:email) { |i| best_in_place i, :email, :type => :input, :path => [:admin, i] }
    column(:onrolls) { |i| best_in_place i, :onrolls, :type => :select, :collection=>[[true,"true"],[false,"false"]], :path => [:admin, i] }
    default_actions
  end
end
