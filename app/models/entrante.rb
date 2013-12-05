class Entrante < ActiveRecord::Base
	never_wastes
	validates_presence_of :prot_doc,
												:dt_prot_doc,
												:assunto, 
												:procedimento, 
												:processo_principal, 
												:dt_procedimento
end
