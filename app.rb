# lignes très pratiques qui appellent les gems du Gemfile. On verra plus tard comment s'en servir ;) - ça évite juste les "require" partout
require 'bundler'
Bundler.require

# lignes qui appellent les fichiers lib/user.rb et lib/event.rb
# comme ça, tu peux faire User.new dans ce fichier d'application. Top.
require_relative 'lib/user'
require_relative 'lib/event'


# Maintenant c'est open bar pour tester ton application. Tous les fichiers importants sont chargés
# Tu peux faire User.new, Event.new, binding.pry, User.all, etc.
diane = User.new("dianedecourt@gmail.com", 27)
vincent = User.new("vincentdecourt@gmail.com", 60)

meeting = Event.new("2019-01-13 09:00", 10, "standup quotidien", ["truc@machin.com", "bidule@chose.fr"])
meeting2 = Event.new("2020-10-12 20:30", 30, "meeting test", ["hello@hello.com", "chose@chose.com"])

puts meeting.to_s
puts meeting2.to_s
puts User.find_by_email("vincentdecourt@gmail.com")
