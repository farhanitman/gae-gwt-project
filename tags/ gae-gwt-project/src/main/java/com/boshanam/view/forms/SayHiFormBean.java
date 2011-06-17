package com.boshanam.view.forms;

import org.apache.struts.action.ActionForm;

public class SayHiFormBean extends ActionForm {
    /**
     * 
     */
    private static final long serialVersionUID = -4272172647661908733L;
    private String name;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

}
