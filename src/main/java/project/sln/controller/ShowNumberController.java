package project.sln.controller;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;


@Slf4j
@RequiredArgsConstructor
@RequestMapping(value = "/gds")
@Controller
public class ShowNumberController {

    @GetMapping("/showNumber")
    public String selfTest(HttpSession session, ModelMap model) throws Exception {

        log.info(this.getClass().getName() + ".selfTest Start!");

        log.info(this.getClass().getName() + "selfTest End!");

        return "/gds/showNumber";

    }

    @GetMapping("/showNumber4")
    public String selfTest4(HttpSession session, ModelMap model) throws Exception {

        log.info(this.getClass().getName() + ".selfTest Start!");

        log.info(this.getClass().getName() + "selfTest End!");

        return "/gds/showNumber4";

    }

    @GetMapping("/showNumber5")
    public String selfTest5(HttpSession session, ModelMap model) throws Exception {

        log.info(this.getClass().getName() + ".selfTest Start!");

        log.info(this.getClass().getName() + "selfTest End!");

        return "/gds/showNumber5";

    }

    @GetMapping("/showNumber6")
    public String selfTest6(HttpSession session, ModelMap model) throws Exception {

        log.info(this.getClass().getName() + ".selfTest Start!");

        log.info(this.getClass().getName() + "selfTest End!");

        return "/gds/showNumber6";

    }
    @GetMapping("/showNumber7")
    public String selfTest7(HttpSession session, ModelMap model) throws Exception {

        log.info(this.getClass().getName() + ".selfTest Start!");

        log.info(this.getClass().getName() + "selfTest End!");

        return "/gds/showNumber7";

    }
    @GetMapping("/showNumber8")
    public String selfTest8(HttpSession session, ModelMap model) throws Exception {

        log.info(this.getClass().getName() + ".selfTest Start!");

        log.info(this.getClass().getName() + "selfTest End!");

        return "/gds/showNumber8";

    }
    @GetMapping("/showNumber9")
    public String selfTest9(HttpSession session, ModelMap model) throws Exception {

        log.info(this.getClass().getName() + ".selfTest Start!");

        log.info(this.getClass().getName() + "selfTest End!");

        return "/gds/showNumber9";

    }
    @GetMapping("/showNumber10")
    public String selfTest10(HttpSession session, ModelMap model) throws Exception {

        log.info(this.getClass().getName() + ".selfTest Start!");

        log.info(this.getClass().getName() + "selfTest End!");

        return "/gds/showNumber10";

    }

    @GetMapping("/showNumber11")
    public String selfTest11(HttpSession session, ModelMap model) throws Exception {

        log.info(this.getClass().getName() + ".selfTest Start!");

        log.info(this.getClass().getName() + "selfTest End!");

        return "/gds/showNumber11";

    }

    @GetMapping("/showNumber12")
    public String selfTest12(HttpSession session, ModelMap model) throws Exception {

        log.info(this.getClass().getName() + ".selfTest Start!");

        log.info(this.getClass().getName() + "selfTest End!");

        return "/gds/showNumber12";

    }

    @GetMapping("/showNumber13")
    public String selfTest13(HttpSession session, ModelMap model) throws Exception {

        log.info(this.getClass().getName() + ".selfTest Start!");

        log.info(this.getClass().getName() + "selfTest End!");

        return "/gds/showNumber13";

    }

}
