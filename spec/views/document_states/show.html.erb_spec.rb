require 'spec_helper'

describe "document_states/show" do
  before(:each) do
    @document_state = assign(:document_state, stub_model(DocumentState,
      :name => "Name",
      :document_state_prev_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
  end
end
