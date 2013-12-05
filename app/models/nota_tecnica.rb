class NotaTecnica < ActiveRecord::Base
	never_wastes
	validates_presence_of :data_nota,
										    :numero_nota,
										    :numero_processo,
										    :status,
										    :nome_do_analista,
										    :area
end
