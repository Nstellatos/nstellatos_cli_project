class Cli
    def self.run #class method - runs program
        system("clear") #clears terminal
        list_states
    end

    

    def self.list_states #class method- greets the user and asks for input
        puts " "
        puts " "
      puts "~~~~~     ~~~~~     ~~~~~    ~~~~~     ~~~~~     ~~~~~    ~~~~~     ~~~~~     ~~~~~    ~~~~~".red 
      puts "~~~~~     ~~~~~     ~~~~~    ~~~~~     ~~~~~     ~~~~~    ~~~~~     ~~~~~     ~~~~~    ~~~~~".red

        puts "                    WELCOME TO THE COVID-19 TRACKER!".bold 
        puts " "
        puts "Choose a State by typing the two letter abbreviation for the State, OR"
        puts "type 'search' to search by the full state name to see the current COVID-19 totals."
        puts ""
        puts "You may type 'exit' to exit the program."
        puts ""
        self.get_user_state
    end

    def self.get_user_state #class method - gets input
      puts "~~~~~     ~~~~~     ~~~~~    ~~~~~     ~~~~~     ~~~~~    ~~~~~     ~~~~~     ~~~~~    ~~~~~".red
      
      puts "~~~~~     ~~~~~     ~~~~~    ~~~~~     ~~~~~     ~~~~~    ~~~~~     ~~~~~     ~~~~~    ~~~~~".red  
      
      input = gets.chomp
      if input == "search"
        state = States.state_search
      elsif input == "exit"
        self.leave_list 
      elsif States.states_abvs.keys.include?(input.upcase)
          state = input.upcase
      else
        self.invalid_input
      end
@@state = state
state = Api.fetch_data
self.get_state_details(state) # pulls the details for the state the user selects
end







    #   input = gets.chomp.downcase

    #   if input == "search"
    #     state = States.search #allows access to States class and search method // can type in full name of state
    #   elsif input == "exit"
    #     self.leave_list #accesses goodbye message
    #   else
    #     state = input #takes in the abbreviation and displays data
    #   end 

    #   @@state = state
    #   state = Api.fetch_data 
    #   self.get_state_details(state) # pulls the details for the state the user selects
    # end

    def self.state #class method
      @@state     #class variable
    end

    def self.get_state_details(state) # outputs state details based upon user selection
      puts " "
      puts "Here are the values for:".bold  
      puts "___________________________--_-- #{state.name.upcase} --_--___________________________".yellow.bold  
      puts "Date Updated: #{state.date.to_s.insert(4,"/").insert(7,"/")}"
      puts "State: #{state.name.upcase}"
      puts "Abbreviation: #{state.abv}" 
      puts "Total Positive COVID-19 Cases: #{state.positive}".green 
      puts "Total Recovered COVID-19 Cases: #{state.recovered_cases}".blue  
      puts "Total COVID-19 Deaths:  #{state.death}".red 
      self.user_options
    end
  
    def self.user_options #class method
        puts " "
        puts "Please type 11 followed by ENTER if you would like to exit the COVID-19 Tracker." # give the user the option of exiting the program
        puts " "
        puts "Otherwise, you may type 12 followed by ENTER to view another state." # give the user an option to view another
      input = gets.chomp.to_i
      if input == 11
        self.leave_list #outputs goodbye message
      elsif input == 12
        self.list_states #outputs program options
      else  
      
        self.invalid_input 
      end
    end
  
    def self.leave_list #class method - outputs goodbye message

      puts " "
      puts "                     Thank you for viewing my COVID-19 Tracker!".red
      puts "                               Take care & stay safe!".red 
      puts " "
    
      exit
    end

    def self.invalid_input
    #   if input != self.get_user_state  # anything not 12 or 11 - and above 10 and symbols and letters etc
      puts " "
      puts "                      Oops, you made an invalid selection.".red 
      puts " "
      self.user_options
    end


end
