package com.hsbg.dockercompose.core.entity;



import javax.persistence.*;


@Entity(name = "bookshelf")
public class BookShelfEntity extends BaseEntity{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private long id;

    @Column(name = "name")
    private String name;

    @Column(name = "category")
    private String category;

    @Column(name = "capability")
    private long capability;

	public BookShelfEntity() {
		super();
		// TODO Auto-generated constructor stub
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public long getCapability() {
		return capability;
	}

	public void setCapability(long capability) {
		this.capability = capability;
	}


}
