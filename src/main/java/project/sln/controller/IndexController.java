package project.sln.controller;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Slf4j
@RequiredArgsConstructor
@RequestMapping(value = "page")
@Controller
public class IndexController {

    @GetMapping("index")
    public String mainPage(ModelMap model) throws Exception {

        log.info(this.getClass().getName() + ".mainPage Start!");

        return "/page/index";
    }

    @GetMapping("main")
    public String mainTest(ModelMap model) throws Exception {

        log.info(this.getClass().getName() + ".mainPage Start!");

        return "/main/test";
    }

    @GetMapping("exercise")
    public String exercise(ModelMap model) throws Exception {

        log.info(this.getClass().getName() + ".exercise Start!");

        return "/page/exercise";
    }

    @GetMapping("food")
    public String food(ModelMap model) throws Exception {

        log.info(this.getClass().getName() + ".exercise Start!");

        return "/page/food";
    }

    @GetMapping("sleep")
    public String sleep(ModelMap model) throws Exception {

        log.info(this.getClass().getName() + ".exercise Start!");

        return "/page/sleep";
    }

    @GetMapping("test")
    public String test(ModelMap model) throws Exception {

        log.info(this.getClass().getName() + ".testStart!");

        return "page/test";
    }

    @GetMapping(value = "logout")
    public String logout(HttpServletRequest request, HttpSession session) throws Exception {
        log.info(this.getClass().getName() + "./user/logout Start!!");

        session.getAttribute("SS_USER_ID");


        session.invalidate();

        return "/page/test";

    }

    @GetMapping("showExercise1")
    public String showExercise1(ModelMap model) throws Exception {

        log.info(this.getClass().getName() + ".exercise Start!");

        return "/page/showExercise1";
    }

    @GetMapping("showExercise2")
    public String showExercise2(ModelMap model) throws Exception {

        log.info(this.getClass().getName() + ".exercise Start!");

        return "/page/showExercise2";
    }

    @GetMapping("showExercise3")
    public String showExercise3(ModelMap model) throws Exception {

        log.info(this.getClass().getName() + ".exercise Start!");

        return "/page/showExercise3";
    }

    @GetMapping("showExercise4")
    public String showExercise4(ModelMap model) throws Exception {

        log.info(this.getClass().getName() + ".exercise Start!");

        return "/page/showExercise4";
    }

    @GetMapping("showFood1")
    public String showFood1(ModelMap model) throws Exception {

        log.info(this.getClass().getName() + ".exercise Start!");

        return "/page/showFood1";
    }

    @GetMapping("showFood2")
    public String showFood2(ModelMap model) throws Exception {

        log.info(this.getClass().getName() + ".exercise Start!");

        return "/page/showFood2";
    }

    @GetMapping("showFood3")
    public String showFood3(ModelMap model) throws Exception {

        log.info(this.getClass().getName() + ".exercise Start!");

        return "/page/showFood3";
    }

    @GetMapping("showSleep1")
    public String showSleep1(ModelMap model) throws Exception {

        log.info(this.getClass().getName() + ".exercise Start!");

        return "/page/showSleep1";
    }

    @GetMapping("showSleep2")
    public String showSleep2(ModelMap model) throws Exception {

        log.info(this.getClass().getName() + ".exercise Start!");

        return "/page/showSleep2";
    }




    @GetMapping(value = "dailyGoal")
    public String dailyGoal(HttpServletRequest request, HttpSession session) throws Exception {
        log.info(this.getClass().getName() + "./user/logout Start!!");

        session.getAttribute("SS_USER_ID");


        session.invalidate();

        return "/page/dailyGoal";

    }
}
