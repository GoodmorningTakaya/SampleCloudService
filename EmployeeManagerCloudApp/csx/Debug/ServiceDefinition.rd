<?xml version="1.0" encoding="utf-8"?>
<serviceModel xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" name="EmployeeManagerCloudApp" generation="1" functional="0" release="0" Id="ef91fcd6-b671-4fd9-a511-cc5ad66d1983" dslVersion="1.2.0.0" xmlns="http://schemas.microsoft.com/dsltools/RDSM">
  <groups>
    <group name="EmployeeManagerCloudAppGroup" generation="1" functional="0" release="0">
      <componentports>
        <inPort name="CloudWebApp:Endpoint1" protocol="http">
          <inToChannel>
            <lBChannelMoniker name="/EmployeeManagerCloudApp/EmployeeManagerCloudAppGroup/LB:CloudWebApp:Endpoint1" />
          </inToChannel>
        </inPort>
        <inPort name="ThumbnailWebJob:Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput" protocol="tcp">
          <inToChannel>
            <lBChannelMoniker name="/EmployeeManagerCloudApp/EmployeeManagerCloudAppGroup/LB:ThumbnailWebJob:Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput" />
          </inToChannel>
        </inPort>
      </componentports>
      <settings>
        <aCS name="Certificate|CloudWebApp:Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" defaultValue="">
          <maps>
            <mapMoniker name="/EmployeeManagerCloudApp/EmployeeManagerCloudAppGroup/MapCertificate|CloudWebApp:Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" />
          </maps>
        </aCS>
        <aCS name="Certificate|ThumbnailWebJob:Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" defaultValue="">
          <maps>
            <mapMoniker name="/EmployeeManagerCloudApp/EmployeeManagerCloudAppGroup/MapCertificate|ThumbnailWebJob:Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" />
          </maps>
        </aCS>
        <aCS name="CloudWebApp:APPINSIGHTS_INSTRUMENTATIONKEY" defaultValue="">
          <maps>
            <mapMoniker name="/EmployeeManagerCloudApp/EmployeeManagerCloudAppGroup/MapCloudWebApp:APPINSIGHTS_INSTRUMENTATIONKEY" />
          </maps>
        </aCS>
        <aCS name="CloudWebApp:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/EmployeeManagerCloudApp/EmployeeManagerCloudAppGroup/MapCloudWebApp:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </maps>
        </aCS>
        <aCS name="CloudWebApp:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountEncryptedPassword" defaultValue="">
          <maps>
            <mapMoniker name="/EmployeeManagerCloudApp/EmployeeManagerCloudAppGroup/MapCloudWebApp:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountEncryptedPassword" />
          </maps>
        </aCS>
        <aCS name="CloudWebApp:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountExpiration" defaultValue="">
          <maps>
            <mapMoniker name="/EmployeeManagerCloudApp/EmployeeManagerCloudAppGroup/MapCloudWebApp:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountExpiration" />
          </maps>
        </aCS>
        <aCS name="CloudWebApp:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountUsername" defaultValue="">
          <maps>
            <mapMoniker name="/EmployeeManagerCloudApp/EmployeeManagerCloudAppGroup/MapCloudWebApp:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountUsername" />
          </maps>
        </aCS>
        <aCS name="CloudWebApp:Microsoft.WindowsAzure.Plugins.RemoteAccess.Enabled" defaultValue="">
          <maps>
            <mapMoniker name="/EmployeeManagerCloudApp/EmployeeManagerCloudAppGroup/MapCloudWebApp:Microsoft.WindowsAzure.Plugins.RemoteAccess.Enabled" />
          </maps>
        </aCS>
        <aCS name="CloudWebAppInstances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/EmployeeManagerCloudApp/EmployeeManagerCloudAppGroup/MapCloudWebAppInstances" />
          </maps>
        </aCS>
        <aCS name="ThumbnailWebJob:APPINSIGHTS_INSTRUMENTATIONKEY" defaultValue="">
          <maps>
            <mapMoniker name="/EmployeeManagerCloudApp/EmployeeManagerCloudAppGroup/MapThumbnailWebJob:APPINSIGHTS_INSTRUMENTATIONKEY" />
          </maps>
        </aCS>
        <aCS name="ThumbnailWebJob:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/EmployeeManagerCloudApp/EmployeeManagerCloudAppGroup/MapThumbnailWebJob:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </maps>
        </aCS>
        <aCS name="ThumbnailWebJob:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountEncryptedPassword" defaultValue="">
          <maps>
            <mapMoniker name="/EmployeeManagerCloudApp/EmployeeManagerCloudAppGroup/MapThumbnailWebJob:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountEncryptedPassword" />
          </maps>
        </aCS>
        <aCS name="ThumbnailWebJob:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountExpiration" defaultValue="">
          <maps>
            <mapMoniker name="/EmployeeManagerCloudApp/EmployeeManagerCloudAppGroup/MapThumbnailWebJob:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountExpiration" />
          </maps>
        </aCS>
        <aCS name="ThumbnailWebJob:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountUsername" defaultValue="">
          <maps>
            <mapMoniker name="/EmployeeManagerCloudApp/EmployeeManagerCloudAppGroup/MapThumbnailWebJob:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountUsername" />
          </maps>
        </aCS>
        <aCS name="ThumbnailWebJob:Microsoft.WindowsAzure.Plugins.RemoteAccess.Enabled" defaultValue="">
          <maps>
            <mapMoniker name="/EmployeeManagerCloudApp/EmployeeManagerCloudAppGroup/MapThumbnailWebJob:Microsoft.WindowsAzure.Plugins.RemoteAccess.Enabled" />
          </maps>
        </aCS>
        <aCS name="ThumbnailWebJob:Microsoft.WindowsAzure.Plugins.RemoteForwarder.Enabled" defaultValue="">
          <maps>
            <mapMoniker name="/EmployeeManagerCloudApp/EmployeeManagerCloudAppGroup/MapThumbnailWebJob:Microsoft.WindowsAzure.Plugins.RemoteForwarder.Enabled" />
          </maps>
        </aCS>
        <aCS name="ThumbnailWebJobInstances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/EmployeeManagerCloudApp/EmployeeManagerCloudAppGroup/MapThumbnailWebJobInstances" />
          </maps>
        </aCS>
      </settings>
      <channels>
        <lBChannel name="LB:CloudWebApp:Endpoint1">
          <toPorts>
            <inPortMoniker name="/EmployeeManagerCloudApp/EmployeeManagerCloudAppGroup/CloudWebApp/Endpoint1" />
          </toPorts>
        </lBChannel>
        <lBChannel name="LB:ThumbnailWebJob:Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput">
          <toPorts>
            <inPortMoniker name="/EmployeeManagerCloudApp/EmployeeManagerCloudAppGroup/ThumbnailWebJob/Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput" />
          </toPorts>
        </lBChannel>
        <sFSwitchChannel name="SW:CloudWebApp:Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp">
          <toPorts>
            <inPortMoniker name="/EmployeeManagerCloudApp/EmployeeManagerCloudAppGroup/CloudWebApp/Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp" />
          </toPorts>
        </sFSwitchChannel>
        <sFSwitchChannel name="SW:ThumbnailWebJob:Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp">
          <toPorts>
            <inPortMoniker name="/EmployeeManagerCloudApp/EmployeeManagerCloudAppGroup/ThumbnailWebJob/Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp" />
          </toPorts>
        </sFSwitchChannel>
      </channels>
      <maps>
        <map name="MapCertificate|CloudWebApp:Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" kind="Identity">
          <certificate>
            <certificateMoniker name="/EmployeeManagerCloudApp/EmployeeManagerCloudAppGroup/CloudWebApp/Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" />
          </certificate>
        </map>
        <map name="MapCertificate|ThumbnailWebJob:Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" kind="Identity">
          <certificate>
            <certificateMoniker name="/EmployeeManagerCloudApp/EmployeeManagerCloudAppGroup/ThumbnailWebJob/Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" />
          </certificate>
        </map>
        <map name="MapCloudWebApp:APPINSIGHTS_INSTRUMENTATIONKEY" kind="Identity">
          <setting>
            <aCSMoniker name="/EmployeeManagerCloudApp/EmployeeManagerCloudAppGroup/CloudWebApp/APPINSIGHTS_INSTRUMENTATIONKEY" />
          </setting>
        </map>
        <map name="MapCloudWebApp:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/EmployeeManagerCloudApp/EmployeeManagerCloudAppGroup/CloudWebApp/Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </setting>
        </map>
        <map name="MapCloudWebApp:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountEncryptedPassword" kind="Identity">
          <setting>
            <aCSMoniker name="/EmployeeManagerCloudApp/EmployeeManagerCloudAppGroup/CloudWebApp/Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountEncryptedPassword" />
          </setting>
        </map>
        <map name="MapCloudWebApp:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountExpiration" kind="Identity">
          <setting>
            <aCSMoniker name="/EmployeeManagerCloudApp/EmployeeManagerCloudAppGroup/CloudWebApp/Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountExpiration" />
          </setting>
        </map>
        <map name="MapCloudWebApp:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountUsername" kind="Identity">
          <setting>
            <aCSMoniker name="/EmployeeManagerCloudApp/EmployeeManagerCloudAppGroup/CloudWebApp/Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountUsername" />
          </setting>
        </map>
        <map name="MapCloudWebApp:Microsoft.WindowsAzure.Plugins.RemoteAccess.Enabled" kind="Identity">
          <setting>
            <aCSMoniker name="/EmployeeManagerCloudApp/EmployeeManagerCloudAppGroup/CloudWebApp/Microsoft.WindowsAzure.Plugins.RemoteAccess.Enabled" />
          </setting>
        </map>
        <map name="MapCloudWebAppInstances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/EmployeeManagerCloudApp/EmployeeManagerCloudAppGroup/CloudWebAppInstances" />
          </setting>
        </map>
        <map name="MapThumbnailWebJob:APPINSIGHTS_INSTRUMENTATIONKEY" kind="Identity">
          <setting>
            <aCSMoniker name="/EmployeeManagerCloudApp/EmployeeManagerCloudAppGroup/ThumbnailWebJob/APPINSIGHTS_INSTRUMENTATIONKEY" />
          </setting>
        </map>
        <map name="MapThumbnailWebJob:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/EmployeeManagerCloudApp/EmployeeManagerCloudAppGroup/ThumbnailWebJob/Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </setting>
        </map>
        <map name="MapThumbnailWebJob:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountEncryptedPassword" kind="Identity">
          <setting>
            <aCSMoniker name="/EmployeeManagerCloudApp/EmployeeManagerCloudAppGroup/ThumbnailWebJob/Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountEncryptedPassword" />
          </setting>
        </map>
        <map name="MapThumbnailWebJob:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountExpiration" kind="Identity">
          <setting>
            <aCSMoniker name="/EmployeeManagerCloudApp/EmployeeManagerCloudAppGroup/ThumbnailWebJob/Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountExpiration" />
          </setting>
        </map>
        <map name="MapThumbnailWebJob:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountUsername" kind="Identity">
          <setting>
            <aCSMoniker name="/EmployeeManagerCloudApp/EmployeeManagerCloudAppGroup/ThumbnailWebJob/Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountUsername" />
          </setting>
        </map>
        <map name="MapThumbnailWebJob:Microsoft.WindowsAzure.Plugins.RemoteAccess.Enabled" kind="Identity">
          <setting>
            <aCSMoniker name="/EmployeeManagerCloudApp/EmployeeManagerCloudAppGroup/ThumbnailWebJob/Microsoft.WindowsAzure.Plugins.RemoteAccess.Enabled" />
          </setting>
        </map>
        <map name="MapThumbnailWebJob:Microsoft.WindowsAzure.Plugins.RemoteForwarder.Enabled" kind="Identity">
          <setting>
            <aCSMoniker name="/EmployeeManagerCloudApp/EmployeeManagerCloudAppGroup/ThumbnailWebJob/Microsoft.WindowsAzure.Plugins.RemoteForwarder.Enabled" />
          </setting>
        </map>
        <map name="MapThumbnailWebJobInstances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/EmployeeManagerCloudApp/EmployeeManagerCloudAppGroup/ThumbnailWebJobInstances" />
          </setting>
        </map>
      </maps>
      <components>
        <groupHascomponents>
          <role name="CloudWebApp" generation="1" functional="0" release="0" software="C:\Users\tmtan\source\repos\CloudWebApp\EmployeeManagerCloudApp\csx\Debug\roles\CloudWebApp" entryPoint="base\x64\WaHostBootstrapper.exe" parameters="base\x64\WaIISHost.exe " memIndex="-1" hostingEnvironment="frontendadmin" hostingEnvironmentVersion="2">
            <componentports>
              <inPort name="Endpoint1" protocol="http" portRanges="80" />
              <inPort name="Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp" protocol="tcp" portRanges="3389" />
              <outPort name="CloudWebApp:Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp" protocol="tcp">
                <outToChannel>
                  <sFSwitchChannelMoniker name="/EmployeeManagerCloudApp/EmployeeManagerCloudAppGroup/SW:CloudWebApp:Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp" />
                </outToChannel>
              </outPort>
              <outPort name="ThumbnailWebJob:Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp" protocol="tcp">
                <outToChannel>
                  <sFSwitchChannelMoniker name="/EmployeeManagerCloudApp/EmployeeManagerCloudAppGroup/SW:ThumbnailWebJob:Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp" />
                </outToChannel>
              </outPort>
            </componentports>
            <settings>
              <aCS name="APPINSIGHTS_INSTRUMENTATIONKEY" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountEncryptedPassword" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountExpiration" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountUsername" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.RemoteAccess.Enabled" defaultValue="" />
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;CloudWebApp&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;CloudWebApp&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;e name=&quot;Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp&quot; /&gt;&lt;/r&gt;&lt;r name=&quot;ThumbnailWebJob&quot;&gt;&lt;e name=&quot;Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp&quot; /&gt;&lt;e name=&quot;Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput&quot; /&gt;&lt;/r&gt;&lt;/m&gt;" />
            </settings>
            <resourcereferences>
              <resourceReference name="DiagnosticStore" defaultAmount="[4096,4096,4096]" defaultSticky="true" kind="Directory" />
              <resourceReference name="EventStore" defaultAmount="[1000,1000,1000]" defaultSticky="false" kind="LogStore" />
            </resourcereferences>
            <storedcertificates>
              <storedCertificate name="Stored0Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" certificateStore="My" certificateLocation="System">
                <certificate>
                  <certificateMoniker name="/EmployeeManagerCloudApp/EmployeeManagerCloudAppGroup/CloudWebApp/Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" />
                </certificate>
              </storedCertificate>
            </storedcertificates>
            <certificates>
              <certificate name="Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" />
            </certificates>
          </role>
          <sCSPolicy>
            <sCSPolicyIDMoniker name="/EmployeeManagerCloudApp/EmployeeManagerCloudAppGroup/CloudWebAppInstances" />
            <sCSPolicyUpdateDomainMoniker name="/EmployeeManagerCloudApp/EmployeeManagerCloudAppGroup/CloudWebAppUpgradeDomains" />
            <sCSPolicyFaultDomainMoniker name="/EmployeeManagerCloudApp/EmployeeManagerCloudAppGroup/CloudWebAppFaultDomains" />
          </sCSPolicy>
        </groupHascomponents>
        <groupHascomponents>
          <role name="ThumbnailWebJob" generation="1" functional="0" release="0" software="C:\Users\tmtan\source\repos\CloudWebApp\EmployeeManagerCloudApp\csx\Debug\roles\ThumbnailWebJob" entryPoint="base\x64\WaHostBootstrapper.exe" parameters="base\x64\WaWorkerHost.exe " memIndex="-1" hostingEnvironment="consoleroleadmin" hostingEnvironmentVersion="2">
            <componentports>
              <inPort name="Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput" protocol="tcp" />
              <inPort name="Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp" protocol="tcp" portRanges="3389" />
              <outPort name="CloudWebApp:Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp" protocol="tcp">
                <outToChannel>
                  <sFSwitchChannelMoniker name="/EmployeeManagerCloudApp/EmployeeManagerCloudAppGroup/SW:CloudWebApp:Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp" />
                </outToChannel>
              </outPort>
              <outPort name="ThumbnailWebJob:Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp" protocol="tcp">
                <outToChannel>
                  <sFSwitchChannelMoniker name="/EmployeeManagerCloudApp/EmployeeManagerCloudAppGroup/SW:ThumbnailWebJob:Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp" />
                </outToChannel>
              </outPort>
            </componentports>
            <settings>
              <aCS name="APPINSIGHTS_INSTRUMENTATIONKEY" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountEncryptedPassword" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountExpiration" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountUsername" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.RemoteAccess.Enabled" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.RemoteForwarder.Enabled" defaultValue="" />
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;ThumbnailWebJob&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;CloudWebApp&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;e name=&quot;Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp&quot; /&gt;&lt;/r&gt;&lt;r name=&quot;ThumbnailWebJob&quot;&gt;&lt;e name=&quot;Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp&quot; /&gt;&lt;e name=&quot;Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput&quot; /&gt;&lt;/r&gt;&lt;/m&gt;" />
            </settings>
            <resourcereferences>
              <resourceReference name="DiagnosticStore" defaultAmount="[4096,4096,4096]" defaultSticky="true" kind="Directory" />
              <resourceReference name="EventStore" defaultAmount="[1000,1000,1000]" defaultSticky="false" kind="LogStore" />
            </resourcereferences>
            <storedcertificates>
              <storedCertificate name="Stored0Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" certificateStore="My" certificateLocation="System">
                <certificate>
                  <certificateMoniker name="/EmployeeManagerCloudApp/EmployeeManagerCloudAppGroup/ThumbnailWebJob/Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" />
                </certificate>
              </storedCertificate>
            </storedcertificates>
            <certificates>
              <certificate name="Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" />
            </certificates>
          </role>
          <sCSPolicy>
            <sCSPolicyIDMoniker name="/EmployeeManagerCloudApp/EmployeeManagerCloudAppGroup/ThumbnailWebJobInstances" />
            <sCSPolicyUpdateDomainMoniker name="/EmployeeManagerCloudApp/EmployeeManagerCloudAppGroup/ThumbnailWebJobUpgradeDomains" />
            <sCSPolicyFaultDomainMoniker name="/EmployeeManagerCloudApp/EmployeeManagerCloudAppGroup/ThumbnailWebJobFaultDomains" />
          </sCSPolicy>
        </groupHascomponents>
      </components>
      <sCSPolicy>
        <sCSPolicyUpdateDomain name="CloudWebAppUpgradeDomains" defaultPolicy="[5,5,5]" />
        <sCSPolicyUpdateDomain name="ThumbnailWebJobUpgradeDomains" defaultPolicy="[5,5,5]" />
        <sCSPolicyFaultDomain name="CloudWebAppFaultDomains" defaultPolicy="[2,2,2]" />
        <sCSPolicyFaultDomain name="ThumbnailWebJobFaultDomains" defaultPolicy="[2,2,2]" />
        <sCSPolicyID name="CloudWebAppInstances" defaultPolicy="[1,1,1]" />
        <sCSPolicyID name="ThumbnailWebJobInstances" defaultPolicy="[1,1,1]" />
      </sCSPolicy>
    </group>
  </groups>
  <implements>
    <implementation Id="b5540968-5a5a-4e84-9756-ba6a3d6bd4fb" ref="Microsoft.RedDog.Contract\ServiceContract\EmployeeManagerCloudAppContract@ServiceDefinition">
      <interfacereferences>
        <interfaceReference Id="d75ce5b0-fefd-445b-85e5-9e09c21234a2" ref="Microsoft.RedDog.Contract\Interface\CloudWebApp:Endpoint1@ServiceDefinition">
          <inPort>
            <inPortMoniker name="/EmployeeManagerCloudApp/EmployeeManagerCloudAppGroup/CloudWebApp:Endpoint1" />
          </inPort>
        </interfaceReference>
        <interfaceReference Id="b107c6cf-c87f-4204-b466-867f71dfbfc8" ref="Microsoft.RedDog.Contract\Interface\ThumbnailWebJob:Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput@ServiceDefinition">
          <inPort>
            <inPortMoniker name="/EmployeeManagerCloudApp/EmployeeManagerCloudAppGroup/ThumbnailWebJob:Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput" />
          </inPort>
        </interfaceReference>
      </interfacereferences>
    </implementation>
  </implements>
</serviceModel>