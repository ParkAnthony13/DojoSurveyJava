package parkanthony;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class HomeController {
	@RequestMapping("/")
	public String home() {
		return "index.jsp";
	}
	@RequestMapping("/result")
	public String code(HttpSession session,Model model) {
		String resultName = (String) session.getAttribute("sessionName");
		String resultLocation = (String) session.getAttribute("sessionLocation");
		String resultLanguage = (String) session.getAttribute("sessionLanguage");
		String resultComment = (String) session.getAttribute("sessionComment");
		
		model.addAttribute("resultName", resultName);
		model.addAttribute("resultLocation", resultLocation);
		model.addAttribute("resultLanguage", resultLanguage);
		model.addAttribute("resultComment", resultComment);
		return "result.jsp";
	}
	@RequestMapping(value="/submit", method=RequestMethod.POST)
	public String login(@RequestParam(value="name") String name,
			@RequestParam(value="location") String location,
			@RequestParam(value="language") String language,
			@RequestParam(value="comment") String comment,
			RedirectAttributes redirectAttributes,
			HttpSession session, Model resultModel) {
		boolean validations = true;
		if (name.equals("")) {
			redirectAttributes.addFlashAttribute("error","NAME IS REQUIRED");
			validations = false;
		}
		if (comment.equals("")) {
			redirectAttributes.addFlashAttribute("error2","COMMENT IS REQUIRED");
			validations=false;
		}			
		if (validations==true) {
			
			session.setAttribute("sessionName",name);
			session.setAttribute("sessionLocation",location);
			session.setAttribute("sessionLanguage",language);
			session.setAttribute("sessionComment",comment);
			
			return "redirect:/result";
		} else {
			return "redirect:/";
		}
	}
//	public String flashMessages(RedirectAttributes redirectAttributes) {
//		redirectAttributes.addFlashAttribute("error", "WRONG CODE");
//		return "redirect:/";
//	}
	
}