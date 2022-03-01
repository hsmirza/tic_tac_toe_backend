class StatSerializer < ActiveModel::Serializer
  attributes :id, :win, :loss, :name

  def name
    object.player.name
  end
end
