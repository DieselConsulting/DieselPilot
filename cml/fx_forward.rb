FX_FORWARD = <<-eos
<?xml version="1.0" encoding="iso-8859-1" standalone="yes"?>
<calypso:calypsoDocument xmlns:calypso="http://www.calypso.com/xml">
    <calypso:calypsoObject xsi:type="calypso:Trade" action="{{ACTION}}" version="11-1" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
        <calypso:identification>
            <calypso:versionedIdentifier codifier="convention" code="{{CODE}}" version="0"/>
        </calypso:identification>
        <calypso:auditInfo>
            <calypso:dateEntered>2015-10-29T11:16:41.138+01:00</calypso:dateEntered>
        </calypso:auditInfo>
        <calypso:trader>NONE</calypso:trader>
        <calypso:salesPerson>NONE</calypso:salesPerson>
        <calypso:tradeParty>
            <calypso:legalEntity>
                <calypso:type>com.calypso.tk.core.LegalEntity</calypso:type>
                <calypso:identifier codifier="convention" code="{{TRADE_PARTY_LE}}"/>
                <calypso:role>CounterParty</calypso:role>
            </calypso:legalEntity>
            <calypso:role>CounterParty</calypso:role>
            <calypso:feeParty>false</calypso:feeParty>
        </calypso:tradeParty>
        <calypso:tradeParty>
            <calypso:book>
                <calypso:type>com.calypso.tk.core.Book</calypso:type>
                <calypso:identifier codifier="convention" code="{{TRADE_PARTY_BOOK}}"/>
            </calypso:book>
            <calypso:role>Book</calypso:role>
        </calypso:tradeParty>
        <calypso:tradeDate>2015-10-29T11:16:41+01:00</calypso:tradeDate>
        <calypso:tradeCurrency>EUR</calypso:tradeCurrency>
        <calypso:settlementDate>2015-10-29Z</calypso:settlementDate>
        <calypso:settlementCurrency>EUR</calypso:settlementCurrency>
        <calypso:comment>{{COMMENT}}</calypso:comment>
        {{KEYWORDS}}
        <calypso:product>
            <calypso:definition xsi:type="calypso:FXForward">
                <calypso:currencyPair>
                    <calypso:type>com.calypso.tk.refdata.CurrencyPair</calypso:type>
                    <calypso:identifier codifier="convention" code="EUR#GBP"/>
                </calypso:currencyPair>
                <calypso:baseForwardRate>-0.00003664149978432896</calypso:baseForwardRate>
                <calypso:bookForwardRate>0.0</calypso:bookForwardRate>
                <calypso:quotingForwardRate>0.13663899220289877</calypso:quotingForwardRate>
                <calypso:spotRate>0.7355</calypso:spotRate>
            </calypso:definition>
        </calypso:product>
        <calypso:quantity>-600000.0</calypso:quantity>
        <calypso:tradePrice>0.7344</calypso:tradePrice>
        <calypso:accrual>440640.0</calypso:accrual>
        <calypso:marketInfo>-0.000027</calypso:marketInfo>
        <calypso:negociatedPrice>0.7344</calypso:negociatedPrice>
        <calypso:negociatedPriceType>Multiply</calypso:negociatedPriceType>
        <calypso:splitBookPrice>0.0</calypso:splitBookPrice>
        <calypso:splitBasePrice>0.0</calypso:splitBasePrice>
        <calypso:alternateDate>2015-10-29Z</calypso:alternateDate>
    </calypso:calypsoObject>
</calypso:calypsoDocument>
eos
