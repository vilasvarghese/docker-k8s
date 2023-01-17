package com.hsbg.dockercompose.api.validator;

import com.hsbg.dockercompose.api.model.AuthorResource;
import com.hsbg.dockercompose.util.RequestValidationMessage;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import java.util.Date;

import static com.hsbg.dockercompose.core.util.Constants.VALID_EMAIL_ADDRESS_REGEX;

public class AuthorRequestValidator implements Validator {
    @Override
    public boolean supports(Class<?> clazz) {
        return AuthorResource.class.equals(clazz);
    }

    @Override
    public void validate(Object target, Errors errors) {

        AuthorResource authorResource = (AuthorResource) target;
        if (authorResource.getName() == null || authorResource.getName().isEmpty()) {
            errors.reject("author.name", RequestValidationMessage.AUTHOR_NAME_EMPTY);
        }
        if (authorResource.getMobile() == null || authorResource.getMobile().isEmpty()) {
            errors.reject("author.email", RequestValidationMessage.AUTHOR_MOBILE_EMPTY);
        }
        if(!(VALID_EMAIL_ADDRESS_REGEX.matcher(authorResource.getEmail()).find())){
            errors.reject("author.email", RequestValidationMessage.AUTHOR_EMAIL_INCORRECT);

        }
        if (authorResource.getEmail() == null || authorResource.getEmail().isEmpty()) {
            errors.reject("author.mobile", RequestValidationMessage.AUTHOR_EMAIL_EMPTY);
        }
        if (authorResource.getBirthDate() == null || authorResource.getBirthDate().after(new Date())) {
            errors.reject("author.name", RequestValidationMessage.AUTHOR_DOB_WRONG);
        }

    }
}
