package com.hsbg.dockercompose.core.service;

import com.hsbg.dockercompose.core.params.TagParam;
import com.hsbg.dockercompose.errorhandler.ResourceNotFoundException;

import java.util.List;

public interface TagService {
    void add(TagParam param);
    void update(TagParam param);
    TagParam getTag(long id) throws ResourceNotFoundException;
    List<TagParam> getAll() throws ResourceNotFoundException;
    void delete(long id) throws ResourceNotFoundException;
}
