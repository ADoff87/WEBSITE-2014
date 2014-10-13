json.array!(@project_pieces) do |project_piece|
  json.extract! project_piece, :id
  json.url project_piece_url(project_piece, format: :json)
end
