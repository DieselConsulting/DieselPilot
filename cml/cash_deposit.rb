CASH_DEPOSIT = <<-eos
<?xml version="1.0" encoding="iso-8859-1" standalone="yes"?>
<calypso:calypsoDocument xmlns:calypso="http://www.calypso.com/xml">
    <calypso:calypsoObject xsi:type="calypso:Trade" action="{{ACTION}}" version="11-1" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
        <calypso:identification>
            <calypso:versionedIdentifier codifier="convention" code="{{CODE}}" version="1"/>
        </calypso:identification>
        <calypso:auditInfo>
            <calypso:enteredBy>{{enteredBy}}</calypso:enteredBy>
            <calypso:dateEntered>2015-10-27T10:52:21.831+01:00</calypso:dateEntered>
        </calypso:auditInfo>
        <calypso:tradeParty>
            <calypso:legalEntity>
                <calypso:type>com.calypso.tk.core.LegalEntity</calypso:type>
                <calypso:identifier codifier="convention" code="1158"/>
                <calypso:role>AccountHolder</calypso:role>
            </calypso:legalEntity>
            <calypso:role>AccountHolder</calypso:role>
            <calypso:feeParty>false</calypso:feeParty>
        </calypso:tradeParty>
        <calypso:tradeParty>
            <calypso:book>
                <calypso:type>com.calypso.tk.core.Book</calypso:type>
                <calypso:identifier codifier="convention" code="NV_DUMMY_CASHMGT"/>
            </calypso:book>
            <calypso:role>Book</calypso:role>
        </calypso:tradeParty>
        <calypso:tradeDate>2015-10-27T10:50:58.716+01:00</calypso:tradeDate>
        <calypso:tradeCurrency>GBP</calypso:tradeCurrency>
        <calypso:settlementDate>2015-10-27Z</calypso:settlementDate>
        <calypso:settlementCurrency>GBP</calypso:settlementCurrency>
        <calypso:comment>{{COMMENT}}</calypso:comment>
        {{KEYWORDS}}
        <calypso:product>
            <calypso:definition xsi:type="calypso:CustomerTransfer">
                <calypso:flowType>PRINCIPAL</calypso:flowType>
                <calypso:principal>382.09</calypso:principal>
                <calypso:cashCurrency>GBP</calypso:cashCurrency>
                <calypso:collateralMovement>false</calypso:collateralMovement>
                <calypso:pledgeMovement>false</calypso:pledgeMovement>
                <calypso:linkedId>0</calypso:linkedId>
                <calypso:dapTransfer>false</calypso:dapTransfer>
                <calypso:dapCashAmount>0.0</calypso:dapCashAmount>
                <calypso:beneficiary>
                    <calypso:type>com.calypso.tk.core.LegalEntity</calypso:type>
                    <calypso:identifier codifier="convention" code="2011"/>
                    <calypso:role>AccountHolder</calypso:role>
                </calypso:beneficiary>
                <calypso:beneficiaryRole>AccountHolder</calypso:beneficiaryRole>
                <calypso:counterpartySDI>
                    <calypso:type>com.calypso.tk.refdata.SettleDeliveryInstruction</calypso:type>
                    <calypso:identifier codifier="CALDEV01" code="36502"/>
                    <calypso:identifier codifier="Reference" code="36502"/>
                </calypso:counterpartySDI>
                <calypso:processingOrgSDI>
                    <calypso:type>com.calypso.tk.refdata.SettleDeliveryInstruction</calypso:type>
                    <calypso:identifier codifier="CALDEV01" code="47449"/>
                    <calypso:identifier codifier="Reference" code="47449"/>
                </calypso:processingOrgSDI>
                <calypso:customerAccountSDI>
                    <calypso:type>com.calypso.tk.refdata.SettleDeliveryInstruction</calypso:type>
                    <calypso:identifier codifier="CALDEV01" code="36413"/>
                    <calypso:identifier codifier="Reference" code="36413"/>
                </calypso:customerAccountSDI>
                <calypso:paymentMethod>None</calypso:paymentMethod>
                <calypso:settlementCurrency>GBP</calypso:settlementCurrency>
                <calypso:proceedMethod>Same Ccy</calypso:proceedMethod>
                <calypso:resetPrice>0.0</calypso:resetPrice>
                <calypso:remittanceExemption>false</calypso:remittanceExemption>
                <calypso:remittanceMethod>DemandDraft</calypso:remittanceMethod>
                <calypso:cableExemption>false</calypso:cableExemption>
                <calypso:correspondanceExemption>false</calypso:correspondanceExemption>
                <calypso:liftingExemption>false</calypso:liftingExemption>
                <calypso:chargeBeneficiaryBurden>0</calypso:chargeBeneficiaryBurden>
                <calypso:senderToReceiverInfo>Overpaid Salary   see attached file</calypso:senderToReceiverInfo>
            </calypso:definition>
        </calypso:product>
        <calypso:quantity>1.0</calypso:quantity>
        <calypso:tradePrice>0.0</calypso:tradePrice>
        <calypso:accrual>0.0</calypso:accrual>
        <calypso:marketInfo>0.0</calypso:marketInfo>
        <calypso:splitBookPrice>0.0</calypso:splitBookPrice>
        <calypso:splitBasePrice>0.0</calypso:splitBasePrice>
    </calypso:calypsoObject>
</calypso:calypsoDocument>
eos
