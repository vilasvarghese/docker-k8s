package com.hsbg.dockercompose.core.params;

import com.hsbg.dockercompose.core.enums.Status;


import java.util.Date;
import java.util.List;


public class BookParam {
    private long id;

    private String name;
    private String isbn;
    private String overview;
    private Date dateOfPublish;
    private Date dateOfReprint;
    private String acknowledgement;
    private String copyright;
    private String fact;
    private String printedBy;
    private String coverDesigner;
    private String coverPhotoUrl;
    private double price;
    private List<AuthorParam> authors;
    private List<PublisherParam> publishers;
    private List<TagParam> tags;

    private String createdBy;
    private String updatedBy;
    private Status status;
	public BookParam() {
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
	public List<AuthorParam> getAuthors() {
		return authors;
	}
	public void setAuthors(List<AuthorParam> authors) {
		this.authors = authors;
	}
	public List<PublisherParam> getPublishers() {
		return publishers;
	}
	public void setPublishers(List<PublisherParam> publishers) {
		this.publishers = publishers;
	}
	public List<TagParam> getTags() {
		return tags;
	}
	public void setTags(List<TagParam> tags) {
		this.tags = tags;
	}
	public String getCreatedBy() {
		return createdBy;
	}
	public void setCreatedBy(String createdBy) {
		this.createdBy = createdBy;
	}
	public String getUpdatedBy() {
		return updatedBy;
	}
	public void setUpdatedBy(String updatedBy) {
		this.updatedBy = updatedBy;
	}
	public Status getStatus() {
		return status;
	}
	public void setStatus(Status status) {
		this.status = status;
	}


}
