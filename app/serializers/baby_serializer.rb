class BabySerializer < ActiveModel::Serializer
  attributes :id,
             :age,
             :user_id
end
