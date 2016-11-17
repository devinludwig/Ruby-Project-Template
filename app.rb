require('sinatra')
require('sinatra/reloader')
require('./lib/palindromes')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/palindromes') do
  @palindrome = params.fetch('string').palindromes()
  erb(:palindromes)
end
