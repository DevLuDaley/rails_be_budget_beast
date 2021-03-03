class AccountSerializer < ActiveModel::Serializer
  # attributes :id
  	attributes :id, :name, :available_credit, :balance, :total_credit, :apr
  # { name: "Daley", available_credit: 49000, balance: 1000, total_credit: 50000, apr: 18 }
end
