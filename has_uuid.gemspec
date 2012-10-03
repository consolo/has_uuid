Gem::Specification.new do |s|
  s.name = 'has_uuid'
  s.version = '1.0.0'
  s.author = 'Andrew Coleman'
  s.email = 'developers@consoloservices.com'
  s.summary = 'Has UUID'
  s.description = 'Library for helping you with ActiveRecord models with a "uuid" column'
  s.homepage = 'https://redmine.consoloservices.com'
  s.require_path = '.'
  s.files = [ 'has_uuid.rb' ]
  s.add_dependency 'activerecord'
end
