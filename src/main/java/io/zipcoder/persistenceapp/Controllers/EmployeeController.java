package io.zipcoder.persistenceapp.Controllers;

import io.zipcoder.persistenceapp.Repositories.EmployeeRepository;
import io.zipcoder.persistenceapp.models.Employee;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/API")
public class EmployeeController {

    private EmployeeRepository repository;


    @Autowired
    public EmployeeController(EmployeeRepository repository) {
        this.repository = repository;
    }

    @GetMapping("/employees")
    public ResponseEntity<Iterable<Employee>> getEmployees(){
        return new ResponseEntity<>(repository.findAll(), HttpStatus.OK);
    }

    @PostMapping("/employees")
    public ResponseEntity<Employee> postEmployee(@RequestBody Employee employee){
        return new ResponseEntity<>(repository.save(employee), HttpStatus.OK);
    }



}
