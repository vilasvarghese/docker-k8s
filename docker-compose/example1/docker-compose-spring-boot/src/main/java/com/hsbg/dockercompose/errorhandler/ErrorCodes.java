package com.hsbg.dockercompose.errorhandler;

import java.util.HashMap;
import java.util.Map;

/**
 * @author Vilas Varghese
 * @since  06/10/2019.
 */
public class ErrorCodes {
    public interface Feature{
        String AUTHOR_ADD = "Author add";
        String AUTHOR_GET = "Author get";
        String AUTHOR_UPDATE = "Author update";
        String AUTHOR_DELETE = "Author delete";
        String BOOK_ADD = "Book add";
        String BOOK_GET = "Book get";
        String BOOK_UPDATE = "Book update";
        String BOOK_DELETE = "Book delete";
        String PUBLIHER_ADD = "Publisher add";
        String PUBLIHER_GET = "Publisher get";
        String PUBLIHER_UPDATE = "Publisher update";
        String PUBLIHER_DELETE = "Publisher delete";

        String TAG_ADD = "Tag add";
        String TAG_GET = "Tag get";
        String TAG_UPDATE = "Tag update";
        String TAG_DELETE = "Tag delete";

        String BOOKSHELF_ADD = "Bookshelf add";
        String BOOKSHELF_GET = "Bookshelf get";
        String BOOKSHELF_UPDATE = "Bookshelf update";
        String BOOKSHELF_DELETE = "Bookshelf delete";
        String UNKNOWN = "Unknown";
    }

    public interface CODE{
        String AUTHOR_NOT_FOUND = "10200";
        String BOOK_NOT_FOUND = "20200";
        String PUBLISHER_NOT_FOUND = "30200";
        String BOOKSELF_NOT_FOUND = "40200";
        String TAG_NOT_FOUND = "50200";
        String UNKNOWN = "80200";
        String GENERIC_ERROR = "90200";
        String METHOD_ARG_NOT_VALID = "90211";
    }

    public static final Map<String, String> REASON_MAP = new HashMap<String, String>();

    static {
        REASON_MAP.put(CODE.AUTHOR_NOT_FOUND,"author.not.found");
        REASON_MAP.put(CODE.BOOK_NOT_FOUND,"book.not.found");
        REASON_MAP.put(CODE.PUBLISHER_NOT_FOUND,"publisher.not.found");
        REASON_MAP.put(CODE.BOOKSELF_NOT_FOUND,"bookshelf.not.found");
        REASON_MAP.put(CODE.TAG_NOT_FOUND,"tag.not.found");
        REASON_MAP.put(CODE.UNKNOWN,"bookmanager.unknown");
        REASON_MAP.put(CODE.GENERIC_ERROR,"generic.error");
    }
}
