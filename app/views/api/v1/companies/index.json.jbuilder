json.array! @companies do |company|
  json.extract! company, :id, :user_id, :logo, :name
end
