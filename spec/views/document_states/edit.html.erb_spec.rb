require 'spec_helper'

describe "document_states/edit" do
  before(:each) do
    @document_state = assign(:document_state, stub_model(DocumentState,
      :name => "MyString",
      :document_state_prev_id => 1
    ))
  end

  it "renders the edit document_state form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => document_states_path(@document_state), :method => "post" do
      assert_select "input#document_state_name", :name => "document_state[name]"
      assert_select "input#document_state_document_state_prev_id", :name => "document_state[document_state_prev_id]"
    end
  end
end
