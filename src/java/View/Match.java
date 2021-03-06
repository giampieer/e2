package View;
// Generated 14/05/2018 02:53:48 PM by Hibernate Tools 4.3.1


import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * Match generated by hbm2java
 */
@Entity
@Table(name="match"
    ,catalog="db_match"
)
public class Match  implements java.io.Serializable {


     private Integer idmatch;
     private String matchName;
     private Date date;
     private Set<Ticket> tickets = new HashSet<Ticket>(0);

    public Match() {
    }

    public Match(String matchName, Date date, Set<Ticket> tickets) {
       this.matchName = matchName;
       this.date = date;
       this.tickets = tickets;
    }
   
     @Id @GeneratedValue(strategy=IDENTITY)

    
    @Column(name="idmatch", unique=true, nullable=false)
    public Integer getIdmatch() {
        return this.idmatch;
    }
    
    public void setIdmatch(Integer idmatch) {
        this.idmatch = idmatch;
    }

    
    @Column(name="match_name", length=45)
    public String getMatchName() {
        return this.matchName;
    }
    
    public void setMatchName(String matchName) {
        this.matchName = matchName;
    }

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name="date", length=19)
    public Date getDate() {
        return this.date;
    }
    
    public void setDate(Date date) {
        this.date = date;
    }

@OneToMany(fetch=FetchType.LAZY, mappedBy="match")
    public Set<Ticket> getTickets() {
        return this.tickets;
    }
    
    public void setTickets(Set<Ticket> tickets) {
        this.tickets = tickets;
    }




}


