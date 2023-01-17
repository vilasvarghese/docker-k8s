package com.hsbg.dockercompose.core.entity;



import javax.persistence.*;
import java.util.Date;
import java.util.List;

@Entity(name = "book")
public class BookEntity extends BaseEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private long id;

    @Column(name = "name")
    private String name;

    @Column(name = "isbn")
    private String isbn;

    @Column(name = "overview")
    private String overview;

    @Column(name = "date_of_publish")
    private Date dateOfPublish;

    @Column(name = "date_of_repring")
    private Date dateOfReprint;

    @Column(name = "acknowledgement")
    private String acknowledgement;

    @Column(name = "copyright")
    private String copyright;

    @Column(name = "fact")
    private String fact;

    @Column(name = "printed_by")
    private String printedBy;

    @Column(name = "cover_designer")
    private String coverDesigner;

    @Column(name = "cover_photo_url")
    private String coverPhotoUrl;

    @Column(name = "price")
    private double price;

    @ManyToMany
    @JoinTable(
            name = "book_publisher",
            joinColumns = @JoinColumn(name = "book_id"),
            inverseJoinColumns = @JoinColumn(name = "publisher_id"))
    private List<PublisherEntity> publishers;

    @ManyToMany
    @JoinTable(
            name = "book_author",
            joinColumns = @JoinColumn(name = "book_id"),
            inverseJoinColumns = @JoinColumn(name = "author_id"))
    private List<AuthorEntity> authors;

    @ManyToMany
    @JoinTable(
            name = "book_tag",
            joinColumns = @JoinColumn(name = "book_id"),
            inverseJoinColumns = @JoinColumn(name = "tag_id"))
    private List<TagEntity> tags;

	public BookEntity() {
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

	public String getIsbn() {
		return isbn;
	}

	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}

	public String getOverview() {
		return overview;
	}

	public void setOverview(String overview) {
		this.overview = overview;
	}

	public Date getDateOfPublish() {
		return dateOfPublish;
	}

	public void setDateOfPublish(Date dateOfPublish) {
		this.dateOfPublish = dateOfPublish;
	}

	public Date getDateOfReprint() {
		return dateOfReprint;
	}

	public void setDateOfReprint(Date dateOfReprint) {
		this.dateOfReprint = dateOfReprint;
	}

	public String getAcknowledgement() {
		return acknowledgement;
	}

	public void setAcknowledgement(String acknowledgement) {
		this.acknowledgement = acknowledgement;
	}

	public String getCopyright() {
		return copyright;
	}

	public void setCopyright(String copyright) {
		this.copyright = copyright;
	}

	public String getFact() {
		return fact;
	}

	public void setFact(String fact) {
		this.fact = fact;
	}

	public String getPrintedBy() {
		return printedBy;
	}

	public void setPrintedBy(String printedBy) {
		this.printedBy = printedBy;
	}

	public String getCoverDesigner() {
		return coverDesigner;
	}

	public void setCoverDesigner(String coverDesigner) {
		this.coverDesigner = coverDesigner;
	}

	public String getCoverPhotoUrl() {
		return coverPhotoUrl;
	}

	public void setCoverPhotoUrl(String coverPhotoUrl) {
		this.coverPhotoUrl = coverPhotoUrl;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public List<PublisherEntity> getPublishers() {
		return publishers;
	}

	public void setPublishers(List<PublisherEntity> publishers) {
		this.publishers = publishers;
	}

	public List<AuthorEntity> getAuthors() {
		return authors;
	}

	public void setAuthors(List<AuthorEntity> authors) {
		this.authors = authors;
	}

	public List<TagEntity> getTags() {
		return tags;
	}

	public void setTags(List<TagEntity> tags) {
		this.tags = tags;
	}

    
    
}
