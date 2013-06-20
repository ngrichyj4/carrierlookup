Gem::Specification.new do |s|
  s.name        = 'carrierlookup'
  s.version     = '0.0.1'
  s.date        = '2013-06-17'
  s.summary     = "Phone number carrier lookup"
  s.description = "This library lets you lookup a north american phone carrier."
  s.authors     = ["Richard Aberefa"]
  s.email       = 'ngrichyj4@gmail.com'
  s.files       = ["lib/carrierlookup.rb", "bin/_Data.json", "Gemfile","bin/_Data.csv","MIT-LICENSE","README.md"]
  s.homepage    = 'http://github.com/ngrichyj4/carrierlookup'
  s.add_dependency 'ccsv'
end