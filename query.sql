Select actor.name, actor.surname from Actor
inner join Movie on movie.actor_id = actor.actor_id
where movie.title = "Gone Girl";