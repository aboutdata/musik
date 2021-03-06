package model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotBlank;

@Entity
@Table(name = "person")
public class Person {

	private static final long serialVersionUID = 1L;

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Column
	@NotBlank
	private String firstname;

	@Id
	@Column(name = "id")
	private Integer id;

	@OneToMany(mappedBy = "person", cascade = CascadeType.ALL)
	List<Music> musics;

	@Column
	@NotBlank
	private String name;

	public String getFirstname() {
		return firstname;
	}

	public Integer getId() {
		return id;
	}

	public List<Music> getMusics() {
		return musics;
	}

	public String getName() {
		return name;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public void setMusics(List<Music> musics) {
		this.musics = musics;
	}

	public void setName(String name) {
		this.name = name;
	}

}
