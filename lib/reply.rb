require 'active_record'
require './lib/model/Applicant'

def reply_for params
	applicant = Applicant.find_by phone: params[:msisdn]
	if applicant
	  if matchdata = params[:text].match(/^CANDIDATURE (\d+)/)
	    offer = matchdata[1]
	    "Bonjour #{applicant.name}! Je n'ai pas trouvé d'offre avec le numéro #{offer}. C'est vraiment le bon?"
	  else
	    "Bonjour #{applicant.name}! Je n'ai pas compris. Dis moi 'CANDIDATURE xyz' pour répondre à une offre xyz."
	  end
	else
	  "Bonjour! Je suis Kandy, l'assistant personnel des jeunes qui cherchent un job."
	end
	
end