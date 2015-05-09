class Pessoa
  def initialize(nome, telefone)
    @nome = nome
    @telefone = telefone
  end
  def nome
    @nome
  end
  def telefone
    @telefone
  end
end

contatos = []

contatos << Pessoa.new("Marcel", "9999-9999")
contatos << Pessoa.new("Teste", "7777-7777")
contatos << Pessoa.new("Opa", "8888-8888")

puts contatos

contatos_com_nome_marcel = contatos.select do |contato|
  contato.nome == "Marcel"
end

telefones = contatos.map do |contato|
  contato.telefone
end

puts "Contatos com nome Marcel: #{contatos_com_nome_marcel}"
puts "Tefefones: #{telefones}"
