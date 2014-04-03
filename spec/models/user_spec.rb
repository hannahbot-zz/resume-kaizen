require 'spec_helper'

describe User do

  before(:each) do
  end

  shared_examples "a user" do
    describe "file uploads" do
      it 'should be able to upload resume' do
      end

      it 'should be able to download resume' do
      end
    end
  end

  describe 'submitter' do
    it_behaves_like "a user" do
    end

    it 'should be able to pick a reviewer' do
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
