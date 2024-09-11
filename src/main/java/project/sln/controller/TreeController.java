package project.sln.controller;


import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import project.sln.service.ITreeService;
import javax.servlet.http.HttpSession;


@Slf4j
@RequiredArgsConstructor
@RequestMapping(value = "/daily")
@Controller
public class TreeController {
    private final ITreeService treeService;

    @GetMapping("/dailyGoal1")
    public String selfTest(HttpSession session, ModelMap model) throws Exception {

        log.info(this.getClass().getName() + ".selfTest Start!");

        log.info(this.getClass().getName() + "selfTest End!");

        return "/daily/dailyGoal1";

    }


    @GetMapping("/dailyGoal2")
    public String selfTest2(HttpSession session, ModelMap model) throws Exception {

        log.info(this.getClass().getName() + ".selfTest Start!");

        log.info(this.getClass().getName() + "selfTest End!");

        return "/daily/dailyGoal2";

    }







}

