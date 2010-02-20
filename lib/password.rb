module Password
  VERSION = '1.0.0'
  FILENAME = "#{ENV['HOME']}/.they_stole_my_facebook_login_oh_noez" # honestly, "security", who gives a shit
  SITES = {}
  def set(credentials)
    SITES[credentials[:site]] = {:username => credentials[:username],
                                 :password => credentials[:password]}
  end
  def username(site)
    SITES[site][:username]
  end
  def password(site)
    SITES[site][:password]
  end
  def save_passwords
    File.open(FILENAME, "w") {|file| file.puts SITES.to_yaml}
  end
  def load_passwords
    if File.exists?(FILENAME)
      SITES.merge!(YAML::load(File.open(FILENAME)))
    else
      {}
    end
  end
  def generate(length = 23)
    # how to make this elegant?
    password = ""
    possible = %w{0 1 2 3 4 5 6 7 8 9 0 a b c d e f g h i j k l M N O P Q R S T U V W X Y Z ! $ # @ & * . ' =}
    length.times {password << possible[rand(possible.size)]}
    password
  end
end
