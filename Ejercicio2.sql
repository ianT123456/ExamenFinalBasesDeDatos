/*b) Mostrar el nombre y edad del jugado mas joven del Real Madrid CF.*/
select personal_details.player_name,personal_details.age
from personal_details
where age in(select min(personal_details.age) from personal_details
inner join other_details on personal_details.player_id=other_details.player_id
where other_details.club='Real Madrid CF')

 