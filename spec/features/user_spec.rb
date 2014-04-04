require 'spec_helper'

describe User do

  before(:each) do
  end

  shared_examples "a user" do
    describe "file uploads" do
      it 'should be able to upload resume' do
        visit new_resume_path
         fill_in('resume_name', :with => 'John')
         fill_in('Email', :with => 'Seekrit')
         attach_file('File', '/path/to/document.pdf')
         click_button('Submit!')
      end


      it 'should be able to download resume' do
      end
    end
  end

  describe 'submitter' do
    it_behaves_like "a user" do
    end

    it 'should be able to pick a reviewer' do
      pending
      visit new_resume_path
      fill_in('Name', :with => 'John')
      fill_in('Email', :with => 'Seekrit')
      select('Option', :from => 'Select Box')
    end

    it 'should be able to submit payment' do
    end
  end

  describe 'reviewer' do
    it_behaves_like "a user" do
    end

    it 'should be able to write feedback' do #crocodoc?
      pending
    end
  end

end
#refactor - create def form to visit resume path and fill in name and email
