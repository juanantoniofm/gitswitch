require 'spec_helper'

describe Gitswitch do

  describe "basics" do
    it "should have a VERSION" do
      Gitswitch::VERSION.should_not == ''
    end

    it "should find the git executable" do
      result = %x[#{Gitswitch::GIT_BIN} --version]
      $?.exitstatus.should == 0
    end    
  end


  describe "read-only" do
    it "should show the current git user credentials" do
      Gitswitch.current_user_info.should =~ /^Your git user/
    end
    it "should show the current list of available gitswitch tags" do
      pending
    end
  end


  describe "write methods" do

    it "should allow you to add a new user entry" do 
      pending
    end

    it "should allow you to update a user entry" do 
      pending
    end

    it "should allow you to delete a user entry" do 
      pending
    end

    it "should allow you to overwrite the current .gitswitch file and start fresh" do
      pending
    end

  end


  describe "git proxy methods" do
    
    it "should allow you to change the global git user credentials" do
      pending
    end
    
    it "should allow you to change a specific repository's user credentials" do 
      pending
    end    
  end


  describe "weird outlier cases" do

    it "in a git repo directory with no user info specified, show the global config header and user info" do
      pending
    end
    
  end

end
