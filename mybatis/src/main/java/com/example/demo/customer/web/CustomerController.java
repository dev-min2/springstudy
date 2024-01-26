package com.example.demo.customer.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.customer.domain.Customer;
import com.example.demo.customer.repository.CustomerRepository;

@RestController
public class CustomerController {
	
	@Autowired
	private CustomerRepository repo;
	
	@GetMapping("/customer")
	public Iterable<Customer> customer() {
		return repo.findAll();
	}
	
	@GetMapping("/regCustomer")
	public Customer regCustomer(String fname, String lname) {
		return repo.save(new Customer(fname, lname));
	}
}