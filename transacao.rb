class Transacao
  def initialize(quantidade)
    @quantidade = quantidade
  end

  def efetua!
    if @quantidade && @quantidade > 0
      puts "Transacao efetuada com sucesso"
    else
      raise "Nao pode ser zero"
    end
  end
end
