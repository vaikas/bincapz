rule selinux : notable {
  strings:
	$ref1 = "SELINUX" fullword
	$ref2 = "setenforce" fullword
  condition:
	any of them
}