#!/bin/bash

#goimports -w .
#go fmt
#go run main.go

# func with body without upper comments
#ssam -n ',x/^func/ .-1+/^func/,/^}\n/ p' main.go

# func with body with upper comments
#ssam -n ',x/^func/ -/^\n/+,/^}\n/ p' main.go
#ssam -n ',x/^func/ ?^\n?+,/^}\n/ p' main.go
#,x/^func/ -+ |./func.05-head.sh
ssam -n '!./func.00-beg.sh
,x/^func/ ?^\n?+,/^}\n/ {
,x/^func/ -+ |./func.05-head.sh
}' main.go
