Given(/^user create a post with title is "(.*?)" and content is "(.*?)"$/) do |title, content|
  @post = Post.new title: title, content: content
end

When(/^user click to submit form$/) do
  @post.save
  visit "/"
end

Then(/^I should have a new post with title is "(.*?)"$/) do |title|
  @post = Post.find_by_title(title)
  expect(page).to have_content(@post.title)
  expect(page).to have_content(@post.content)
end
