json.extract! order, :id, :name, :surname, :street, :number, :city, :phone, :created_at, :updated_at
json.url order_url(order, format: :json)