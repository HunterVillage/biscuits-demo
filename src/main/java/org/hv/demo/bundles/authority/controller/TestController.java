package org.hv.demo.bundles.authority.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

@RestController
@RequestMapping("/test")
public class TestController {
    @RequestMapping(value = "/get", method = GET)
    @ResponseBody
    public boolean get() {
        return true;
    }
}
