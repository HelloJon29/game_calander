package com.jonkim.game_calender.Entity;

import java.sql.Date;

import org.springframework.data.annotation.Id;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Lob;
import jakarta.persistence.Table;

@Entity
@Table(name = "Games")
public class Games {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false, columnDefinition = "INT")
    private long id;
    @Column(name = "name", nullable = false, columnDefinition = "VARCHAR")
    private String name;
    private String description;
    private Date releaseDate;
    @Lob
    private byte[] thumbnail;
}
