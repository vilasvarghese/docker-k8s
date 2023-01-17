package com.hsbg.dockercompose.api.controller;

import com.hsbg.dockercompose.api.model.AuthorResource;
import com.hsbg.dockercompose.api.model.PublisherResource;
import com.hsbg.dockercompose.api.model.TagResource;
import com.hsbg.dockercompose.core.enums.Status;
import com.hsbg.dockercompose.core.service.TagService;
import com.hsbg.dockercompose.errorhandler.ResourceNotFoundException;
import com.hsbg.dockercompose.util.RequestAndParamBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/tag")
public class TagEndpoint {

    @Autowired
    private TagService tagService;

    @Autowired
    private RequestAndParamBuilder requestAndParamBuilder;

    @GetMapping
    public List<TagResource> get() throws ResourceNotFoundException {

        return tagService.getAll().stream()
                .filter(x -> x.getStatus().equals(Status.ACTIVE))
                .map(x -> requestAndParamBuilder.tagParamToResource(x))
                .collect(Collectors.toList());
    }


    @GetMapping(value = "{id}")
    public TagResource getOne(@PathVariable long id) throws ResourceNotFoundException {
        return requestAndParamBuilder.tagParamToResource(tagService.getTag(id));
    }

    @PostMapping
    public void add(@RequestBody TagResource resource){
        tagService.add(requestAndParamBuilder.tagResourceToParam(resource));
    }

    @PutMapping
    public void update(@RequestBody TagResource tagResource){
        tagService.update(requestAndParamBuilder.tagResourceToParam(tagResource));
    }

    @DeleteMapping("{id}")
    public void delete(long id) throws ResourceNotFoundException {
        tagService.delete(id);
    }

}
