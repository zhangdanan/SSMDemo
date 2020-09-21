package controller;

import entity.Student;
import service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@RestController("/student")
public class
StudetController {

    @Autowired
    public StudentService studentService;

    @GetMapping("/all")
    public String getAll(){
        return  "index";
    }

    @RequestMapping("findAll")
    @ResponseBody
    public String findAll(HttpServletRequest req){
      List<Student> list=studentService.findAll();
        req.setAttribute("list", list);
        return "/index";
    }
    @GetMapping(value = "/getById")
    public Student selectById(Integer id){
       Student student=studentService.selectById(id);
       return student;
    }

    @GetMapping(value = "/getByName")
    public Student selectByName(String name){
       Student student=studentService.selectByName(name);
       return student;
    }

//    @PostMapping("/")
//    public ApiResponse Login(@Param("name") String name, @Param("password") String password){
//
//        ServiceResult serviceResult=userService.login(name,password);
//        if (serviceResult.isSuccess()){
//            return ApiResponse.success(serviceResult.getResult());
//        }
//        return ApiResponse.error(serviceResult.getMessage());
//    }

//    @GetMapping(value = "/getAll")
//    public ApiResponse selectAll(){
//        ServiceResult serviceResult=userService.selectAll();
//        if (serviceResult.isSuccess()){
//            return ApiResponse.success(serviceResult.getResult());
//        }
//        return ApiResponse.error(ResultEnum.PARAM_ERROR);
//    }

    @PostMapping(value = "/update")
    public Integer update(Student student){
       Integer res=studentService.update(student);
       return res;
    }

    @PostMapping(value = "/insert")
    public Integer insert(Student student){
       Integer res=studentService.insert(student);
       return res;
    }

//    @PostMapping(value = "/reg")
//    public ApiResponse reg(Student student){
//        if (user==null||StringUtils.isEmpty(user.getName())||StringUtils.isEmpty(user.getPassword())){
//            return ApiResponse.error(ResultEnum.USER_NOT_EXIST);
//        }
//        ServiceResult serviceResult=userService.insert(user);
//        if (serviceResult.isSuccess()){
//            return ApiResponse.success(serviceResult.getResult());
//        }
//        return ApiResponse.error(serviceResult.getMessage());
//    }

    @DeleteMapping(value = "/delete")
    public Integer delete(Integer id) {
        Integer res = studentService.delete(id);
        return res;
    }

}
