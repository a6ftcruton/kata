# raise --  The raise method comes from the Kernel module. It defaults to exceptions of the RuntimeError class.
#           Exceptions that are not rescued or are not conditional will exit the program.
#           Errors of this type should represent serious, less-recoverable conditions.
#           

class ExceptionHandling
  def simple_exception
    puts "Method: #{__method__}" 
    puts "Before the raise"
    raise 'An error has occured'
    puts "After the raise, I'll never be reached."
  end

  def check_conditions(arg_to_check)
    puts "Method: #{__method__}" 
    raise ArgumentError, 'Argument is not a string' unless arg_to_check.is_a? String
  end

  def using_custom_errors(age)
    whim = [0, 1].sample
    raise MyCustomError::NotOfPermittedAge if age < 21
    raise MyCustomError::PermissionDenied if whim == 0
    raise MyCustomError::Standard, "You hit an arbitrary error" if whim == 1
  end

  # Defining your own exception classes allows you to customize messages sent
  module MyCustomError
    class Standard < StandardError; end

    class NotOfPermittedAge < StandardError
      def message
        "You must be older than 21 to see this advertisement."
      end
    end

    class PermissionDenied < StandardError
      def message
        "You just can't go here." 
      end
    end
  end

end

class RescuingExceptions
  def begin_and_end_block
    puts "\nMethod: #{__method__}" 
    bad_input = 0
    begin
      puts "Before the raise"
      raise 'ERROR HERE!'
      puts "After the raise"
    rescue
      puts "Hits the rescue block despite ERROR"
    end
    puts "Execution continues beyond the `begin` block"
  end

  def multiple_rescues(input)
    begin
      puts "\nMethod: #{__method__}" 
      puts "Input class: #{input.class}"
      raise StandardError, "Input must be String" unless input.is_a? FixNum # this code will not be run b/c of the rescue
    rescue
      input.to_i
    else
      puts "If no exceptions are raised, this else block gets run"
    end
    puts "Execution continues beyond the `begin` block"
  end

  def rescue_clause_matches_exception(input)
    begin
      puts "\nMethod: #{__method__}" 
      raise 'You raised this on purpose' unless input.is_a? Float 
    rescue SecurityError => e
      puts "Your raise message: '#{e.message}'"
      puts "Rescued the TypeError"
    rescue NoMemoryError => e
      puts "Your raise message: '#{e.message}'"
      puts "Rescued a NoMethodError"
    rescue RuntimeError => e #'Standard Error' will be raised b/c it is the superclass of ArgumentError
      puts "Your raise message: '#{e.message}'"
      puts e.backtrace.inspect
      puts "Rescued the StandardError"
    else
      puts "No exceptions were hit or rescued"
    end
  end
end


# eh = ExceptionHandling.new
# puts "\nWhen age too low: \n"
# eh.using_custom_errors(20)

# eh2 = ExceptionHandling.new
# puts "\nThrow random excepctions from custom error module \n"
# eh2.using_custom_errors(21)

re = RescuingExceptions.new
re.begin_and_end_block

re = RescuingExceptions.new
re.multiple_rescues("one")
re.rescue_clause_matches_exception("hi")
