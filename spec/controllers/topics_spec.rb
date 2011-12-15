require 'spec_helper'

describe TopicsController do
  render_views

  describe "Post 'create'" do

    describe "failure" do

      before(:each) do
        @attr = { :title => "", :description => "" }
      end

      it "should not create a Topic" do
        lambda do
          post :create, :topic => @attr
        end.should_not change(Topic, :count)
      end

      it "should have the right title" do
        post :create, :topic => @attr
        response.should have_selector("title", :content => "Success")
      end

      it "should render the 'new' page" do
        post :create, :topic => @attr
        response.should render_template('new')
      end

    end
  end
end
