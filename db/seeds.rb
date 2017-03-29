['registered', 'agent', 'company', 'admin'].each do |role|
  Role.find_or_create_by({name: role})
end

users = %w(jon.snow hodor shae tyrion.lannister).map do |username|
  { email: "#{username}@winterfell.com", password: 'password' }
end

User.create(users)

oauth_app = {
  name:          'Angular Application',
  redirect_uri:  "http://#{ENV['HOST']}",
  uid:           ENV['APPLICATION_ID']
}

Doorkeeper::Application.find_or_create_by(oauth_app)
