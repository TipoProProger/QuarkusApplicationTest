package org.acme;

import javax.enterprise.context.ApplicationScoped;

import javax.inject.Inject;

import javax.persistence.EntityManager;
import javax.persistence.Parameter;
import javax.persistence.TypedQuery;
import javax.transaction.Transactional;

@ApplicationScoped
public class MatchService {
    @Inject
    private EntityManager em;
    
    public MatchService() {
    }
    
    @Transactional
    public void addMatch(String name, String description) {
        Match match = new Match();
        match.setName(name);
        match.setDescription(description);
        em.persist(match);
    }
    
    @Transactional
    public String getAll() {
        String answer = "";
        Match buf[] = em.createNamedQuery("Matchs.findAll", Match.class).getResultList().toArray(new Match[0]);
        
        if (buf == null) {
            return "Mass was NULL\n";
        }
        
        for (Match match : buf) {
            if (match == null) {
                continue;
            }
            
            answer += match.getId().toString() + " " + match.getName() + " " + match.getDescription() + "\n";
        }
        
        return answer;        
    }
    
    /*
    public String getMe(String name) {
        for (Match match : matchs) {
            if (match.getName().equals(name)) {
                return "YES";
            }
        }
        
        return "NO";
    }
*/
    @Transactional
    public Match getByName(Match m) {
        TypedQuery<Match> q = em.createNamedQuery("Matchs.findByName", Match.class);
        
        //for (Parameter p : q.getParameters()) {
        //    System.out.print(p.getPosition() + " " + p.getName() + "\n");
        //}
        
        q.setParameter("paramName", m.getName());
        Match buf[] = q.getResultList().toArray(new Match[0]);
        
        if (buf.length == 0) {
            return null;
        } else {
            return buf[0];
        }
    }

}
