package com.boshanam.view.actions;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.boshanam.view.forms.SayHiFormBean;

public class SayHiAction extends Action {
    
    public SayHiAction() {
	System.out.println("iniutaializing ACTION ----------------------> SayHiAction");
    }

    public ActionForward execute(ActionMapping mapping, ActionForm form,
	    HttpServletRequest req, HttpServletResponse res) {
	req.getSession().setAttribute("name",((SayHiFormBean)form).getName());	
	System.out.println("Action class Execute()" + req.getSession().getAttribute("name"));
	return mapping.findForward("hi");
    }

}
