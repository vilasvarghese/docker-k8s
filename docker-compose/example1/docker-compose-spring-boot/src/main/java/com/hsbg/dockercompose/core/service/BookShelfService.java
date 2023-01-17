package com.hsbg.dockercompose.core.service;

import com.hsbg.dockercompose.core.params.BookShelfParam;
import com.hsbg.dockercompose.core.params.TagParam;
import com.hsbg.dockercompose.errorhandler.ResourceNotFoundException;

import java.util.List;

public interface BookShelfService {
    void add(BookShelfParam param);
    void update(BookShelfParam param);
    BookShelfParam getOne(long id) throws ResourceNotFoundException;
    List<BookShelfParam> getAll() throws ResourceNotFoundException;
    void delete(long id) throws ResourceNotFoundException;
}
