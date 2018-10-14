json.extract! product, :id, :inventory, :name, :buy_date, :category, :experation_date, :route_id, :which_user, :when_update, :create_date, :plaints_sum, :created_at, :updated_at
json.url product_url(product, format: :json)
