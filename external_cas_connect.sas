options set=CAS_CLIENT_SSL_CA_LIST="C:\SAS Viya\CAS_demo_ex_cert.crt";

cas viya4_cas
    host="sas-cas-server-default-bin-demo.uksouth.cloudapp.azure.com"
    port=5570
    user=user_1
    authinfo="C:\SAS Viya\.authinfo"
;
