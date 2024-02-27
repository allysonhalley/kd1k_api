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
	MILITARY_RANK_NAME = {
		CEL: "Coronel",
		TENCEL: "Tenente Coronel",
		MAJ: "Major",
		CAP: "Capitão",
		TEN1: "1ºTenente",
		TEN2: "2ºTenente",
		ASP: "Aspirante",
		SUBTEN: "SubTenente",
		SGT1: "1ºSargento",
		SGT2: "2ºSargento",
		SGT3: "3ºSargento",
		CB: "Cabo",
		SD: "Soldado"
	}
	MILITARY_RANK_SIGN = {
		CEL: "Cel",
		TENCEL: "TenCel",
		MAJ: "Maj",
		CAP: "Cap",
		TEN1: "1ºTen",
		TEN2: "2ºTen",
		ASP: "Asp",
		SUBTEN: "SubTen",
		SGT1: "1ºSgt",
		SGT2: "2ºSgt",
		SGT3: "3ºSgt",
		CB: "Cb",
		SD: "Sd"
	}
	MILITARY_TYPES = {
		QOCBM: "Quadro de Oficial Bombeiro",
		QOABM: "Quadro de Oficial Administrativo",
		PRACA: "Praça Especial",
		PRACA: "Praça"
	}

	MILITARY_RANK = {
		CEL: 0,
		TENCEL: 1,
		MAJ: 2,
		CAP: 3,
		TEN1: 4,
		TEN2: 5,
		ASP: 6,
		SUBTEN: 7,
		SGT1: 8,
		SGT2: 9,
		SGT3: 10,
		CB: 11,
		SD: 12
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
