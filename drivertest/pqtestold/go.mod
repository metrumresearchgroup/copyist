module github.com/metrumresearchgroup/copyist/drivertest/pqtestold

go 1.26

// Use separate go.mod file so that ancient version of PQ can be tested, before
// support was added for QueryContext, ExecContext, and BeginTx. This enables
// testing that copyist works even when drivers do not support those functions.
require (
	github.com/lib/pq v1.12.3
	github.com/metrumresearchgroup/copyist v0.0.0-00010101000000-000000000000
)

require (
	github.com/davecgh/go-spew v1.1.1 // indirect
	github.com/fortytw2/leaktest v1.3.0 // indirect
	github.com/jackc/pgpassfile v1.0.0 // indirect
	github.com/jackc/pgservicefile v0.0.0-20240606120523-5a60cdf6a761 // indirect
	github.com/jackc/pgx/v5 v5.9.2 // indirect
	github.com/jmoiron/sqlx v1.4.0 // indirect
	github.com/pkg/errors v0.9.1 // indirect
	github.com/pmezard/go-difflib v1.0.0 // indirect
	github.com/stretchr/testify v1.11.1 // indirect
	golang.org/x/text v0.37.0 // indirect
	gopkg.in/yaml.v3 v3.0.1 // indirect
)

// Reference copyist in the same repo.
replace github.com/metrumresearchgroup/copyist => ./../..

// Override the latest version of lib/pq with an ancient version.
replace github.com/lib/pq => github.com/lib/pq v0.0.0-20170117202628-46f7bf5f8bd7
