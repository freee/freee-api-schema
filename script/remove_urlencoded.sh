
#!/bin/sh
key_to_remove="application/x-www-form-urlencoded"
# 特定のキーをすべての階層から削除し、updated_swagger.json に保存します
jq -c 'walk(if type == "object" then with_entries(select(.key != "'"$key_to_remove"'")) else . end)' tmp/accounting/oas.json > tmp/accounting/removed_oas.json
rm tmp/accounting/oas.json
mv tmp/accounting/removed_oas.json tmp/accounting/oas.json
