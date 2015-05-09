module Identificavel
  def codigo
    if defined? cpf
      cpf
    elsif defined? cnpj
      cnpj
    end
  end
end

class Aluno
  include Identificavel
  def cpf
    "000.000.000-00"
  end
end

class Empresa
  include Identificavel
  def cnpj
    "00.000.000/0000-00"
  end
end

puts Aluno.new.codigo
puts Empresa.new.codigo
