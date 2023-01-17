package com.hsbg.dockercompose.errorhandler;


import com.hsbg.dockercompose.config.Translator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * This is Exception Handler Class. This will resolve all exceptions.
 * Created by Lenovo on 06/10/2019.
 */
@EnableWebMvc
@ControllerAdvice
public class ApplicationExceptionHandler {

    @Autowired
    private Translator translator;

    @ResponseStatus(HttpStatus.BAD_REQUEST)
    @ExceptionHandler(ResourceNotFoundException.class)
    @ResponseBody
    public ErrorResponse handleException(HttpServletRequest request, ResourceNotFoundException exp) {
        System.out.println("Resource Not Found{}" + exp.toString());
        ErrorResponse response = getErrorResponse(exp.getCode(), exp.getFeature(), exp.getReason());
        return response;
    }

    @ResponseStatus(HttpStatus.INTERNAL_SERVER_ERROR)
    @ExceptionHandler(DatabaseException.class)
    @ResponseBody
    public ErrorResponse handleDatabaseException(HttpServletRequest request, DatabaseException exp) {
        System.out.println("Database Exception {}" + exp);
        ErrorResponse response = getErrorResponse(exp.getCode(), exp.getFeature(), exp.getReason());
        return response;
    }

    @ResponseStatus(HttpStatus.INTERNAL_SERVER_ERROR)
    @ExceptionHandler(RemoteApiException.class)
    @ResponseBody
    public ErrorResponse handleRemoteApiException(HttpServletRequest request, RemoteApiException exp) {
        System.out.println("Remote Api Exception {}"+ exp);
        ErrorResponse response = getErrorResponse(exp.getCode(), exp.getFeature(), exp.getReason());
        return response;
    }

    @ResponseStatus(HttpStatus.INTERNAL_SERVER_ERROR)
    @ExceptionHandler(MethodArgumentNotValidException.class)
    @ResponseBody
    public ErrorResponse methodArgumentExceptionHandler(HttpServletRequest request, MethodArgumentNotValidException exp) {
        System.out.println("Generic Exception " + exp);
        ErrorResponse response = getErrorResponse(ErrorCodes.CODE.METHOD_ARG_NOT_VALID,
                ErrorCodes.Feature.UNKNOWN,
                getErrorMessage(exp.getBindingResult()));
        return response;
    }

    @ResponseStatus(HttpStatus.INTERNAL_SERVER_ERROR)
    @ExceptionHandler(Exception.class)
    @ResponseBody
    public ErrorResponse genericExceptionHandler(HttpServletRequest request, Exception exp) {
        System.out.println("Generic Exception " + exp);
        ErrorResponse response = getErrorResponse(ErrorCodes.CODE.GENERIC_ERROR,
                ErrorCodes.Feature.UNKNOWN,
                translator.toLocale(ErrorCodes.REASON_MAP.get(ErrorCodes.CODE.GENERIC_ERROR)));
        return response;
    }

    public static String getErrorMessage(BindingResult bindingResult){
        StringBuilder message = new StringBuilder();

        List<ObjectError> objectErrors = bindingResult.getGlobalErrors();
        for (ObjectError objectError : objectErrors) {
            message.append(objectError.getObjectName())
                    .append(" : ")
                    .append(" [")
                    .append(objectError.getDefaultMessage())
                    .append("] ");
        }

        return message.toString();
    }


    private ErrorResponse getErrorResponse(String code, String feature, String reason) {
        ErrorResponse response = new ErrorResponse();
        response.setCode(code);
        response.setFeature(feature);
        response.setMessage(reason);
        return response;
    }
}

