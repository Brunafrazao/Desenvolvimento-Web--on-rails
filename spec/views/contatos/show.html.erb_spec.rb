require 'rails_helper'

RSpec.describe "contatos/show", type: :view do
  before(:each) do
    @contato = assign(:contato, Contato.create!(
      :nome => "Nome",
      :telefone => "Telefone",
      :idade => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/Telefone/)
    expect(rendered).to match(/2/)
  end
end
