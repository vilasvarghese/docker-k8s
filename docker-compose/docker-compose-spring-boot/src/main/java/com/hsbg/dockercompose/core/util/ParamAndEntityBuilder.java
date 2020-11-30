package com.hsbg.dockercompose.core.util;

import com.hsbg.dockercompose.core.entity.*;
import com.hsbg.dockercompose.core.params.*;
import org.springframework.stereotype.Component;

import java.util.stream.Collector;
import java.util.stream.Collectors;

@Component
public class ParamAndEntityBuilder {

    public AuthorEntity authorParamToEntity(AuthorParam param) {

        AuthorEntity entity = new AuthorEntity();
        entity.setId(param.getId());
        entity.setName(param.getName());
        entity.setNickname(param.getNickname());
        entity.setAddress(param.getAddress());
        entity.setBiography(param.getBiography());
        entity.setBackground(param.getBackground());
        entity.setEmail(param.getEmail());
        entity.setMobile(param.getMobile());
        entity.setBirthDate(param.getBirthDate());
        entity.setCountry(param.getCountry());
        entity.setCreatedBy(param.getCreatedBy());
        entity.setUpdatedBy(param.getUpdatedBy());
        entity.setStatus(param.getStatus());

        return entity;
    }

    public AuthorParam authorEntityToParam(AuthorEntity authorEntity) {

        AuthorParam param = new AuthorParam();
        param.setId(authorEntity.getId());
        param.setName(authorEntity.getName());
        param.setNickname(authorEntity.getNickname());
        param.setAddress(authorEntity.getAddress());
        param.setBiography(authorEntity.getBiography());
        param.setBackground(authorEntity.getBackground());
        param.setEmail(authorEntity.getEmail());
        param.setMobile(authorEntity.getMobile());
        param.setBirthDate(authorEntity.getBirthDate());
        param.setCountry(authorEntity.getCountry());
        param.setCreatedBy(authorEntity.getCreatedBy());
        param.setUpdatedBy(authorEntity.getUpdatedBy());
        param.setStatus(authorEntity.getStatus());

        return param;
    }

    public PublisherEntity publisherParamToEntity(PublisherParam param) {
        PublisherEntity entity = new PublisherEntity();

        entity.setId(param.getId());
        entity.setName(param.getName());
        entity.setMobile(param.getMobile());
        entity.setAbout(param.getAbout());
        entity.setAddress(param.getAddress());
        entity.setContactPersonName(param.getContactPersonName());
        entity.setContactPersonMobile(param.getContactPersonMobile());
        entity.setEmail(param.getEmail());
        entity.setFacebookPage(param.getFacebookPage());
        entity.setWebsite(param.getWebsite());
        entity.setCreatedBy(param.getCreatedBy());
        entity.setUpdatedBy(param.getUpdatedBy());
        entity.setStatus(param.getStatus());

        return entity;
    }

    public PublisherParam publisherEntityToParam(PublisherEntity entity) {
        PublisherParam param = new PublisherParam();
        param.setId(entity.getId());
        param.setName(entity.getName());
        param.setMobile(entity.getMobile());
        param.setAbout(entity.getAbout());
        param.setAddress(entity.getAddress());
        param.setContactPersonName(entity.getContactPersonName());
        param.setContactPersonMobile(entity.getContactPersonMobile());
        param.setEmail(entity.getEmail());
        param.setFacebookPage(entity.getFacebookPage());
        param.setWebsite(entity.getWebsite());
        param.setCreatedBy(entity.getCreatedBy());
        param.setUpdatedBy(entity.getUpdatedBy());
        param.setStatus(entity.getStatus());

        return param;
    }

    public TagEntity tagParamToEntity(TagParam param) {
        TagEntity entity = new TagEntity();

        entity.setId(param.getId());
        entity.setName(param.getName());
        entity.setCategory(param.getCategory());
        entity.setCreatedBy(param.getCreatedBy());
        entity.setUpdatedBy(param.getUpdatedBy());
        entity.setStatus(param.getStatus());

        return entity;
    }

