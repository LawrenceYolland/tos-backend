class Api::V1::PaperSerializer 
    include FastJsonapi::ObjectSerializer
    attributes :id, :title, :abstract, :category, :doi, :rating, :created_at, :user, :reviews
end
