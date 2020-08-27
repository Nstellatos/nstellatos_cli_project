class Cli

  
    def self.run
        system("clear")
        self.list_states
        get_states 
        list_states
        # get_user_state  
        # exit_program
    end

    # def self.greeting 
    #     puts "Welcome to the COVID-19 tracker!"
    #     self.list_states
    # end 
    
    def exit_program 
       puts  "Take care & stay safe!"
    end
    
    # def get_states
    #     @states = States.all
    # end
    
    def self.list_states
      puts "Welcome to the COVID-19 tracker!"
      # @states = States.all
        puts "Choose a State by typing the number next to is in order to see current Covid-19 values:"
        States.all.each_with_index do |state, index|
            puts "#{index + 1}. #{state.name}"
        end
        self.get_user_state
    end
    
  #   Books.all.each_with_index do |book, n| # and outputs an indexed list of my bookshelf book titles
  #     puts "#{n + 1}. #{book.title}"
  #   end
  #     self.choose_a_book # calls the chose_a_book class method from the CLI class
  # end

  #   # this class method requests the user input a number to select a book title in order to
  # def self.choose_a_book # see more details about the books on the bookshelf
  #   puts "~~~~~     ~~~~~     ~~~~~    ~~~~~     ~~~~~     ~~~~~    ~~~~~     ~~~~~     ~~~~~    ~~~~~".colorize(:color => :green)  #, :background => :green) # line for spacing aesthetics
  #   puts "About which book would you like information?".colorize(:color => :light_yellow)
  #   puts " "
  #   puts "Please select a book by typing the corresponding number followed by ENTER.".colorize(:color => :light_yellow)
  #   puts "~~~~~     ~~~~~     ~~~~~    ~~~~~     ~~~~~     ~~~~~    ~~~~~     ~~~~~     ~~~~~    ~~~~~".colorize(:color => :green) #, :background => :green) # line for spacing aesthetics

  #   input = gets.chomp.to_i - 1 # user input is requested and the user input is turned into an integer for indexing purposes
  #   if input < 0 || input > 9 # user input is outside of the range of the index of my bookshelf, it tells the user they made the wrong selection
  #     self.wrong_selection
  #   end
  #     book = Books.all[input] # the variable book is becoming the instance which was selected by the user
  #     @@book = book
  #     self.get_book_details(self.book) # pulls the details for the book the user selects 
  # end

    def self.get_user_state
      puts "~~~~~     ~~~~~     ~~~~~    ~~~~~     ~~~~~     ~~~~~    ~~~~~     ~~~~~     ~~~~~    ~~~~~" #.colorize(:color => :green)  #, :background => :green) # line for spacing aesthetics
        puts "About which state would you like COVID information?" #.colorize(:color => :light_yellow)
        puts " "
        puts "Please select a state by typing the corresponding number followed by ENTER."  #.colorize(:color => :light_yellow)
        puts "~~~~~     ~~~~~     ~~~~~    ~~~~~     ~~~~~     ~~~~~    ~~~~~     ~~~~~     ~~~~~    ~~~~~" #.colorize(:color => :green) #, :background => :green) # line for spacing aesthetics
    
        input = gets.chomp.to_i - 1 # user input is requested and the user input is turned into an integer for indexing purposes
        if input < 0 || input > 9 # user input is outside of the range of the index of my bookshelf, it tells the user they made the wrong selection
          self.invalid_input
        end
          state = States.all[input] # the variable book is becoming the instance which was selected by the user
          @@state = state
          self.get_state_details(self.state) # pulls the details for the book the user selects 

        # chosen_state = gets.strip.to_i
        # show_input_for(chosen_state) if valid_input(chosen_state, @states)
    end

    def self.state
      @@state
    end
  
    def self.get_state_details(state) # outputs books details based upon user selection
      puts "Here are the values for #{state.name}"
      puts "" # TODO: add other lines and colors for aesthetics and url, more details, too
      # puts "___________________________--_-- #{state.name} --_--___________________________" #.colorize(:color => :cyan)  #, :background => :blue)
      puts "State: #{state.name}"
      puts "Positive COVID Cases: #{state.positive}"
      # puts "Date published: #{state.date_pub}"
      # puts "Description: " ##{book.description}
      # puts book.description
      # puts "For more information, google book id: #{state.id}"
      self.user_options
    end
  
    def self.user_options
      # curtains(2, 1)
        puts "Please type 11 followed by ENTER if you would like to exit the COVID info program." # give the user the option of exiting the program
        puts " "
        puts "Otherwise, you may type 12 followed by ENTER to choose a state from the list." # give the user an option to choose another book
      input = gets.chomp.to_i
      if input == 11
        self.leave_list
      elsif input == 12  
        self.list_states 
      else  # lists the books on my bookshelf for user selection using Command Line Interface
      # if input.between?(1, 10)  
        self.invalid_input
      end
    end
  
    def self.leave_list
      # curtains(5, 0.1)
      puts " "
      puts "                     Thank you for viewing my COVID information!"  #.colorize(:color => :cyan)
      puts " "
      # curtains(5, 0.1)
      exit
    end

    def self.invalid_input
      # if input = 11..# anything not 12 or 11 - and above 10 and symbols and letters etc
        # curtains(2, 0.75)
        puts " "
        puts "                      Oops, you made an invalid selection." #.colorize(:color => :magenta)
        puts " "
        self.user_options
    end

    # def valid_input(input,data)
    #     input.to_i <= data.length && input.to_i > 0
    # end

    # def show_data_for(chosen_state)
    #     state = @states[chosen_state - 1]
    #     puts "Here are the values for #{state.name}"
    # end
end
