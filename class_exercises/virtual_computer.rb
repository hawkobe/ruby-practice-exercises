class Computer
  @@users = {}

  def initialize(username, password, user_type)
    @username = username
    @password = password
    @user_type = user_type
    @files = {}
    @@users[username] = { password: password, user_type: user_type }
  end

  def create(filename)
    time = Time.now
    @files[filename] = time
    puts "#{@username} created #{filename} at #{time}"
  end

  def self.get_users
    @@users
  end

  def print_files
    print @files
  end

  def delete_files(filename)
    @files.delete(filename)
    puts "#{@username} deleted #{filename}. We're not sure why"
  end
end

my_computer = Computer.new('Hawkobe', 'ph@ser$toSTUN', 'gearhead')
your_computer = Computer.new('Your CPU', 'easyPass', 'camper')

my_computer.create('My First File')
your_computer.create('Your First File')
my_computer.create('Felt cute, might delete later')

my_computer.print_files

my_computer.delete_files('Felt cute, might delete later')

puts "Users: #{Computer.get_users}"
