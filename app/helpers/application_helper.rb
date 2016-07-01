module ApplicationHelper

  def level_class_selector(params, level)
    if params[:lesson_id]
      lesson = Lesson.find_by_slug(params[:lesson_id])
      page_level = lesson.levels.find_by_slug(params[:id])
    end
    if page_level == level
      "active"
    elsif page_level && page_level.sequence_number > level.sequence_number
      "complete"
    end
  end

  def markdown_thing(text)
    Redcarpet::Markdown.new(
        Redcarpet::Render::HTML,
        :autolink => true,
        :space_after_headers => true
    ).render(text)
  end

  def left_half(array)
    split_array_in_half(Array.new(array)).first
  end

  def right_half(array)
    split_array_in_half(Array.new(array)).second
  end

  private

  def split_array_in_half(array)
    array.each_slice((array.size/2.0).round).to_a
  end


end
