attributes :id, :title, :content

node :author do |post|
  partial('users/user', object: post.author)
end

child(:comments) do
  attributes :id, :content
  node :author do |comment|
    partial('users/user', object: comment.author)
  end
end
