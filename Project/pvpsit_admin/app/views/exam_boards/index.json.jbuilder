json.array!(@exam_boards) do |exam_board|
  json.extract! exam_board, :id, :title, :url
  json.url exam_board_url(exam_board, format: :json)
end
