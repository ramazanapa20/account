json.array!(@account_lists) do |account_list|
  json.extract! account_list, :id, :gelirlerim, :giderlerim
  json.url account_list_url(account_list, format: :json)
end
