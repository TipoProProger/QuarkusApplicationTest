package org.acme;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import javax.enterprise.context.ApplicationScoped;

import javax.inject.Inject;

import javax.sql.DataSource;

import java.util.ArrayList;

@ApplicationScoped
public class MatchService {
 
    private ArrayList<Match> matchs = new ArrayList<>();

    public MatchService() {
        matchs.add(0, new Match("kek", "kekDescription"));
    }
    
    public String getAll() {
        String buf = "";
        for (Match match : matchs) {
            buf += match.getName() + " ";
        }
        
        return buf;        
    }
    
    public String getMe(String name) {
        for (Match match : matchs) {
            if (match.getName().equals(name)) {
                return "YES";
            }
        }
        
        return "NO";
    }

    public Match getByName(Match m) {
        for (Match match : matchs) {
            if (match.equals(m)) {
                return match;
            }
        }
        
        return null;
    }
}
