module Parser
  def parser(file_name)
  headers = ["question","answer"]
  data_info = []
    File.open(file_name,"r") do |file|
       file.each_line do |line|
         if line.length > 2
         data_info << line.chomp
         end
       end
    end
    questions_answers = data_info.each_slice(2).to_a
    questions_answers.map do |text|
      Hash[*headers.zip(text).flatten]
    end
  end
end
