package com.abhishek.ab.JspDemo.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "student")
public class Student {

    @Id
    @Column(name="id")
    private int id ;

    @Column(name="first_name")
    private String firstName ;

    @Column(name="last_name")
    private String lastName ;

    @Column(name="branch")
    private String branch ;

    @Column(name="year")
    private int  year ;

    @Column(name="mobile_number")
    private String mobileNumber ;

    public Student() {
    }

    public Student(int id, String firstName, String lastName, String branch, int year, String mobileNumber) {
        this.id = id;
        this.firstName = firstName;
        this.lastName = lastName;
        this.branch = branch;
        this.year = year;
        this.mobileNumber = mobileNumber;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getBranch() {
        return branch;
    }

    public void setBranch(String branch) {
        this.branch = branch;
    }

    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
    }

    public String getMobileNumber() {
        return mobileNumber;
    }

    public void setMobileNumber(String mobileNumber) {
        this.mobileNumber = mobileNumber;
    }

    @Override
    public String toString() {
        return "Student{" +
                "id=" + id +
                ", firstName='" + firstName + '\'' +
                ", lastName='" + lastName + '\'' +
                ", branch='" + branch + '\'' +
                ", year=" + year +
                ", mobileNumber='" + mobileNumber + '\'' +
                '}';
    }
}