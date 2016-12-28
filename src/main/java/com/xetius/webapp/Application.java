package com.xetius.webapp;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Component;

import javax.annotation.PostConstruct;

@Component
public class Application {
    private static final Logger log = LogManager.getLogger(Application.class);
    @PostConstruct
    public void init() {
        log.debug("Initialising Application in PostConstruct");
    }
}
