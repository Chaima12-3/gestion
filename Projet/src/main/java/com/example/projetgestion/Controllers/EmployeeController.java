package com.example.projetgestion.Controllers;

import com.example.projetgestion.Model.Employee;
import com.example.projetgestion.exception.ResourceNotFoundException;
import com.example.projetgestion.repository.EmployeeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController @CrossOrigin(origins = "http://localhost:4200")
@RequestMapping("/api/path1")
public class EmployeeController {
    @Autowired
    private EmployeeRepository employeeRepository;

    @GetMapping("/employee")
    public List<Employee> getAllEmployees() {
        return employeeRepository.findAll();
    }

    @GetMapping("/employee/{id}")
    public ResponseEntity<Employee> getEmployeeById(@PathVariable(value = "id") Long employeeId)
            throws ResourceNotFoundException {
        Employee employee = employeeRepository.findById(employeeId)
                .orElseThrow(() -> new ResourceNotFoundException("Employee not found for this id :: " + employeeId));
        return ResponseEntity.ok().body(employee);
    }

    @PostMapping("/employee")
    public Employee createEmployee( @RequestBody   Employee employee ) {
        return employeeRepository.save(employee);
    }



    @DeleteMapping("/employee/{id}")
    public Map<String, Boolean> deleteEmployee(@PathVariable(value = "id") Long employeeId)
            throws ResourceNotFoundException {
        Employee employee = employeeRepository.findById(employeeId)
                .orElseThrow(() -> new ResourceNotFoundException("Employee not present for the id :: " + employeeId));

        employeeRepository.delete(employee);
        Map<String, Boolean> response = new HashMap<>();
        response.put("deleted", Boolean.TRUE);
        return response;
    }
    @PutMapping("/employee/{id}")
    public Employee updateEmployee(@PathVariable Long id,  @RequestBody Employee employeeDetails) {
        return employeeRepository.findById(id).map(employee -> {
            employee.setEmailId(employeeDetails.getEmailId());
            employee.setLastName(employeeDetails.getLastName());
            employee.setFirstName(employeeDetails.getFirstName());
            return employeeRepository.save(employee);
        }).orElseThrow(() -> new IllegalArgumentException("Id " + id + " not found"));
    }
}