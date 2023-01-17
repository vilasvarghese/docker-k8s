package com.hsbg.dockercompose.core.service;

import com.hsbg.dockercompose.core.params.AuthorParam;
import com.hsbg.dockercompose.errorhandler.ResourceNotFoundException;

import java.util.List;

public interface AuthorService {
    void addAuthor(AuthorParam param);

    List<AuthorParam> getAll() throws ResourceNotFoundException;

    void updateAuthor(AuthorParam requestToParam);

    AuthorParam getOne(long id) throws ResourceNotFoundException;

    void delete(long id) throws ResourceNotFoundException;
}
