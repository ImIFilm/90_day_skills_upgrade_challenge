# from lecture: https://www.youtube.com/watch?v=JfwS4ibJFDw
class CaseConverter
  def upcase_characters(string)
    string.gsub(/(\A_?[a-z]|(?<=_)[a-z])/) {|char| char.upcase}
  end

  def remove_underscores(string)
    string.gsub(/_/, '')
  end

  def snake_to_camel(string)
    remove_underscores(upcase_characters(string))
  end
end

cc = CaseConverter.new()
puts "BEFORE:\nthis_is_my_new_method\nAFTER:"
a = "this_is_my_new_method"
puts cc.snake_to_camel(a)

puts "BEFORE:\noh_well_name\nAFTER:"
b = "oh_well_name"
puts cc.snake_to_camel(b)
