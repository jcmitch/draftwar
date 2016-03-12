a='http://www.baseball-reference.com/draft/?query_type=franch_year&team_ID='
b='&year_ID='
c='&draft_type=junreg'
team=${1-SEA}
start=${2-2000}
end=${3-2015}
echo "$team WAR Per Year $start-$end"
for ((end;end>=start;end--))
do
    url=$a$team$b$end$c
    result=$(curl -s $url | grep -o "Total of [^<]*")
    echo "$end $result"
done
 