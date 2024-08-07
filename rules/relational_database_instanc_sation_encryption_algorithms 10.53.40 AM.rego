package rules.relational_database_instanc_sation_encryption_algorithms

__rego__metadoc__ := {
	"custom": {
		"controls": {
			"RelationalDB2": [
				"RelationalDB2_A"
			]
		},
		"severity": "Medium"
	},
	"description": "Document: Technology Engineering - Relational database - Best Practice - Version: 1.0",
	"id": "A",
	"title": "Relational database instances and clusters shall be encrypted at rest using organisation standard encryption algorithms.",
}

# Please write your OPA rule here
input_type = "tf"

resource_type = "aws_db_instance"

default allow = false
allow {
  input.storage_encrypted == true
}

