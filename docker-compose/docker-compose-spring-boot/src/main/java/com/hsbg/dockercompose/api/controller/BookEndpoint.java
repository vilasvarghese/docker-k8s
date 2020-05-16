package com.hsbg.dockercompose.api.controller;

import com.hsbg.dockercompose.api.model.AuthorResource;
import com.hsbg.dockercompose.api.model.BookResource;
import com.hsbg.dockercompose.api.model.BookShelfResource;
import com.hsbg.dockercompose.core.enums.Status;
import com.hsbg.dockercompose.core.service.BookService;
import com.hsbg.dockercompose.errorhandler.ResourceNotFoundException;
import com.hsbg.dockercompose.util.RequestAndParamBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.stream.Collectors;

@RestController
@RequestMapping("book")
public class BookEndpoint {

    @Autowired
    private BookService bookService;

    @Autowired
    private RequestAndParamBuilder requestAndParamBuilder;

    @GetMapping
    public List<BookResource> get() throws ResourceNotFoundException {

        return bookService.getAll().stream()
                .filter(x -> x.getStatus().equals(Status.ACTIVE))
                .map(x -> requestAndParamBuilder.bookParamToResource(x))
                .collect(Collectors.toList());
    }


    @GetMapping(value = "{id}")
    public BookResource getOne(@PathVariable long id) throws ResourceNotFoundException {
        return requestAndParamBuilder.bookParamToResource(bookService.getOne(id));
    }

    @PostMapping
    public void add(@RequestBody BookResource resource){
        bookService.add(requestAndParamBuilder.bookResourceToParam(resource));
    }

    @PutMapping
    public void update(@RequestBody BookResource resource){
        bookService.update(requestAndParamBuilder.bookResourceToParam(resource));
    }

    @DeleteMapping("{id}")
    public void delete(long id) throws ResourceNotFoundException {
        bookService.delete(id);
    }
}
