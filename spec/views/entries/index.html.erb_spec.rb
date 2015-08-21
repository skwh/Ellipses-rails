require 'rails_helper'

RSpec.describe "entries/index", type: :view do
  before(:each) do
    assign(:entries, [
      Entry.create!(
        :title => "Title",
        :author => "Author",
        :body => "MyText"
      ),
      Entry.create!(
        :title => "Title",
        :author => "Author",
        :body => "MyText"
      )
    ])
  end

  it "renders a list of entries" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Author".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
