/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.interblocks.imobile.api.inapp.model;

/**
 * @author Anusha Ariyathilaka @ Interblocks Ltd.
 */
public class Card {

    private String cardNumber;
    private String cardType;
    private String expYear;
    private String expMonth;
    private String securityCode;
    private String cardHolderName;
    private boolean isDefault;
    private boolean isActive;
    private String cardRef;
    private String maskedCardNumber;
    private String index;
    private boolean isExpired;
    private String activationOTP;
    private String cardBin;
    private String status;

    /**
     * @return the cardNumber
     */
    public String getCardNumber() {
        return cardNumber;
    }

    /**
     * @param cardNumber the cardNumber to set
     */
    public void setCardNumber(String cardNumber) {
        this.cardNumber = cardNumber;
    }

    /**
     * @return the cardType
     */
    public String getCardType() {
        return cardType;
    }

    /**
     * @param cardType the cardType to set
     */
    public void setCardType(String cardType) {
        this.cardType = cardType;
    }

    /**
     * @return the expYear
     */
    public String getExpYear() {
        return expYear;
    }

    /**
     * @param expYear the expYear to set
     */
    public void setExpYear(String expYear) {
        this.expYear = expYear;
    }

    /**
     * @return the expMonth
     */
    public String getExpMonth() {
        return expMonth;
    }

    /**
     * @param expMonth the expMonth to set
     */
    public void setExpMonth(String expMonth) {
        this.expMonth = expMonth;
    }

    /**
     * @return the securityCode
     */
    public String getSecurityCode() {
        return securityCode;
    }

    /**
     * @param securityCode the securityCode to set
     */
    public void setSecurityCode(String securityCode) {
        this.securityCode = securityCode;
    }

    /**
     * @return the cardHolderName
     */
    public String getCardHolderName() {
        return cardHolderName;
    }

    /**
     * @param cardHolderName the cardHolderName to set
     */
    public void setCardHolderName(String cardHolderName) {
        this.cardHolderName = cardHolderName;
    }


    /**
     * @return the isActive
     */
    public boolean isIsActive() {
        return isActive;
    }

    /**
     * @param isActive the isActive to set
     */
    public void setIsActive(boolean isActive) {
        this.isActive = isActive;
    }

    /**
     * @return the cardRef
     */
    public String getCardRef() {
        return cardRef;
    }

    /**
     * @param refNo the cardRef to set
     */
    public void setCardRef(String cardRef) {
        this.cardRef = cardRef;
    }

    /**
     * @return the maskedCardNumber
     */
    public String getMaskedCardNumber() {
        return maskedCardNumber;
    }

    /**
     * @param maskedCardNumber the maskedCardNumber to set
     */
    public void setMaskedCardNumber(String maskedCardNumber) {
        this.maskedCardNumber = maskedCardNumber;
    }

    /**
     * @return the index
     */
    public String getIndex() {
        return index;
    }

    /**
     * @param index the index to set
     */
    public void setIndex(String index) {
        this.index = index;
    }

    /**
     * @return the isExpired
     */
    public boolean isIsExpired() {
        return isExpired;
    }

    /**
     * @param isExpired the isExpired to set
     */
    public void setIsExpired(boolean isExpired) {
        this.isExpired = isExpired;
    }

    /**
     * @return the activationOTP
     */
    public String getActivationOTP() {
        return activationOTP;
    }

    /**
     * @param activationOTP the activationOTP to set
     */
    public void setActivationOTP(String activationOTP) {
        this.activationOTP = activationOTP;
    }

    /**
     * @return the cardBin
     */
    public String getCardBin() {
        return cardBin;
    }

    /**
     * @param cardBin the cardBin to set
     */
    public void setCardBin(String cardBin) {
        this.cardBin = cardBin;
    }

    /**
     * @return the status
     */
    public String getStatus() {
        return status;
    }

    /**
     * @param status the status to set
     */
    public void setStatus(String status) {
        this.status = status;
    }

    /**
     * @return the isDefault
     */
    public boolean isIsDefault() {
        return isDefault;
    }

    /**
     * @param defaultState the isDefault to set
     */
    public void setIsDefault(boolean defaultState) {
        this.isDefault = defaultState;
    }

}
