require 'spec_helper'

describe "document_states/new" do
  before(:each) do
    assign(:document_state, stub_model(DocumentState,
      :name => "MyString",
      :document_state_prev_id => 1
    ).as_new_record)
  end

  it "renders new document_state form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => document_states_path, :method => "post" do
      assert_select "input#document_state_name", :name => "document_state[name]"
      assert_select "input#document_state_document_state_prev_id", :name => "document_state[document_state_prev_id]"
    end
  end
end
