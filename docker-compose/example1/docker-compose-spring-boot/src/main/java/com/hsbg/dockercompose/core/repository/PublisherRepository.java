package com.hsbg.dockercompose.core.repository;

import com.hsbg.dockercompose.core.entity.AuthorEntity;
import com.hsbg.dockercompose.core.entity.PublisherEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional(readOnly = true)
public interface PublisherRepository extends JpaRepository<PublisherEntity, Long> {
}
