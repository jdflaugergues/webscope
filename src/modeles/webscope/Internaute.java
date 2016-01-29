package modeles.webscope;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.*;

@Entity
public class Internaute {

      @Id
      private String email;
      public void setEmail(String e) {email = e;}
      public String getEmail(){return email;}

      @Column
      private String nom;
      public void setNom(String n) {nom = n;}
      public String getNom() {return nom;}

      @Column
      private String prenom;
      public void setPrenom(String p) {prenom = p;}
      public String getPrenom() {return prenom;}

      @Embedded
      private Adresse adresse;
      public void setAdresse(Adresse a) {adresse = a;}
      public Adresse getAdresse() {return adresse;}
      
      @Embedded
      @AttributeOverrides( {
	      @AttributeOverride(name="adresse", column = @Column(name="adresse_pro") ),
	      @AttributeOverride(name="codePostal", column = @Column(name="code_postal_pro") ),
	      @AttributeOverride(name="ville", column = @Column(name="ville_pro") )
      })
      private Adresse adressePro;
      public void setAdressePro(Adresse a) {adressePro = a;}
      public Adresse getAdressePro() {return adressePro;}
      
      @OneToMany(mappedBy = "pk.internaute" , fetch=FetchType.LAZY)
      private Set<Notation> notations = new HashSet<Notation>();
  	  public Set<Notation> getNotation() {return this.notations;}
  	  public void setNotation(Set<Notation> n) {this.notations = n;}
}