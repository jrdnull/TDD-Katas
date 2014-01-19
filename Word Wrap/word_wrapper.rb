class WordWrapper
  def wrap(text, line_length)
    return text if text.length <= line_length

    if text[line_length] == ' '
      text[0..line_length - 1] + "\n" + wrap(text[line_length + 1..-1], line_length)
    elsif (i = text[0..line_length - 1].reverse.index(' ')) != nil
      i = line_length - 1 - i
      text[i] = "\n"
      text[0..i] + wrap(text[i + 1..-1], line_length)
    else
      text[0..line_length - 1] + "\n" + wrap(text[line_length..-1], line_length)
    end
  end
end
