package mypolicy.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import mypolicy.model.Policy;

@Repository
public interface PolicyRepository extends JpaRepository<Policy, Integer>{

}