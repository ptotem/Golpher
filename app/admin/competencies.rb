ActiveAdmin.register Competency do
  index do
    column(:name) { |i| best_in_place i, :name, :type => :input, :path => [:admin, i] }
    default_actions
  end
end
