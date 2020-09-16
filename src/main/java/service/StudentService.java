package service;

import entity.Student;

import java.util.List;

public interface StudentService {

    public List<Student> findAll();

    Student selectById(Integer id);

    Student selectByName(String name);

    Integer delete(Integer id);

    Integer update(Student student);

    Integer insert(Student student);
}
