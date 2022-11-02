class AccountsSerializer < ActiveModel::Serializer
  attributes :accountid, :status, :dni, :nombres, :apellido_paterno, :apellido_materno, :birthdate, :tup_dni, :tup_nombres, :tup_apellido_paterno, :tup_apellido_materno, :tup_birthdate
end
