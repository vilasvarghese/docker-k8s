package com.hsbg.dockercompose.core.service;

import com.hsbg.dockercompose.config.Translator;
import com.hsbg.dockercompose.core.entity.BookEntity;
import com.hsbg.dockercompose.core.enums.Status;
import com.hsbg.dockercompose.core.params.BookParam;
import com.hsbg.dockercompose.core.repository.BookRepository;
import com.hsbg.dockercompose.core.util.ParamAndEntityBuilder;
import com.hsbg.dockercompose.errorhandler.ErrorCodes;
import com.hsbg.dockercompose.errorhandler.ResourceNotFoundException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class BookServiceImpl implements BookService {

    @Autowired
    private BookRepository bookRepository;

    @Autowired
    private ParamAndEntityBuilder paramAndEntityBuilder;

    @Autowired
    private Translator translator;

    @Override
    public void add(BookParam param) {
        param.setStatus(Status.ACTIVE);
        bookRepository.save(paramAndEntityBuilder.bookParamToEntity(param));
    }

    @Override
    public void update(BookParam param) {
        param.setStatus(Status.ACTIVE);
        bookRepository.save(paramAndEntityBuilder.bookParamToEntity(param));
    }

    @Override
    public BookParam getOne(long id) throws ResourceNotFoundException {
        BookEntity entity = bookRepository.getOne(id);
        if (entity == null) {
            throw new ResourceNotFoundException(ErrorCodes.Feature.BOOK_GET,
                    ErrorCodes.CODE.BOOK_NOT_FOUND, translator.toLocale(ErrorCodes.REASON_MAP.get(ErrorCodes.CODE.BOOK_NOT_FOUND)));
        }
        return paramAndEntityBuilder.bookEntityToParam(entity);
    }

    @Override
    public List<BookParam> getAll() throws ResourceNotFoundException {
        List<BookEntity> entities = bookRepository.findAll();
        if (entities == null) {
            throw new ResourceNotFoundException(ErrorCodes.Feature.BOOK_GET,
                    ErrorCodes.CODE.BOOK_NOT_FOUND, translator.toLocale(ErrorCodes.REASON_MAP.get(ErrorCodes.CODE.BOOK_NOT_FOUND)));
        }
        return entities.stream()
                .filter(x-> x.getStatus().equals(Status.ACTIVE))
                .map(x->paramAndEntityBuilder.bookEntityToParam(x))
                .collect(Collectors.toList());
    }

    @Override
    public void delete(long id) throws ResourceNotFoundException {
        BookEntity entity = bookRepository.getOne(id);
        if (entity == null) {
            throw new ResourceNotFoundException(ErrorCodes.Feature.BOOK_DELETE,
                    ErrorCodes.CODE.BOOK_NOT_FOUND, translator.toLocale(ErrorCodes.REASON_MAP.get(ErrorCodes.CODE.BOOK_NOT_FOUND)));
        }
        entity.setStatus(Status.DELETED);
        bookRepository.save(entity);
    }
}
