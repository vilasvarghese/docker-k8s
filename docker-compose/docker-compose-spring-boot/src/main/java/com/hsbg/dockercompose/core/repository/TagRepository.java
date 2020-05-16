package com.hsbg.dockercompose.core.repository;

import com.hsbg.dockercompose.core.entity.PublisherEntity;
import com.hsbg.dockercompose.core.entity.TagEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional(readOnly = true)
public interface TagRepository extends JpaRepository<TagEntity, Long> {
}
