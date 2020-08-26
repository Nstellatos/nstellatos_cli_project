class NstellatosCliProject::Cli
    def run
        system("clear")
        greeting
        get_states 
        list_states
        get_user_state  
        exit_program
    end

    def greeting 
        puts "Welcome to the COVID-19 tracker!"
    end 
    
    def exit_program 
       puts  "Take care & stay safe!"
    end
    
    def get_states
        @states = NstellatosCliProject::State.all

    end
    
    def list_states
        puts "Choose a State to see current Covid-19 values:"
        @states.each.with_index(1) do |state, index|
            puts "#{index}. #{state.name}"
        end
    end
    
    def get_user_state
        chosen_state = gets.strip.to_i
        show_input_for(chosen_state) if valid_input(chosen_state, @states)
    end

    def valid_input(input,data)
        input.to_i <= data.length && input.to_i > 0
    end

    def show_data_for(chosen_state)
        state = @states[chosen_state - 1]
        puts "Here are the values for #{state.name}"
    end 















end


 