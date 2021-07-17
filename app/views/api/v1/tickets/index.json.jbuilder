json.array! @tickets do |ticket|
  json.extract! ticket, :id, :company_id, :photo, :price, :cashback
end
