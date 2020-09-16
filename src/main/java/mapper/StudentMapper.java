package mapper;

import entity.Student;

import java.util.List;


public interface StudentMapper {

    public List<Student> findAll();

    Student selectById(Integer id);

    Student selectByName(String name);

    Integer delete(Integer id);

    Integer update(Student student);

    Integer insert(Student student);
}
