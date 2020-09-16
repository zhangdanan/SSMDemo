package service.impl;

import entity.Student;
import mapper.StudentMapper;
import service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("studentService")
public class StudentImpl implements StudentService {

    @Autowired
    public StudentMapper studentMapper;

    @Override
    public List<Student> findAll(){
       return studentMapper.findAll();
    }

    @Override
    public Student selectById(Integer id) {
        return studentMapper.selectById(id);
    }

    @Override
    public Student selectByName(String name) {
        return studentMapper.selectByName(name);
    }

    @Override
    public Integer delete(Integer id) {
        return studentMapper.delete(id);
    }

    @Override
    public Integer update(Student student) {
        return studentMapper.update(student);
    }

    @Override
    public Integer insert(Student student) {
        return studentMapper.insert(student);
    }

}
