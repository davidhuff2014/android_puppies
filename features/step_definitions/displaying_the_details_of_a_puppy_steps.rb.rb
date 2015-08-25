When(/^I want to learn more information about "([^"]*)"$/) do |name|
  on(PuppyListScreen).details_for name
end

Then(/^I will be able to see "([^"]*)"s details$/) do |name|
  expect(on(PuppyDetailsScreen).name).to eq name
end

Then(/^I know that he is a type of "([^"]*)"$/) do |breed|
  expect(on(PuppyDetailScreen).breed).to eq breed
end

And(/^I know that he is a "([^"]*)"$/) do |gender|
  expect(on(PuppyDetailScreen).gender).to eq gender
end

Then(/^I can see that my puppy "([^"]*)"$/) do |description|
  expect(on(PuppyDetailScreen).description).to eq description
end

Then(/^I can look into the eyes of my puppy before I make my decision$/) do
  on(PuppyDetailScreen).wait_for_headshot
end

Then(/^I know that the adoption fee is "([^"]*)"$/) do |adoption_fee|
  expect(on(PuppyDetailScreen).fee).to eq adoption_fee
end