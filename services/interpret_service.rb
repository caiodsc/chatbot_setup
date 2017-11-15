class InterpretService
  def self.call(action, params)
    case action
      when 'actionx', 'actiony'
        XXXModule::YYYService.new(params, action).call()
      when 'actionz'
        XXXModule::ZZZService.new(params).call()
      when 'help'
        HelpService.call()
      else
        'Desculpe, mas não compreendi o seu desejo. Digite "Help" para uma lista completa de comandos!'
    end
  end
end