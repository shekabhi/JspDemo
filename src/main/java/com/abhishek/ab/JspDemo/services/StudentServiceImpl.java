package com.abhishek.ab.JspDemo.services;

import com.abhishek.ab.JspDemo.model.Student;
import com.abhishek.ab.JspDemo.repositories.StudentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.Optional;

@Transactional
@Service("studentService")
public class StudentServiceImpl implements StudentService {

    @Autowired
    private StudentRepository studentRepository ;

    @Override
    public Iterable<Student> findAll() {
        return studentRepository.findAll();
    }

    public Optional<Student> findById(int id) {
        return studentRepository.findById(id);
    }
}
