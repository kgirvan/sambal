Given /^I am logged in as admin$/ do
  visit Login do |page|
    log_in "admin", "admin" unless logged_in_user == "admin"
  end
end

Given /^I am logged in as a Schedule Coordinator/ do
  visit Login do |page|
    log_in "martha", "martha" unless logged_in_user == "martha"
  end
end

Given /^I am logged in as a Student/ do
  visit Login do |page|
    log_in "student", "student" unless logged_in_user == "student"
  end
end