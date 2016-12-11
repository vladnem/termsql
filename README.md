## SQL statements on tabular data

More about termsql: https://tobimensch.github.io/termsql/

### Running query
```
ps aux | docker run --rm -i vladnem/termsql -m -1 "select USER,COUNT(*) from tbl group by USER limit 10;"
```

### Help
```
docker run --rm vladnem/termsql"
```
