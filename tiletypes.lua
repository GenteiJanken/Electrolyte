--[[ tile 'struct' format
	name = {
	tilesetno,
	solid?.
	insulating?,
	resistance

	}
--]]

max_resistance = 1000

	tileset = {

		floor = {
			tilesetno = 1,
			solid? = false,
			insulating? = true,
			resistance = max_resistance

		}

		wall = {
			tilesetno = 2,
			solid? = false,
			insulating? = true,
			resistance = max_resistance

		}

		cabled = {
			tilesetno = 3,
			solid? = false,
			insulating? = false,
			resistance

		}


		water = {
			tilesetno = 4,
			solid? = false,
			insulating? = false,
			resistance
		}

		saltwater = {
			tilesetno = 4,
			solid? = false,
			insulating? = false,
			resistance

		}

		insulator = {
			tilesetno = 7,
			solid? = false,
			insulating? = true,
			resistance = max_resistance

		}

		superconductor = {
			tilesetno = 8,
			solid? = false,
			insulating? = false,
			resistance

		}

		switchoff = {
			tilesetno = 9,
			solid? = true,
			insulating? = true,
			resistance = max_resistance

		}

		switchon = {
			tilesetno = 10,
			solid? = true,
			insulating? = false, --special case
			resistance

		}


	}


