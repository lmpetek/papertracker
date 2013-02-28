require 'spec_helper'

describe "document_states/index" do
  before(:each) do
    assign(:document_states, [
      stub_model(DocumentState,
        :name => "Name",
        :document_state_prev_id => 1
      ),
      stub_model(DocumentState,
        :name => "Name",
        :document_state_prev_id => 1
      )
    ])
  end

  it "renders a list of document_states" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
