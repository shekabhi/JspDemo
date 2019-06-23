package com.abhishek.ab.JspDemo.controller;

import com.abhishek.ab.JspDemo.services.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
public class StudentController {

    @Autowired
    private StudentService studentService  ;

    @GetMapping(value = "/students")
    public  String index(ModelMap modelMap){
        modelMap.put("students" , studentService.findAll());
        return "index" ;
    }

    @GetMapping(value = "/studentid")
    public String data(@RequestParam("id") int id , ModelMap modelMap){

        modelMap.put("students" , studentService.findById(id) );
        System.out.println(" Student for id =" + studentService.findById(id));

        return "studentbyid" ;
    }



    @GetMapping(value = "/student")
    public String databyid(){
        return "student" ;
    }
}
