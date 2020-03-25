package com.interblocks.imobile.api.inapp.service.card;

import com.interblocks.imobile.testconfig.SpringRuntime;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.testng.annotations.Test;

@Log4j2
@EnableAutoConfiguration
public class CardManagementImplTest extends SpringRuntime {

    private String testClass = this.getClass().getSimpleName();

    @Autowired
    CardManagementApiService cardManagementApiService;

    @Test
    public void testAdd() {
        log.info("Start of " + testClass + "_testAdd");
        log.info("End of " + testClass + "_testAdd");
    }
}