    public TagParam tagEntityToParam(TagEntity entity) {

        TagParam param = new TagParam();
        param.setId(entity.getId());
        param.setName(entity.getName());
        param.setCategory(entity.getCategory());
        param.setCreatedBy(entity.getCreatedBy());
        param.setUpdatedBy(entity.getUpdatedBy());
        param.setStatus(entity.getStatus());

        return param;
    }

    public BookShelfEntity bookShelfParamToEntity(BookShelfParam param) {
        BookShelfEntity entity = new BookShelfEntity();

        entity.setId(param.getId());
        entity.setName(param.getName());
        entity.setCategory(param.getCategory());
        entity.setCapability(param.getCapability());
        entity.setCreatedBy(param.getCreatedBy());
        entity.setUpdatedBy(param.getUpdatedBy());
        entity.setStatus(param.getStatus());

        return entity;
    }

    public BookShelfParam bookShelfEntityToParam(BookShelfEntity entity) {

        BookShelfParam param = new BookShelfParam();
        param.setId(entity.getId());
        param.setName(entity.getName());
        param.setCategory(entity.getCategory());
        param.setCapability(entity.getCapability());
        param.setCreatedBy(entity.getCreatedBy());
        param.setUpdatedBy(entity.getUpdatedBy());
        param.setStatus(entity.getStatus());

        return param;
    }

    public BookEntity bookParamToEntity(BookParam param) {
        BookEntity entity = new BookEntity();

        entity.setId(param.getId());
        entity.setName(param.getName());
        entity.setAcknowledgement(param.getAcknowledgement());
        entity.setCopyright(param.getCopyright());
        entity.setCoverDesigner(param.getCoverDesigner());
        entity.setCoverPhotoUrl(param.getCoverPhotoUrl());
        entity.setDateOfPublish(param.getDateOfPublish());
        entity.setDateOfReprint(param.getDateOfReprint());
        entity.setFact(param.getFact());
        entity.setIsbn(param.getIsbn());
        entity.setOverview(param.getOverview());
        entity.setPrice(param.getPrice());
        entity.setPrintedBy(param.getPrintedBy());
        entity.setAuthors(param.getAuthors().stream()
                .map(x -> authorParamToEntity(x))
                .collect(Collectors.toList()));
        entity.setPublishers(param.getPublishers().stream()
                .map(x -> publisherParamToEntity(x))
                .collect(Collectors.toList()));
        entity.setTags(param.getTags().stream()
                .map(x -> tagParamToEntity(x))
                .collect(Collectors.toList()));
        entity.setCreatedBy(param.getCreatedBy());
        entity.setUpdatedBy(param.getUpdatedBy());
        entity.setStatus(param.getStatus());

        return entity;
    }

    public BookParam bookEntityToParam(BookEntity entity) {

        BookParam param = new BookParam();
        param.setId(entity.getId());
        param.setName(entity.getName());

        param.setAcknowledgement(entity.getAcknowledgement());
        param.setCopyright(entity.getCopyright());
        param.setCoverDesigner(entity.getCoverDesigner());
        param.setCoverPhotoUrl(entity.getCoverPhotoUrl());
        param.setDateOfPublish(entity.getDateOfPublish());
        param.setDateOfReprint(entity.getDateOfReprint());
        param.setFact(entity.getFact());
        param.setIsbn(entity.getIsbn());
        param.setOverview(entity.getOverview());
        param.setPrice(entity.getPrice());
        param.setPrintedBy(entity.getPrintedBy());
        param.setAuthors(entity.getAuthors().stream()
                .map(x -> authorEntityToParam(x))
                .collect(Collectors.toList()));
        param.setPublishers(entity.getPublishers().stream()
                .map(x -> publisherEntityToParam(x))
                .collect(Collectors.toList()));
        param.setTags(entity.getTags().stream()
                .map(x -> tagEntityToParam(x))
                .collect(Collectors.toList()));

        param.setCreatedBy(entity.getCreatedBy());
        param.setUpdatedBy(entity.getUpdatedBy());
        param.setStatus(entity.getStatus());

        return param;
    }
}
