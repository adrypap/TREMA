package it.contrader.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import org.springframework.lang.Nullable;

import lombok.*;

@Data   //genera get e set
@AllArgsConstructor//genera il construct[lib lombok]
@NoArgsConstructor
@Entity			//associa classe tab db
@Table(name="user")

public class User implements Serializable{

	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "idUser")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer idUser;

	@Column(name = "user")
	@NotNull
	private String user;

	@Column(name = "password")
	@NotNull
	private String password;
	
	@Nullable
	@Column(name = "name_user")
	private String name_user;

	@Nullable
	@Column(name = "surname_user")
	private String surname_user;
	
	@NotNull
	@Column(name = "azienda")
	private String azienda;

	@NotNull
	@Column(name = "usertype")
	private String usertype;
	
	@OneToMany(mappedBy="user")
	private List<Project> projects;
		
}
