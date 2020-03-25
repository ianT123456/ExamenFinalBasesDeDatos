 /*Obtener el nombre de equipo del mejor pateador de penales.*/
select other_details.club
from other_details
inner join player_stats on other_details.player_id=player_stats.player_id
where penalties in (select max(penalties) from player_stats);