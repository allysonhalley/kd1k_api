module ApplicationHelper
	STATUSES = {
		activated: "activated",
		desactivated: "desativated",
		undefine: "undefine"
	}
	BR_STATES = {
		AC: "Acre",
		AL: "Alagoas",
		AP: "Amapá",
		AM: "Amazonas",
		BA: "Bahia",
		CE: "Ceará",
		DF: "Distrito Federal",
		ES: "Espírito Santo",
		GO: "Goiás",
		MA: "Maranhão",
		MT: "Mato Grosso",
		MS: "Mato Grosso do Sul",
		MG: "Minas Gerais",
		PA: "Pará",
		PB: "Paraíba",
		PR: "Paraná",
		PE: "Pernambuco",
		PI: "Piauí",
		RJ: "Rio de Janeiro",
		RN: "Rio Grande do Norte",
		RS: "Rio Grande do Sul",
		RO: "Rondônia",
		RR: "Roraima",
		SC: "Santa Catarina",
		SP: "São Paulo",
		SE: "Sergipe",
		TO: "Tocantins"
		}

		def code_string_generator(code_length)
			code = ""
			i = 0
			while code_length > i do
				code = code+(rand(0..9).to_s)
				i += 1
			end
			code
		end
			
	
end
