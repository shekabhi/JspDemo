package com.abhishek.ab.JspDemo.services;

import com.abhishek.ab.JspDemo.model.Student;

import java.util.Optional;

public interface StudentService {

    public Iterable<Student> findAll() ;
    public Optional<Student> findById(int id) ;
}
