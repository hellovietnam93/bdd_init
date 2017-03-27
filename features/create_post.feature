Feature: Create post

Scenario: Creating a new Post
Given user create a post with title is "My second" and content is "Hello, BDD world!"
When user click to submit form
Then I should have a new post with title is "My second"
