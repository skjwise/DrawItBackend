class DrawingSerializer < ActiveModel::Serializer
    attributes :id, :user_id, :url, :number_of_likes
    belongs_to :user
    has_many :likes

    def self.all
        Drawing.all.map{|d| DrawingSerializer.new(d)}
    end
end