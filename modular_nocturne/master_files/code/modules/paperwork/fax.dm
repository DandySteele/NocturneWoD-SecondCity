/obj/machinery/fax/admin/endron
	fax_name = EVIL_PHARMA_COMPANY + " South Coachella HQ"
	fax_id = "magadonadmin"

/obj/machinery/fax/admin/themayor
	fax_name = "Mayor Eriksen's Personal Fax"
	fax_id = "themayoradmin"

/obj/machinery/fax/autumnhealth
	fax_name = EVIL_HOSPITAL_COMPANY + " Management"
	fax_id = "autumnhealth"
	special_networks = list(magadonadmin = list(fax_name = EVIL_PHARMA_COMPANY + " South Coachella HQ", fax_id = "magadonadmin", color = "purple", emag_needed = FALSE))

/obj/machinery/fax/townhall
	fax_name = "Palm Desert Town Hall"
	fax_id = "townhall"
	special_networks = list(themayoradmin = list(fax_name = "Mayor Eriksen's Personal Fax", fax_id = "themayoradmin", color = "green", emag_needed = FALSE),
							policeadmin = list(fax_name = "California State Government", fax_id = "policeadmin", color = "blue", emag_needed = FALSE))
