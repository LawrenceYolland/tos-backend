class Api::V1::ReviewSerializer 
    include FastJsonapi::ObjectSerializer
    attributes :id, :content, :created_at, :user_id, :paper_id
end
