require 'active_record'
require './lib/model/Applicant'

def reply_for params
	applicant = Applicant.find_by phone: params[:msisdn]
	if applicant
	  "Bonjour #{applicant.name}! Je n'ai pas compris. Dis moi 'CANDIDATURE xyz' pour répondre à une offre xyz."
	else
	  "Bonjour! Je suis Kandy, l'assistant personnel des jeunes qui cherchent un job."
	end
	
end