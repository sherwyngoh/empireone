json.array!(@cheques) do |cheque|
  json.extract! cheque, :sender, :recipient, :cross, :amount, :date
  json.url cheque_url(cheque, format: :json)
end