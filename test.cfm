<cfscript>

sample = new models.service.SampleService("super-cali-fraji-listic-expi-ali-doe-cious");

</cfscript>
<cfoutput>
  <cfinclude template="/includes/cfml/header.cfm"/>
    public:  #sample.getPublicVar()#<br />
    private: #sample.getPrivateVar()#<br />
<!---     <cfdump var="#sample#" /> --->
  <cfinclude template="/includes/cfml/footer.cfm"/>
</cfoutput>