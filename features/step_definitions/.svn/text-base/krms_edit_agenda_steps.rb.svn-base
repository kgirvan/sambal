When /^I go to the Edit Agenda page$/ do
  go_to_krms_edit_agenda
end

Then /^there should be (\d+) possible selections for the "(.*?)" list$/ do |num, list|
  #selection = {"Rule"=>:select_rule}
  on EditAgenda do |page|
    selectList = page.select_rule
    selectContent = selectList.options.map(&:text)
    count = 0
    selectContent.each do |content|
      if content == "" || content == "Select One"
      else
        count += 1
      end
    end
    count.to_s.should eq num
  end
end

Then /^the "(.*?)" section should not be visible$/ do |section|
  sections = {"view"=>:rule_view_section, "edit"=>:rule_edit_section}
  on EditAgenda do |page|
    true if !page.send(sections[section]).present?
  end
end

Then /^the "(.*?)" section should be visible$/ do |section|
  sections = {"view"=>:rule_view_section, "edit"=>:rule_edit_section}
  on EditAgenda do |page|
    true if page.send(sections[section]).present?
  end
end

When /^I select a random option from the dropdown list$/ do
  on EditAgenda do |page|
    selectList = page.select_rule
    selectContent = selectList.options.map(&:text)
    selectContent.shift
    r = rand(5)
    page.select_rule.select selectContent[r]
  end
  sleep 2
end