package com.jonkim.game_calender.Repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import com.jonkim.game_calender.Entity.Games;

public interface GameRepository extends JpaRepository<Games, Integer> {

}
