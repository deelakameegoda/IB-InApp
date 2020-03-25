package com.interblocks.imobile.subcomponents.inapp;

import com.interblocks.imobile.testconfig.SpringRuntime;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.testng.annotations.Test;

@Log4j2
@EnableAutoConfiguration
public class InAppCardServiceImplTest extends SpringRuntime {

    private String testClass = this.getClass().getSimpleName();

    @Autowired
    InAppCardService inAppCardService;

    @Test
    public void testPostInsertCardsToExternalRetailUser() {
        log.info("Start of " + testClass + "_testPostInsertCardsToExternalRetailUser");
        log.info("End of " + testClass + "_testPostInsertCardsToExternalRetailUser");
    }
}
