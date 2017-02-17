package com.kenneth.mvc.controllers;

import java.util.ArrayList;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.kenneth.mvc.data.entities.Project;
import com.kenneth.mvc.data.entities.Resource;
import com.kenneth.mvc.data.entities.Sponsor;
import com.kenneth.mvc.data.services.ProjectService;

@Controller
@RequestMapping("/project")
@SessionAttributes("project")
public class ProjectController {

	@Autowired
	private ProjectService projectService;
	
	public Sponsor sponsor;
	
	@RequestMapping(value="/{projectId}")
	public String findProject(Model model, @PathVariable("projectId") Long projectId)
	{
		model.addAttribute("project", this.projectService.find(projectId));
		return "project";
	}
	
	@RequestMapping(value="/find")
	public String find(Model model)
	{
		model.addAttribute("projects", this.projectService.findAll());
		return "projects";
	}
	
	@RequestMapping("/review")
	public String review(@ModelAttribute Resource resource)
	{
		System.out.println("invoking review project");
		return "project_review";
	}
	
	@RequestMapping(value="/add", method=RequestMethod.GET)
	public String addProject()
	{
		System.out.println("invoking Add project");
		return "project_add";
	}
	
	@ModelAttribute("project")
	public Project getProject()
	{
		return new Project();
	}
	
	@ModelAttribute("types")
	public ArrayList<String> getTypes()
	{
		return new ArrayList<String>(){{
			add("");
			add("Single Year");
			add("Multi Year");
		}};
	}
	
	@RequestMapping(value="/add", method=RequestMethod.POST)
	public String saveProject(@ModelAttribute Project project)
	{

		System.out.println("invoking save project");
		System.out.println(project);
		return "redirect:/project/add";
	}
	
}
