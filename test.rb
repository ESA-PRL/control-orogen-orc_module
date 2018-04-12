require 'orocos'
require 'readline'

include Orocos
Orocos.initialize

Orocos.run 'orc_module::Task' => 'orc_module' do

  orc_module = Orocos.name_service.get 'orc_module'
  orc_module.configure
  orc_module.start

  Readline::readline("Press ENTER to exit\n")
  orc_module.stop
  orc_module.cleanup
end
