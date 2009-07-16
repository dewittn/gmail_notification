class CotoSolutionsGenerator < Rails::Generator::Base
  def manifest
    record do |m|
      # Copies initializer email.rb to config/initializers
      m.directory File.join('config/', "initializers")
      m.file "email.rb", "config/initializers/email.rb"
    end
  end
end