
# sed

```sh
# delete 17 front
sed 's/.\{17\}//' b.txt > c.txt

# insert after 5
sed 's/.\{5\}/&\ \ \ /' c.txt > d.txt
```
