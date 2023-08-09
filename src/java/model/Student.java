package model;

import java.util.ArrayList;
import java.time.LocalDateTime;

public class Student {
    private String id, name, password, email, phone, address, gender;
    private LocalDateTime createdAt;
    private static ArrayList<Student> students = new ArrayList<>();
    
    public Student(String id, String name, String password, String email, String phone, String address, String gender, LocalDateTime createdAt) {
        this.id = id;
        this.name = name;
        this.password = password;
        this.email = email;
        this.phone = phone;
        this.address = address;
        this.gender = gender;
        this.createdAt = createdAt;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public LocalDateTime getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(LocalDateTime createdAt) {
        this.createdAt = createdAt;
    }
    
    public static ArrayList<Student> getStudents() {
        return students;
    }
    
    public static void generateStudents() {
        students.add(new Student("QE0001", "John Doe", "12345", "john.doe@example.com", "1234567890", "123 Main St", "Male", LocalDateTime.now()));
        students.add(new Student("QE0002", "Jane Smith", "password2", "jane.smith@example.com", "0987654321", "456 Elm St", "Female", LocalDateTime.now()));
        students.add(new Student("QE0003", "Michael Johnson", "password3", "michael.johnson@example.com", "5555555555", "789 Oak Ave", "Male", LocalDateTime.now()));
        students.add(new Student("QE0004", "Emily Davis", "password4", "emily.davis@example.com", "9999999999", "321 Pine Rd", "Female", LocalDateTime.now()));
        students.add(new Student("QE0005", "Daniel Wilson", "password5", "daniel.wilson@example.com", "7777777777", "987 Maple Ln", "Male", LocalDateTime.now()));
    }
    
    public static Student loginStudent(String email, String password) {
        for (Student s : students) {
            if (s.getEmail().equals(email) && s.getPassword().equals(password)) return s;
        }
        return null;
    }
}
