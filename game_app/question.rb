class Question

  def new_question
    @q1 = rand(1..20)
    @q2 = rand(1..2)

    puts "\nWhat's the sum of #{@q1} and #{@q2}?"
  end

  def verify_answer
    print "\n> "

    @response = gets.chomp.to_i

    if @response == (@q1 + @q2)
      puts "\n#{@response} is right!"
      true
    else
      puts "\n#{@response} is wrong!"
      false
    end
  end
end
