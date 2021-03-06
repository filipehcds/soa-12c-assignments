<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:tns="http://TargetNamespace.com/WriteOrders"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:ns0="http://schemas.medin.name/wicked/soa/lab/01/orders"
                exclude-result-prefixes="xsd xsi oracle-xsl-mapper xsl ns0 tns oraxsl xp20 xref mhdr oraext dvm socket"
                xmlns:ns1="http://xmlns.oracle.com/pcbpel/adapter/file/SoaLabApp01/SoaLabProj01/ReadOrders"
                xmlns:pc="http://xmlns.oracle.com/pcbpel/" xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/"
                xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:ns2="http://xmlns.oracle.com/pcbpel/adapter/file/SoaLabApp01/SoaLabProj01/WriteOrders">
  <oracle-xsl-mapper:schema>
    <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
    <oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/ReadOrders.wsdl"/>
        <oracle-xsl-mapper:rootElement name="orders" namespace="http://schemas.medin.name/wicked/soa/lab/01/orders"/>
      </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/WriteOrders.wsdl"/>
        <oracle-xsl-mapper:rootElement name="Orders" namespace="http://TargetNamespace.com/WriteOrders"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
    <!--GENERATED BY ORACLE XSL MAPPER 12.1.3.0.0(XSLT Build 140529.0700.0211) AT [TUE MAY 19 20:25:13 CEST 2015].-->
  </oracle-xsl-mapper:schema>
  <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
  <xsl:template match="/">
    <tns:Orders>
      <tns:order>
        <tns:order_id>
          <xsl:value-of select="/ns0:orders/ns0:order/@number"/>
        </tns:order_id>
        <tns:date>
          <xsl:value-of select="/ns0:orders/ns0:order/@date"/>
        </tns:date>
        <xsl:for-each select="/ns0:orders/ns0:order/ns0:row">
          <tns:rows>
            <tns:item>
              <xsl:value-of select="ns0:item"/>
            </tns:item>
            <tns:amount>
              <xsl:value-of select="ns0:amount"/>
            </tns:amount>
            <tns:price>
              <xsl:value-of select="translate (ns0:price, ',', '.' )"/>
            </tns:price>
          </tns:rows>
        </xsl:for-each>
      </tns:order>
    </tns:Orders>
  </xsl:template>
</xsl:stylesheet>
