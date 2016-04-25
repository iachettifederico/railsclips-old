class PostPresenter < Mystique::Presenter
  format(nil) { "Annonymous" }
  def content
    content_array = target.content.split(/\s+/)
    first_word = content_array[0]
    rest = content_array[1..-1].join(" ")
    "#{first_word.upcase} #{rest}"
  end

  def created_at
    h.time_ago_in_words(target.created_at)
  end
end
