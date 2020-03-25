package com.interblocks.imobile.testconfig;

import com.interblocks.imobile.api.inapp.oauth.InappOauth2Util;
import com.interblocks.imobile.api.inapp.oauth.InappTokenCipher;
import com.interblocks.imobile.api.inapp.service.card.CardManagementImpl;
import com.interblocks.imobile.api.inapp.service.registration.RegistrationImpl;
import com.interblocks.imobile.api.inapp.service.user.UserManagementImpl;
import com.interblocks.imobile.subcomponents.inapp.InAppCardServiceImpl;
import com.interblocks.imobile.subcomponents.inapp.InAppCardServiceImplTest;
import com.interblocks.imobile.subcomponents.inapp.InAppRegistrationServiceImpl;
import com.interblocks.imobile.subcomponents.inapp.InAppUserServiceImpl;
import com.interblocks.iwallet.adaptor.broker.BrokerClient;
import com.interblocks.iwallet.adaptor.broker.BrokerCommunicator;
import com.interblocks.iwallet.adaptor.broker.components.JAXBParser;
import com.interblocks.iwallet.adaptor.broker.config.ServiceBrokerClasses;
import com.interblocks.iwallet.adaptor.communicators.card.CardServiceCommunicator;
import com.interblocks.iwallet.adaptor.rest.admin.IAdminRestClientInappImpl;
import com.interblocks.iwallet.adaptor.rest.client.RestClientImpl;
import com.interblocks.iwallet.isodetails.builder.ISODetailsBuilder;
import com.interblocks.iwallet.isodetails.builder.ISODetailsMapper;
import com.interblocks.iwallet.isodetails.service.ISODetailsServiceImpl;
import com.interblocks.iwallet.oauth.*;
import com.interblocks.iwallet.subcomponents.cache.CacheServiceImpl;
import com.interblocks.iwallet.subcomponents.fundtransfers.util.CardExpiry;
import com.interblocks.iwallet.util.DBSequenceManager;
import com.interblocks.webtools.broker.model.card.BalanceInquiryResponse;
import com.interblocks.webtools.broker.model.core.DefaultRequest;
import com.interblocks.webtools.broker.model.core.DefaultResponse;
import com.interblocks.webtools.broker.model.transaction.TrxMsg;
import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.test.context.testng.AbstractTransactionalTestNGSpringContextTests;
import org.springframework.web.client.RestTemplate;

@Slf4j
@SpringBootTest(classes = {InAppCardServiceImplTest.class})
@PropertySource(value = {"classpath:testapplication.properties"})
@ComponentScan({
        "com.hazelcast.core"
})
@EnableJpaRepositories({
        "com.interblocks.iwallet.repository"
})
@EntityScan({
        "com.interblocks.iwallet.model"
})
//@SqlGroup({@Sql(executionPhase = Sql.ExecutionPhase.BEFORE_TEST_METHOD, scripts = {"classpath:beforeTestRun.sql"})})
//@SqlConfig(transactionMode = SqlConfig.TransactionMode.ISOLATED)
public class SpringRuntime extends AbstractTransactionalTestNGSpringContextTests {

    @Configuration
    static class ContextConfiguration {

        @Bean
        public CardManagementImpl cardManagement() {
            return new CardManagementImpl();
        }

        @Bean
        public InAppCardServiceImpl inAppCardService() {
            return new InAppCardServiceImpl();
        }

        @Bean
        public IAdminRestClientInappImpl iAdminRestClientInapp() {
            return new IAdminRestClientInappImpl();
        }

        @Bean
        public CardServiceCommunicator cardServiceCommunicator() {
            return new CardServiceCommunicator();
        }

        @Bean
        public RestClientImpl restClient() {
            return new RestClientImpl();
        }

        @Bean
        public DBSequenceManager dbSequenceManager() {
            return new DBSequenceManager();
        }

        @Bean
        public InAppRegistrationServiceImpl inAppRegistrationService() {
            return new InAppRegistrationServiceImpl();
        }

        @Bean
        public InAppUserServiceImpl inAppUserService() {
            return new InAppUserServiceImpl();
        }

        @Bean
        public CacheServiceImpl cacheService() {
            return new CacheServiceImpl();
        }

        @Bean
        public ClientApplicationManagerImpl clientApplicationManager() {
            return new ClientApplicationManagerImpl();
        }

        @Bean
        public ISODetailsServiceImpl isoDetailsService() {
            return new ISODetailsServiceImpl();
        }

        @Bean
        public ISODetailsBuilder isoDetailsBuilder() {
            return new ISODetailsBuilder();
        }

        @Bean
        public ISODetailsMapper isoDetailsMapper() {
            return new ISODetailsMapper();
        }

        @Bean
        public ResourceOwnerPasswordCredentialsGrant resourceOwnerPasswordCredentialsGrant() {
            return new ResourceOwnerPasswordCredentialsGrant();
        }

        @Bean
        public Oauth2Util oauth2Util() {
            return new Oauth2Util();
        }

        @Bean
        public TokenCipher tokenCipher() {
            return new TokenCipher();
        }

        @Bean
        public InappOauth2Util inappOauth2Util() {
            return new InappOauth2Util();
        }

        @Bean
        public InappTokenCipher inappTokenCipher() {
            return new InappTokenCipher();
        }

        @Bean
        public PCIExtract pciExtract() {
            return new PCIExtract();
        }

        @Bean
        public RegistrationImpl registration() {
            return new RegistrationImpl();
        }

        @Bean
        public UserManagementImpl userManagement() {
            return new UserManagementImpl();
        }

        @Bean
        public RestTemplate restTemplate() {
            return new RestTemplate();
        }

        @Bean
        public BrokerCommunicator brokerCommunicator() {
            return new BrokerCommunicator();
        }

        @Bean
        public BrokerClient brokerClient() {
            return new BrokerClient();
        }

        @Bean
        public CardExpiry cardExpiry() {
            return new CardExpiry();
        }

        @Bean
        public JAXBParser jaxbParser() {
            ServiceBrokerClasses serviceBrokerClasses = new ServiceBrokerClasses();
            Class<?>[] classes = new Class[]{
                    DefaultRequest.class,
                    DefaultResponse.class,
                    BalanceInquiryResponse.class,
                    TrxMsg.class
            };
            serviceBrokerClasses.setClasses(classes);
            return new JAXBParser(serviceBrokerClasses);
        }
    }
}

