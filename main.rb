# List of Questions
  questions = {'What does 5 plus 4 equals to' => 9, 
             'What does 2 plus 6 equals to' => 8,
             'What does 10 divided by 5 equals to' => 2,
             'What does 5 multiply by 3 equals to' => 15,
             'What does 12 minus 6 equals to' => 6}

  questIndex = [
  'What does 5 plus 3 equals to',
   'What does 2 plus 6 equals to',
   'What does 10 divided by 5 equals to',
   'What does 5 multiply by 3 equals to',
   'What does 12 minus 6 equals to'
]

class Game

   def initialize(questions,questIndex)
    @questIndex = questIndex
    @question = questions
    @p1life = 3
    @p2life = 3
    @activePlayer1 = true
  end

  def getQuestion
    question = @questIndex[rand(0..4)]
    answer = @question[question]
    puts question
    puts answer
  end

  def startPlay
    while @p1life > 0 && @p2life > 0
      @activePlayer1 = !@activePlayer1
      
      if @activePlayer1
        @p1life = @p1life - 1
        puts "Player 1 is activated"
      else
        @p2life = @p2life - 1
        puts "Player 2 is activated"
      end

    end
  end

end

game1 = Game.new(questions,questIndex)
game1.getQuestion()
game1.startPlay()
