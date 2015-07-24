require 'bundler'
Bundler.require()

def fake_movie(name, release_year, description)
  {:name => name, :release_year => release_year, :description => description}
end

get '/' do
  "<h1>Sorry this page doesn't respond to requests...</h1>"
end

get '/api/spock' do
  fake_movie('Indiana Jones and the Search for Spock', 2018, 'Indiana Jones meets with Captain Kirk and Han Solo to figure out where Spock was hiding when they were playing hide-and-go-seek on planet Zoltar, hilarity ensues.').to_json
end

get '/api/atreu' do
  fake_movie('Superman 7: The Never Ending Story', 2017, 'Superman is defeated thanks to Kryptonite.  He loses many of his powers.  Oh no!!! Thankfully he convenes with Atreu and they both have crazy adventures flying around on Falkor the Luck Dragon!  Hilarity ensues.').to_json
end

get '/api/mcfly' do
  fake_movie('Who Framed Marty McFly?', 2019, 'Marty and Doc Brown have destroyed the time machine...  Or so we think!  An adveture ensues as Doc and Marty try to prove they are innocent of the Delorean Destruction!  Hilarity ensues.').to_json
end
