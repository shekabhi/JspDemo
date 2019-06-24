package com.abhishek.ab.JspDemo.services;

import com.abhishek.ab.JspDemo.model.Student;

import java.util.Optional;

public interface StudentService {

    public Iterable<Student> findAll() ;
    public Student studentbyid(int id) ;
    public void deletebyid(int id);
    public void insertStudent(Student student);
}
