require_relative 'transacao'

def efetua(transacao)
  begin
    puts "BANCO.ABRE_TRANSACAO"
    transacao.efetua!
    puts "BANCO.COMMIT"
  rescue
    puts "BANCO.ROLLBACK"
  end
end

efetua Transacao.new 10
efetua Transacao.new 189
efetua Transacao.new 0
