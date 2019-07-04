package com.abhishek.ab.JspDemo.controller;

import com.abhishek.ab.JspDemo.model.Student;
import com.abhishek.ab.JspDemo.services.StudentService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;
import java.util.Map;
import java.util.Optional;

@Controller
public class AdminController {

    @Autowired
    private StudentService studentService  ;

    @GetMapping(value = "/")
        public String welcomePage(){
            return "welcomepage" ;
        }


    @GetMapping(value = "/admin")
    public  String adminPage(ModelMap modelMap){
        modelMap.put("students" , studentService.findAll());
        //System.out.println(" Student for id =" + studentService.findAll());
        return "home" ;
    }


    @GetMapping(value = "/delete")
    public String deletebyid(){
        return "deletebyid" ;
    }
    @GetMapping(value = "/deleteid")
    public String deleteid(@RequestParam("id") int id ) {

        studentService.deletebyid(id) ;
        //System.out.println("Deleted Student for id =" + studentService.studentbyid(id));

        return "successpage" ;
    }

    @GetMapping(value = "/insert")
    public String insertpage(){
        return "insertstudent" ;
    }

    @PostMapping(value="/insertstudentdetail")
    public String insertStudent(@RequestParam("id") int id , @RequestParam("firstName") String firstName,
                                @RequestParam("lastName") String lastName, @RequestParam("branch") String branch,
                                @RequestParam("year") int year, @RequestParam("mobileNumber") String mobileNumber){

        Student student = new Student() ;

        student.setId(id);
        student.setFirstName(firstName);
        student.setLastName(lastName);
        student.setBranch(branch);
        student.setYear(year);
        student.setMobileNumber(mobileNumber);

        studentService.insertStudent(student);
        //System.out.println("Student Detail" + student);

        return "successpage" ;
    }

    @GetMapping (value = "/update")
    public String editpage(@RequestParam("id") int id , @RequestParam("firstName") String firstName,
                           @RequestParam("lastName") String lastName, @RequestParam("branch") String branch,
                           @RequestParam("year") int year, @RequestParam("mobileNumber") String mobileNumber){


        return "edit" ;
    }





}
