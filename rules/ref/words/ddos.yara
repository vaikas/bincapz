

rule flooder : suspicious {
	meta:
		description = "References an IP flooder"
	strings:
		$ref = "flooder" fullword
		$ref2 = "FLOODER" fullword
		$ref3 = "Flood operation"
		$ref4 = "Starting Flood"
		$ref5 = "stresser" fullword
		$ref6 = "dosia" fullword
	condition:
		any of them
}