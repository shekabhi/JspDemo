package com.abhishek.ab.JspDemo.controller;

import com.abhishek.ab.JspDemo.model.Student;
import com.abhishek.ab.JspDemo.services.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;
import java.util.Map;
import java.util.Optional;

@Controller
public class StudentController {

    @Autowired
    private StudentService studentService  ;

    @GetMapping(value = "/students")
    public  String index(ModelMap modelMap){
        modelMap.put("students" , studentService.findAll());
        System.out.println(" Student for id =" + studentService.findAll());
        return "index" ;
    }

    @GetMapping(value = "/studentid")
    public String studentdetailed(@RequestParam("id") int id , Map<String , Object> map) {

        map.put("students" , studentService.studentbyid(id)) ;
        System.out.println(" Student for id =" + studentService.studentbyid(id));

        return "studentbyid" ;
    }



    @GetMapping(value = "/student")
    public String databyid(){
        return "student" ;
    }
}
