package kr.co.wesellglobal.sellermatch.error;


import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class ErrorController {
	
    @GetMapping("/error404")
    public ModelAndView Error404 (Model model) {
        return  new ModelAndView("error/404");
    }
    
    @GetMapping("/error500")
    public ModelAndView Error500() {
        return  new ModelAndView("error/500");
    }
	
}
