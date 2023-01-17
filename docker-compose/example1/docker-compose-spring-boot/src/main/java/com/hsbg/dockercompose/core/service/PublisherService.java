package com.hsbg.dockercompose.core.service;

import com.hsbg.dockercompose.core.params.PublisherParam;
import com.hsbg.dockercompose.errorhandler.ResourceNotFoundException;

import java.util.List;

public interface PublisherService {
    void addPublisher(PublisherParam param);

    List<PublisherParam> getAll() throws ResourceNotFoundException;

    void updatePublisher(PublisherParam requestToParam);

    PublisherParam getOne(long id) throws ResourceNotFoundException;

    void delete(long id) throws ResourceNotFoundException;
}
