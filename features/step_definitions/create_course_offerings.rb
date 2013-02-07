When /^I designate a valid term and Catalog Course Code$/ do
  @course_offering = make CourseOffering, :course => "CHEM132", :grade_format => "Quiz", :delivery_format => "Lecture/Quiz"
  @course_offering.create_by_search
end

When /^I designate a valid term and Catalog Course Code for lecture formats$/ do
  @course_offering = make CourseOffering, :course => "ENGL310", :grade_format => "Quiz", :delivery_format => "Lecture/Quiz"
  @course_offering.create_by_search
end

And /^I create a Course Offering with selected Delivery Formats$/ do
  @course_offering.create
end

Then /^the new Course Offering should contain only the selected delivery formats$/ do
  @course_offering.search_by_subjectcode
  @course_offering.view_course_details
  on ManageCourseDetails do  |page|
    @course_offering.delivery_format_list.each do |del_option|
      page.get_delivery_format(del_option.format).should == del_option.format
      page.get_grade_roster_level(del_option.format).should == del_option.grade_format
    end
  end
end

And /^I copy a course offering from an existing offering to exclude instructor information$/ do
  @course_offering = make CourseOffering, :course => "CHEM132", :create_from_existing=>1
  @course_offering.create
end

Then /^the new Course Offering should be displayed in the list of available offerings\.$/ do
  @course_offering.manage
  on ManageCourseOfferings do |page|
    page.error_message_course_not_found.should_not be_present
  end
  #@course_offering.delete_co :should_delete_from_subj_code_view=>false, :should_confirm_delete=>true
end