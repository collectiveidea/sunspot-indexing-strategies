class Company < ActiveRecord::Base
  validates_presence_of :name
  
  searchable :auto_index => ENV['AUTO_INDEX'].nil? || ENV['AUTO_INDEX'] == "true" do
    text :name, :description
  end
end
