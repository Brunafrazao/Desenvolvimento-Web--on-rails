require 'rails_helper'

RSpec.describe "contatos/new", type: :view do
  before(:each) do
    assign(:contato, Contato.new(
      :nome => "MyString",
      :telefone => "MyString",
      :idade => 1
    ))
  end

  it "renders new contato form" do
    render

    assert_select "form[action=?][method=?]", contatos_path, "post" do

      assert_select "input[name=?]", "contato[nome]"

      assert_select "input[name=?]", "contato[telefone]"

      assert_select "input[name=?]", "contato[idade]"
    end
  end
end
