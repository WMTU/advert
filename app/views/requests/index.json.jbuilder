json.array!(@requests) do |request|
  json.extract! request, :id, :ticket, :email, :name, :phone, :org, :date_start, :date_end, :date_submitted, :info
  json.url request_url(request, format: :json)
end
