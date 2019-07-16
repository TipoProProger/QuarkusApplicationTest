package org.acme;

import java.util.Objects;
import javax.persistence.Column;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQuery;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name = "Matchs")
@NamedQuery(name = "Matchs.findAll",
      query = "FROM Match")
@NamedQuery(name = "Matchs.findByName",
      query = "SELECT m FROM Match m WHERE name = :paramName")
public class Match {
    
    @Id
    @SequenceGenerator(
            name = "matchsSequence",
            sequenceName = "Matchs_id_seq",
            allocationSize = 1,
            initialValue = 1)
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "matchsSequence")
    @Column(name = "Id", updatable = false, nullable = false)
    private Long id;
    
    @Column(length = 40, unique = true)
    private String name;
    
    @Column(length = 50, unique = false)
    private String description;

    public Match() {
    }

    public Long getId() {
        return id;
    }
    
    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return this.description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Override
    public boolean equals(Object obj) {
        if (!(obj instanceof Match)) {
            return false;
        }

        Match other = (Match) obj;

        return Objects.equals(other.name, this.name);
    }

    @Override
    public int hashCode() {
        return Objects.hash(this.name);
    }
}
/*
import java.util.Objects;


import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.OneToMany;

import io.quarkus.runtime.annotations.RegisterForReflection;

@RegisterForReflection
public class Match {

    public String name;
    public String description;


    @OneToMany(mappedBy = "match", cascade = CascadeType.ALL, orphanRemoval = true, fetch = FetchType.EAGER)

    @Override
    public boolean equals(Object obj) {
        if (!(obj instanceof Match)) {
            return false;
        }

        Match other = (Match) obj;

        return Objects.equals(other.name, this.name);
    }
}
*/
