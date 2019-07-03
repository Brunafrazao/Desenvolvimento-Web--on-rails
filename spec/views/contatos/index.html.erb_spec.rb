require 'rails_helper'

RSpec.describe "contatos/index", type: :view do
  before(:each) do
    assign(:contatos, [
      Contato.create!(
        :nome => "Nome",
        :telefone => "Telefone",
        :idade => 2
      ),
      Contato.create!(
        :nome => "Nome",
        :telefone => "Telefone",
        :idade => 2
      )
    ])
  end

  it "renders a list of contatos" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Telefone".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
