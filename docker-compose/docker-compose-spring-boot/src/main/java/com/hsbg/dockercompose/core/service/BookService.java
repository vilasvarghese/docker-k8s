package com.hsbg.dockercompose.core.service;

import com.hsbg.dockercompose.core.params.BookParam;
import com.hsbg.dockercompose.core.params.BookShelfParam;
import com.hsbg.dockercompose.errorhandler.ResourceNotFoundException;

import java.util.List;

public interface BookService {

    void add(BookParam param);
    void update(BookParam param);
    BookParam getOne(long id) throws ResourceNotFoundException;
    List<BookParam> getAll() throws ResourceNotFoundException;
    void delete(long id) throws ResourceNotFoundException;
}
