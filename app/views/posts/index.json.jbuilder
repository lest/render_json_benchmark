json.array!(@posts) do |post|
  json.(post, :id, :title, :content)

  json.author do
    json.partial! 'users/user', user: post.author
  end

  json.comments(post.comments) do |comment|
    json.(comment, :id, :content)

    json.author do
      json.partial! 'users/user', user: comment.author
    end
  end
end
