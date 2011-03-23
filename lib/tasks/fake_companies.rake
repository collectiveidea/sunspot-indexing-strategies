desc 'Create NUM fake company statements'
task :generate_companies do
  num = ENV['NUM'].to_i
  num.times.each do
    puts %Q|Company.create!(:name => "#{Faker::Company.name}", :description => "#{Faker::Lorem.paragraphs.join(". ")}")|
  end
end