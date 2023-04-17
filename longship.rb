ship_owners = %w[Jacob Crystal Bulleit Moira]

def launch_longships(owners)
  launched_ships = 0
  owners.each do |owner|
    longship_name = "#{owner}'s Reavers"
    launched_ships += 1
    puts "#{longship_name} successfully launched!"
  end
  puts "Excellent news! We've launched #{launched_ships} ships!"
end

launch_longships(ship_owners)
