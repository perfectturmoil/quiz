require 'erb'

# class HashWithBinding < Hash
  # def get_binding
    # binding()
  # end
# end

# 
# class QuizHash
#   attr_accessor :like_a_hash
#   def initialize(input)
#     @like_a_hash = input
#   end
#   def get_binding
#     binding()
#   end
# end
#just_a_quiz_hash = {'question_one' => 'this is the first question', 'question_two' => 'this is the second question'}

class QuizHTML
  def initialize(template, quiz_questions)

  end
end


quiz_hash = HashWithBinding.new
quiz_hash['question_one'] = 'this is the first question'
quiz_hash['question_two'] = 'this is the second question'

puts quiz_hash
my_binding = quiz_hash.get_binding

#quiz_hash = QuizHash.new({'question_one' => 'this is the first question', 'question_two' => 'this is the second question'})
erb_template = <<TEMPLATE
This is a test
<% quiz_hash.each do |question, answer| %>
  Question: <%=question %> : <%= answer %>
<% end %>
TEMPLATE

puts binding
erb_renderer = ERB.new(erb_template)
puts erb_renderer.result(quiz_hash.get_binding)