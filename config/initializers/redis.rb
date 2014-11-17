if Rails.env.development?
  ENV['REDISCLOUD_URL'] = 'redis://localhost:6379'
end

if ENV['REDISCLOUD_URL']
  uri = URI.parse(ENV['REDISCLOUD_URL'])
  $redis = Redis.new(url: ENV['REDISCLOUD_URL'])
end

if Rails.env.test?
  ENV['REDISCLOUD_URL'] = 'redis://localhost:6379'
  $redis = Redis.new(url: ENV['REDISCLOUD_URL'])
end