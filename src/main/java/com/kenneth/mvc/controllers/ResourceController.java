package com.kenneth.mvc.controllers;

import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.kenneth.mvc.data.entities.Resource;

@Controller
@RequestMapping("/resource")
@SessionAttributes("resource")
public class ResourceController {
	
	@RequestMapping(value="/add")
	public String add()
	{
		System.out.println("invoking add resource");
		return "resource_add";
	}
	
	@RequestMapping("/review")
	public String review(@ModelAttribute Resource resource)
	{
		System.out.println("invoking resource review");
		return "resource_review";
	}
	
	@RequestMapping(value="/save")
	public String save(@ModelAttribute Resource resource)
	{

		System.out.println(resource);
		System.out.println("Invoking resource save.");
		return "redirect:/resource/add";
	}
	
	@ModelAttribute("resource")
	public Resource getResource()
	{
		System.out.println("Adding a new resource to the model");
		return new Resource();
	}
	
	@ModelAttribute("typeOptions")
	public List<String> getOptions()
	{
		return new LinkedList<>(Arrays.asList(new String[]{
				"", "Material", "Staff", "Technical Equipment", "Other"}));
	}
	
	@ModelAttribute("radioOptions")
	public List<String> getRadios()
	{
		return new LinkedList<>(Arrays.asList(new String[]{
				"Hours", "Piece", "Tons"}));
	}
	
	@ModelAttribute("checkOptions")
	public List<String> getChecks()
	{
		return new LinkedList<>(Arrays.asList(new String[]{
				"Lead Time", "Special Rate", "Requires Approval"}));
	}


}