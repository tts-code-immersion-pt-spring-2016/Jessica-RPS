# create hash for inventory
icecream = {"Chocolate": 4, "Vanilla": 10, "Mint Chocolate Chip": 3, "Strawberry": 4}
loop_upon_completion = true
loop_options = true

puts "Welcome to Jessica and Sophie's Ice Cream Inventory App! Here are our current inventory numbers:"
sleep (1)

icecream.each do |k,v|
  puts "#{k}: #{v}"
end

sleep (1)

# loop commands for user to interact with inventory while loopagain==true
while loop_upon_completion == true do
  while loop_options == true do
    #Welcomes and asks the user what they would like to do
    puts "What would you like to do? Please select from the following list by calling on the number:
      1. View inventory again
      2. Change an existing item
      3. Create a new item"

      answer =gets.chomp.downcase

    if answer == "1"
      #this will dispay inventory for user to see
      puts "The current inventory numbers are:"
      icecream.each do |k,v|
        puts "#{k}: #{v}"
      end
      loop_options = false

    elsif answer == "2"
      puts "Which item would you like to makes changes to?"
      item =gets.chomp.capitalize

      if item == "Chocolate" || item == "Vanilla" || item == "Mint Chocolate Chip" || item == "Strawberry"
        # item == one of the options in the inventory, INCLUDING new item that user creates??
        puts "Please select the type of change you would like to make:
        1. Change quantity of item
        2. Delete item
        3. Change name of item"
        #3. Change name of item?

        changetype = gets.chomp.downcase
          if changetype == "1"
            #change value
            puts "What is the new quantity of #{item}?"
            new_quantity = gets.chomp.to_i
            if item == "Chocolate"
              icecream[:"Chocolate"] = new_quantity
            elsif item == "Vanilla"
                icecream[:"Vanilla"] = new_quantity
            elsif item == "Mint Chocolate Chip"
                icecream[:"Mint Chocolate Chip"] = new_quantity
            elsif item == "Strawberry"
                icecream[:"Strawberry"] = new_quantity
            end
            puts "The new quantity for #{item} is #{new_quantity}."

          elsif changetype == "2"
            # delete item
            if item == "Chocolate"
              icecream.delete(:"Chocolate")
            elsif item == "Vanilla"
              icecream.delete(:"Vanilla")
            elsif item == "Mint Chocolate Chip"
              icecream.delete(:"Mint Chocolate Chip")
            elsif item == "Strawberry"
              icecream.delete(:"Strawberry")
            end
            puts "#{item} has been deleted from the inventory."

          elsif changetype == "3"
            puts "What is the new name for this item?"
            new_name = gets.chomp.capitalize
            if item == "Chocolate"
              icecream[new_name] = icecream.delete(:"Chocolate")
            elsif item == "Vanilla"
              icecream[new_name] = icecream.delete(:"Vanilla")
            elsif item == "Mint Chocolate Chip"
              icecream[new_name] = icecream.delete(:"Mint Chocolate Chip")
            elsif item == "Strawberry"
              icecream[new_name] = icecream.delete(:"Strawberry")
            end
            puts "#{item} is now known as #{new_name}."

          else
            puts "Sorry, that is not a valid option."
          end
      else
        puts "sorry, that is not listed in your inventory."
      end
      loop_options = false

    elsif answer == "3"
      puts "What is the name of the item you would like to create?"
      new_item_key = gets.chomp.capitalize
      puts "How many quantities of #{new_item_key} are there?"
      new_item_value = gets.chomp.to_i
      icecream[new_item_key] = new_item_value
      puts "#{new_item_key}:#{new_item_value} has been added to the inventory."

      loop_options = false

    else
      puts "Please select a valid option."
      sleep (1)
      loop_options = true
    end
  end

  puts "Is there anything else you would like to do today? Please say yes or no."
  response = gets.chomp.downcase
  if response == "yes"
    loop_upon_completion = true
    loop_options = true
  elsif response == "no"
    loop_upon_completion = false
    puts "Thanks for using this app!"
  else
    loop_upon_completion = false
    puts "I take that as a no. Thanks for using this app!"
  end
end
