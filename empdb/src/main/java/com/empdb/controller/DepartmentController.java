package com.empdb.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.empdb.models.Department;
import com.empdb.service.DepartmentService;

@Controller
@RequestMapping("/Department")
public class DepartmentController {

    @Autowired
    DepartmentService ds;

    // ***************************************************************************************************//
    // Department insert module

    @RequestMapping("/InsertDep")
    public String callinsertDep() {
        return "InsertDep";
    }

    @RequestMapping("/DepInsert")
    public String DepartmentInsert(@ModelAttribute("Department") Department d, Model model) {
        System.out.println(d.toString());
        if (ds.save(d) >0) {
            model.addAttribute("msg", "Department Inserted Successfully");
            return "success";
        } else {
            model.addAttribute("msg", "Error while inserting Department");
            return "Error";
        }
    }

    // Department insert module closed
    // ***************************************************************************************************//

    // ***************************************************************************************************//
    // Department Update module open

    @RequestMapping("/UpdateDep")
    public ModelAndView updateDepartment(ModelAndView m) {
        System.out.println("Department awaked");
        List<Department> l = ds.getAllDepartment();
        m.addObject("list", l);
        m.setViewName("UpdateDep");
        return m;
    }

    @RequestMapping("/UpdateDepartment")
    public ModelAndView getdepIdforUpate(@RequestParam("dep_id") int dep_id, ModelAndView m) {
        Department d = ds.getDepartment(dep_id);
        m.addObject("department", d);
        m.addObject("dep_id", dep_id + "");
        m.setViewName("UpdateDep");
        return m;
    }

    @RequestMapping("/DepUpdate")
    public String updateDepartment2(@ModelAttribute("Department") Department d, Model model) {
        try {
            ds.updateDepartment(d);
            model.addAttribute("msg", "Department updated successfully");
            return "success";
        } catch (Exception e) {
            model.addAttribute("msg", "Error while updating Department");
            return "Error";
        }
    }

    // Department Update module close
    // ***************************************************************************************************//

    // ***************************************************************************************************//
    // Search Department module open

    @RequestMapping("/SearchDep")
    public String searchDepartment1() {
        return "SearchDep";
    }

    @RequestMapping("/SearchDepartment")
    public ModelAndView searchDepartment2(ModelAndView m, @RequestParam("id") int id) {
        Department d = ds.getDepartment(id);
        m.addObject("id", id + "");
        m.addObject("department", d);
        m.setViewName("SearchDep");
        return m;
    }

    // Search Department module close
    // ***************************************************************************************************//

    // ***************************************************************************************************//
    // Department Fetch module Open

    @RequestMapping("/DisplayAllDep")
    public ModelAndView getDepartment1(ModelAndView m) {
        System.out.println("Department awaked");
        List<Department> l = ds.getAllDepartment();
        m.addObject("list", l);
        m.setViewName("DisplayAllDep");
        return m;
    }

    // Department fetch module closed
    // ***************************************************************************************************//
}
