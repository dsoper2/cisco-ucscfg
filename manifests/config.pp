class ucscfg::config inherits ucscfg {

  file { "$ucscfg::settings_dir$ucscfg::cimc_settings_file":
    owner => 'root',
    group => 'root',
    mode  => '0644',
    content => "<root>
<!-- Cisco IMC - Exported Configuration
Kindly don't modify the key, password, v3auth-key and v3priv-auth-key from below. As these are the encrypted values.
-->
<key>bSj8LY6i/W/BsIjhcuNw+cpQmJBJtOkGrcIV0zFcgcmp6cKxzM4qLw/cdo7WNrNl</key>
<cimc>
<version>3.0(0.338)</version>
<network>
<!-- Kindly update and uncomment below settings for network configurations
<hostname>C220-FCH1827V150</hostname>
<ddns-enabled>yes</ddns-enabled>
<mode>shared_lom</mode>
<redundancy>active-active</redundancy>
<vic-slot>0</vic-slot>
<dns-use-dhcp>no</dns-use-dhcp>
<preferred-dns-server>171.70.168.183</preferred-dns-server>
<alternate-dns-server>0.0.0.0</alternate-dns-server>
<v6-dns-use-dhcp>no</v6-dns-use-dhcp>
<v6-preferred-dns-server>::</v6-preferred-dns-server>
<v6-alternate-dns-server>::</v6-alternate-dns-server>
<vlan-enabled>no</vlan-enabled>
<vlan-id>1</vlan-id>
<vlan-priority>0</vlan-priority>
<port-profile></port-profile>
<auto-negotiate>no</auto-negotiate>
<net-speed>100Mbps</net-speed>
<duplex>half</duplex>
<interface>
<dhcp-enabled>no</dhcp-enabled>
<v4-addr>10.29.131.103</v4-addr>
<v4-netmask>255.255.255.0</v4-netmask>
<v4-gateway>10.29.131.1</v4-gateway>
<v6-enabled>no</v6-enabled>
<v6-dhcp-enabled>no</v6-dhcp-enabled>
<v6-addr>::</v6-addr>
<v6-prefix>64</v6-prefix>
<v6-gateway>::</v6-gateway>
</interface>
-->
<ipblocking>
<enabled>no</enabled>
<fail-count>5</fail-count>
<fail-window>60</fail-window>
<penalty-time>300</penalty-time>
</ipblocking>
<ipfiltering>
<!-- Kindly update and uncomment below settings for ipfilter configurations
<enabled>no</enabled>
<filter-1> </filter-1>
<filter-2> </filter-2>
<filter-3> </filter-3>
<filter-4> </filter-4>
-->
</ipfiltering>
</network>
<tech-support>
<remote-ip>0.0.0.0</remote-ip>
<remote-path>default.tar.gz</remote-path>
<remote-protocol>tftp</remote-protocol>
</tech-support>
<log>
<server>
<index>1</index>
<server-ip>0.0.0.0</server-ip>
<server-port>514</server-port>
<enabled>no</enabled>
</server>
<server>
<index>2</index>
<server-ip>0.0.0.0</server-ip>
<server-port>514</server-port>
<enabled>no</enabled>
</server>
<local-syslog-severity>debug</local-syslog-severity>
<remote-syslog-severity>warning</remote-syslog-severity>
</log>
<power-restore-policy>
<policy>power-off</policy>
<delay-type>fixed</delay-type>
<delay-value>0</delay-value>
</power-restore-policy>
</cimc>
<chassis>
<description></description>
<fan-policy>
<fan-policy>$ucscfg::fan_policy</fan-policy>
</fan-policy>
</chassis>
<bios>
<secure-boot>disable</secure-boot>
<boot-order>PXE,HDD
</boot-order>
<DeviceList><Device><name>vMedia</name>
<type>VMEDIA</type>
<subtype>KVMDVD</subtype>
<order>1</order>
<state>Disabled</state>
</Device><Device><name>UEFI</name>
<type>UEFI</type>
<order>2</order>
<state>Disabled</state>
</Device><Device><name>eth0</name>
<type>PXE</type>
<slot>L</slot>
<port>0</port>
<order>3</order>
<state>Disabled</state>
</Device></DeviceList><main>
<POPSupport>Disabled</POPSupport>
<TPMAdminCtrl>Enabled</TPMAdminCtrl>
</main>
<advanced>
<ATS>Enabled</ATS>
<AdjacentCacheLinePrefetch>Enabled</AdjacentCacheLinePrefetch>
<AllLomPortControl>Enabled</AllLomPortControl>
<AllUsbDevices>Enabled</AllUsbDevices>
<Altitude>300_M</Altitude>
<AutonumousCstateEnable>Disabled</AutonumousCstateEnable>
<BaudRate>115200</BaudRate>
<CPUPowerManagement>Performance</CPUPowerManagement>
<ChannelInterLeave>Auto</ChannelInterLeave>
<CmciEnable>Disabled</CmciEnable>
<CoherencySupport>Disabled</CoherencySupport>
<ConsoleRedir>Disabled</ConsoleRedir>
<CoreMultiProcessing>All</CoreMultiProcessing>
<CpuEngPerfBias>Balanced_Performance</CpuEngPerfBias>
<CpuPerformanceProfile>Enterprise</CpuPerformanceProfile>
<DcuIpPrefetch>Enabled</DcuIpPrefetch>
<DcuStreamerPrefetch>Enabled</DcuStreamerPrefetch>
<DemandScrub>Enabled</DemandScrub>
<DirectCacheAccess>Auto</DirectCacheAccess>
<EnhancedIntelSpeedStep>Enabled</EnhancedIntelSpeedStep>
<ExecuteDisable>Enabled</ExecuteDisable>
<FlowCtrl>None</FlowCtrl>
<HWPMEnable>Disabled</HWPMEnable>
<HardwarePrefetch>Enabled</HardwarePrefetch>
<IntelHyperThread>Enabled</IntelHyperThread>
<IntelTurboBoostTech>Enabled</IntelTurboBoostTech>
<IntelVT>Enabled</IntelVT>
<IntelVTD>Enabled</IntelVTD>
<InterruptRemap>Enabled</InterruptRemap>
<LegacyUSBSupport>Enabled</LegacyUSBSupport>
<LocalX2Apic>XAPIC</LocalX2Apic>
<LomOpromControlPort0>Enabled</LomOpromControlPort0>
<LomOpromControlPort1>Enabled</LomOpromControlPort1>
<MemoryMappedIOAbove4GB>Enabled</MemoryMappedIOAbove4GB>
<NUMAOptimize>Enabled</NUMAOptimize>
<PCIROMCLP>Disabled</PCIROMCLP>
<PCIeSSDHotPlugSupport>Disabled</PCIeSSDHotPlugSupport>
<PackageCstateLimit>C6_Retention</PackageCstateLimit>
<PassThroughDMA>Disabled</PassThroughDMA>
<PatrolScrub>Enabled</PatrolScrub>
<PchUsb30Mode>Disabled</PchUsb30Mode>
<PcieOptionROMs>Enabled</PcieOptionROMs>
<PcieSlot1OptionROM>Enabled</PcieSlot1OptionROM>
<PcieSlot2OptionROM>Enabled</PcieSlot2OptionROM>
<PcieSlotFrontSlot5LinkSpeed>GEN3</PcieSlotFrontSlot5LinkSpeed>
<PcieSlotFrontSlot6LinkSpeed>GEN3</PcieSlotFrontSlot6LinkSpeed>
<PcieSlotHBALinkSpeed>GEN3</PcieSlotHBALinkSpeed>
<PcieSlotHBAOptionROM>Enabled</PcieSlotHBAOptionROM>
<PcieSlotMLOMLinkSpeed>GEN3</PcieSlotMLOMLinkSpeed>
<PcieSlotMLOMOptionROM>Enabled</PcieSlotMLOMOptionROM>
<PcieSlotN1OptionROM>Enabled</PcieSlotN1OptionROM>
<PcieSlotN2OptionROM>Enabled</PcieSlotN2OptionROM>
<PcieSlotRiser1LinkSpeed>GEN3</PcieSlotRiser1LinkSpeed>
<PcieSlotRiser2LinkSpeed>Auto</PcieSlotRiser2LinkSpeed>
<ProcessorC1E>Enabled</ProcessorC1E>
<ProcessorC3Report>Disabled</ProcessorC3Report>
<ProcessorC6Report>Enabled</ProcessorC6Report>
<PsdCoordType>HW_ALL</PsdCoordType>
<PuttyFunctionKeyPad>ESCN</PuttyFunctionKeyPad>
<PwrPerfTuning>OS</PwrPerfTuning>
<QPILinkFrequency>Auto</QPILinkFrequency>
<QpiSnoopMode>Auto</QpiSnoopMode>
<RankInterLeave>Auto</RankInterLeave>
<RedirectionAfterPOST>Always_Enable</RedirectionAfterPOST>
<SataModeSelect>$ucscfg::sata_mode_select</SataModeSelect>
<SelectMemoryRAS>Maximum_Performance</SelectMemoryRAS>
<SrIov>Enabled</SrIov>
<TerminalType>VT100</TerminalType>
<UsbEmul6064>Enabled</UsbEmul6064>
<UsbPortFront>Enabled</UsbPortFront>
<UsbPortInt>Enabled</UsbPortInt>
<UsbPortKVM>Enabled</UsbPortKVM>
<UsbPortRear>Enabled</UsbPortRear>
<UsbPortVMedia>Enabled</UsbPortVMedia>
<VgaPriority>Onboard</VgaPriority>
<WorkLdConfig>Balanced</WorkLdConfig>
<cdnEnable>Disabled</cdnEnable>
<comSpcrEnable>Disabled</comSpcrEnable>
</advanced>
<server-management>
<FRB-2>Enabled</FRB-2>
<OSBootWatchdogTimer>Disabled</OSBootWatchdogTimer>
<OSBootWatchdogTimerPolicy>Power_Down</OSBootWatchdogTimerPolicy>
<OSBootWatchdogTimerTimeout>10_mins</OSBootWatchdogTimerTimeout>
</server-management>
</bios>
<http>
<enabled>yes</enabled>
<http-port>80</http-port>
<https-port>443</https-port>
<timeout>1800</timeout>
<http-redirect>no</http-redirect>
</http>
<ssh>
<enabled>yes</enabled>
<ssh-port>22</ssh-port>
<timeout>1800</timeout>
</ssh>
<xmlapi>
<enabled>yes</enabled>
</xmlapi>
<redfish>
<enabled>yes</enabled>
</redfish>
<ipmi>
<enabled>yes</enabled>
<privilege-level>admin</privilege-level>
<encryption-key>0000000000000000000000000000000000000000</encryption-key>
</ipmi>
<kvm>
<enabled>yes</enabled>
<kvm-port>2068</kvm-port>
<max-sessions>4</max-sessions>
<encrypted>yes</encrypted>
<local-video>yes</local-video>
</kvm>
<vmedia>
<enabled>yes</enabled>
<encrypted>no</encrypted>
<low-power-usb-enabled>yes</low-power-usb-enabled>
</vmedia>
<sol>
<enabled>no</enabled>
<baud-rate>115200</baud-rate>
<comport>com0</comport>
</sol>
<ldap>
<enabled>no</enabled>
<domain></domain>
<encrypted>yes</encrypted>
<attribute>CiscoAvPair</attribute>
<timeout>60</timeout>
<base-dn></base-dn>
<filter-attribute>sAMAccountName</filter-attribute>
<userSearchPrecedence>no</userSearchPrecedence>
<binding>
<binding-method>2</binding-method>
<bind-dn></bind-dn>
<password>rJvX4ml2nKtXusipJD7schDFW/71R+PVzPxOLb/m7QtgQjXuig3/axMREyM+p5pX</password>
</binding>
<binding-certificate>
<enabled>no</enabled>
</binding-certificate>
<dns-search>
<dns-query>no</dns-query>
<domain-source>0</domain-source>
<search-domain></search-domain>
<search-forest></search-forest>
</dns-search>
<ldap-group-rule>
<group-auth>no</group-auth>
<group-attribute>memberOf</group-attribute>
<group-search-depth>128</group-search-depth>
</ldap-group-rule>
<ldap-server>
<LDAPDomainController1></LDAPDomainController1>
<LDAPPort1>389</LDAPPort1>
<LDAPDomainController2></LDAPDomainController2>
<LDAPPort2>389</LDAPPort2>
<LDAPDomainController3></LDAPDomainController3>
<LDAPPort3>389</LDAPPort3>
<LDAPGlobalCatalog1></LDAPGlobalCatalog1>
<LDAPPort4>3268</LDAPPort4>
<LDAPGlobalCatalog2></LDAPGlobalCatalog2>
<LDAPPort5>3268</LDAPPort5>
<LDAPGlobalCatalog3></LDAPGlobalCatalog3>
<LDAPPort6>3268</LDAPPort6>
</ldap-server>
</ldap>
<ntp>
<enabled>yes</enabled>
<server-1>ntp.esl.cisco.com</server-1>
<server-2></server-2>
<server-3></server-3>
<server-4></server-4>
</ntp>
<fault>
<platform-event-enabled>yes</platform-event-enabled>
<pef>
<index>1</index>
<name>Temperature Critical Assert Filter</name>
<action>none</action>
</pef>
<pef>
<index>2</index>
<name>Voltage Critical Assert Filter</name>
<action>none</action>
</pef>
<pef>
<index>3</index>
<name>Current Critical Assert Filter</name>
<action>none</action>
</pef>
<pef>
<index>4</index>
<name>Fan Critical Assert Filter</name>
<action>none</action>
</pef>
<pef>
<index>5</index>
<name>Processor Assert Filter</name>
<action>none</action>
</pef>
<pef>
<index>6</index>
<name>Power Supply Critical Assert Filter</name>
<action>none</action>
</pef>
<pef>
<index>7</index>
<name>Memory Critical Assert Filter</name>
<action>none</action>
</pef>
</fault>
<snmp>
<enabled>no</enabled>
<snmp-port>161</snmp-port>
<trap-community-str></trap-community-str>
<community-str></community-str>
<engine-id-str></engine-id-str>
<sys-contact>who@where</sys-contact>
<sys-location>unknown</sys-location>
<community-access>disabled</community-access>
<v3ConfigGroupList><v3ConfigGroup><v3index>1</v3index>
<v3add>0</v3add>
<v3security-name></v3security-name>
<v3security-level></v3security-level>
<v3proto></v3proto>
<v3auth-key></v3auth-key>
<v3priv-proto></v3priv-proto>
<v3priv-auth-key></v3priv-auth-key>
</v3ConfigGroup><v3ConfigGroup><v3index>2</v3index>
<v3add>0</v3add>
<v3security-name></v3security-name>
<v3security-level></v3security-level>
<v3proto></v3proto>
<v3auth-key></v3auth-key>
<v3priv-proto></v3priv-proto>
<v3priv-auth-key></v3priv-auth-key>
</v3ConfigGroup><v3ConfigGroup><v3index>3</v3index>
<v3add>0</v3add>
<v3security-name></v3security-name>
<v3security-level></v3security-level>
<v3proto></v3proto>
<v3auth-key></v3auth-key>
<v3priv-proto></v3priv-proto>
<v3priv-auth-key></v3priv-auth-key>
</v3ConfigGroup><v3ConfigGroup><v3index>4</v3index>
<v3add>0</v3add>
<v3security-name></v3security-name>
<v3security-level></v3security-level>
<v3proto></v3proto>
<v3auth-key></v3auth-key>
<v3priv-proto></v3priv-proto>
<v3priv-auth-key></v3priv-auth-key>
</v3ConfigGroup><v3ConfigGroup><v3index>5</v3index>
<v3add>0</v3add>
<v3security-name></v3security-name>
<v3security-level></v3security-level>
<v3proto></v3proto>
<v3auth-key></v3auth-key>
<v3priv-proto></v3priv-proto>
<v3priv-auth-key></v3priv-auth-key>
</v3ConfigGroup><v3ConfigGroup><v3index>6</v3index>
<v3add>0</v3add>
<v3security-name></v3security-name>
<v3security-level></v3security-level>
<v3proto></v3proto>
<v3auth-key></v3auth-key>
<v3priv-proto></v3priv-proto>
<v3priv-auth-key></v3priv-auth-key>
</v3ConfigGroup><v3ConfigGroup><v3index>7</v3index>
<v3add>0</v3add>
<v3security-name></v3security-name>
<v3security-level></v3security-level>
<v3proto></v3proto>
<v3auth-key></v3auth-key>
<v3priv-proto></v3priv-proto>
<v3priv-auth-key></v3priv-auth-key>
</v3ConfigGroup><v3ConfigGroup><v3index>8</v3index>
<v3add>0</v3add>
<v3security-name></v3security-name>
<v3security-level></v3security-level>
<v3proto></v3proto>
<v3auth-key></v3auth-key>
<v3priv-proto></v3priv-proto>
<v3priv-auth-key></v3priv-auth-key>
</v3ConfigGroup><v3ConfigGroup><v3index>9</v3index>
<v3add>0</v3add>
<v3security-name></v3security-name>
<v3security-level></v3security-level>
<v3proto></v3proto>
<v3auth-key></v3auth-key>
<v3priv-proto></v3priv-proto>
<v3priv-auth-key></v3priv-auth-key>
</v3ConfigGroup><v3ConfigGroup><v3index>10</v3index>
<v3add>0</v3add>
<v3security-name></v3security-name>
<v3security-level></v3security-level>
<v3proto></v3proto>
<v3auth-key></v3auth-key>
<v3priv-proto></v3priv-proto>
<v3priv-auth-key></v3priv-auth-key>
</v3ConfigGroup><v3ConfigGroup><v3index>11</v3index>
<v3add>0</v3add>
<v3security-name></v3security-name>
<v3security-level></v3security-level>
<v3proto></v3proto>
<v3auth-key></v3auth-key>
<v3priv-proto></v3priv-proto>
<v3priv-auth-key></v3priv-auth-key>
</v3ConfigGroup><v3ConfigGroup><v3index>12</v3index>
<v3add>0</v3add>
<v3security-name></v3security-name>
<v3security-level></v3security-level>
<v3proto></v3proto>
<v3auth-key></v3auth-key>
<v3priv-proto></v3priv-proto>
<v3priv-auth-key></v3priv-auth-key>
</v3ConfigGroup><v3ConfigGroup><v3index>13</v3index>
<v3add>0</v3add>
<v3security-name></v3security-name>
<v3security-level></v3security-level>
<v3proto></v3proto>
<v3auth-key></v3auth-key>
<v3priv-proto></v3priv-proto>
<v3priv-auth-key></v3priv-auth-key>
</v3ConfigGroup><v3ConfigGroup><v3index>14</v3index>
<v3add>0</v3add>
<v3security-name></v3security-name>
<v3security-level></v3security-level>
<v3proto></v3proto>
<v3auth-key></v3auth-key>
<v3priv-proto></v3priv-proto>
<v3priv-auth-key></v3priv-auth-key>
</v3ConfigGroup><v3ConfigGroup><v3index>15</v3index>
<v3add>0</v3add>
<v3security-name></v3security-name>
<v3security-level></v3security-level>
<v3proto></v3proto>
<v3auth-key></v3auth-key>
<v3priv-proto></v3priv-proto>
<v3priv-auth-key></v3priv-auth-key>
</v3ConfigGroup></v3ConfigGroupList><TrapDestinationList><TrapDestination><index>1</index>
<enabled>0</enabled>
<version>3</version>
<type>trap</type>
<user>unknown</user>
<trap-addr>0.0.0.0</trap-addr>
<trap-port>162</trap-port>
<delete>0</delete>
</TrapDestination><TrapDestination><index>2</index>
<enabled>0</enabled>
<version>3</version>
<type>trap</type>
<user>unknown</user>
<trap-addr>0.0.0.0</trap-addr>
<trap-port>162</trap-port>
<delete>0</delete>
</TrapDestination><TrapDestination><index>3</index>
<enabled>0</enabled>
<version>3</version>
<type>trap</type>
<user>unknown</user>
<trap-addr>0.0.0.0</trap-addr>
<trap-port>162</trap-port>
<delete>0</delete>
</TrapDestination><TrapDestination><index>4</index>
<enabled>0</enabled>
<version>3</version>
<type>trap</type>
<user>unknown</user>
<trap-addr>0.0.0.0</trap-addr>
<trap-port>162</trap-port>
<delete>0</delete>
</TrapDestination><TrapDestination><index>5</index>
<enabled>0</enabled>
<version>3</version>
<type>trap</type>
<user>unknown</user>
<trap-addr>0.0.0.0</trap-addr>
<trap-port>162</trap-port>
<delete>0</delete>
</TrapDestination><TrapDestination><index>6</index>
<enabled>0</enabled>
<version>3</version>
<type>trap</type>
<user>unknown</user>
<trap-addr>0.0.0.0</trap-addr>
<trap-port>162</trap-port>
<delete>0</delete>
</TrapDestination><TrapDestination><index>7</index>
<enabled>0</enabled>
<version>3</version>
<type>trap</type>
<user>unknown</user>
<trap-addr>0.0.0.0</trap-addr>
<trap-port>162</trap-port>
<delete>0</delete>
</TrapDestination><TrapDestination><index>8</index>
<enabled>0</enabled>
<version>3</version>
<type>trap</type>
<user>unknown</user>
<trap-addr>0.0.0.0</trap-addr>
<trap-port>162</trap-port>
<delete>0</delete>
</TrapDestination><TrapDestination><index>9</index>
<enabled>0</enabled>
<version>3</version>
<type>trap</type>
<user>unknown</user>
<trap-addr>0.0.0.0</trap-addr>
<trap-port>162</trap-port>
<delete>0</delete>
</TrapDestination><TrapDestination><index>10</index>
<enabled>0</enabled>
<version>3</version>
<type>trap</type>
<user>unknown</user>
<trap-addr>0.0.0.0</trap-addr>
<trap-port>162</trap-port>
<delete>0</delete>
</TrapDestination><TrapDestination><index>11</index>
<enabled>0</enabled>
<version>3</version>
<type>trap</type>
<user>unknown</user>
<trap-addr>0.0.0.0</trap-addr>
<trap-port>162</trap-port>
<delete>0</delete>
</TrapDestination><TrapDestination><index>12</index>
<enabled>0</enabled>
<version>3</version>
<type>trap</type>
<user>unknown</user>
<trap-addr>0.0.0.0</trap-addr>
<trap-port>162</trap-port>
<delete>0</delete>
</TrapDestination><TrapDestination><index>13</index>
<enabled>0</enabled>
<version>3</version>
<type>trap</type>
<user>unknown</user>
<trap-addr>0.0.0.0</trap-addr>
<trap-port>162</trap-port>
<delete>0</delete>
</TrapDestination><TrapDestination><index>14</index>
<enabled>0</enabled>
<version>3</version>
<type>trap</type>
<user>unknown</user>
<trap-addr>0.0.0.0</trap-addr>
<trap-port>162</trap-port>
<delete>0</delete>
</TrapDestination><TrapDestination><index>15</index>
<enabled>0</enabled>
<version>3</version>
<type>trap</type>
<user>unknown</user>
<trap-addr>0.0.0.0</trap-addr>
<trap-port>162</trap-port>
<delete>0</delete>
</TrapDestination></TrapDestinationList></snmp>
<power-cap-config>
<pow-cap-enable>0</pow-cap-enable>
<powerProfileList>
<power-profile>
<profile-id>0</profile-id>
<enabled>0</enabled>
<pow-limit>-1</pow-limit>
<susp-pd></susp-pd>
<except-action>1</except-action>
<corr-time>3</corr-time>
<hard-cap>0</hard-cap>
<allow-throttle>2</allow-throttle>
</power-profile>
<power-profile>
<profile-id>1</profile-id>
<enabled>0</enabled>
<pow-limit>0</pow-limit>
<susp-pd></susp-pd>
<except-action>1</except-action>
<corr-time>3</corr-time>
<hard-cap>0</hard-cap>
<allow-throttle>2</allow-throttle>
<boot-mode>2</boot-mode>
</power-profile>
<power-profile>
<profile-id>2</profile-id>
<enabled>0</enabled>
<pow-limit>-1</pow-limit>
<susp-pd></susp-pd>
<except-action>1</except-action>
<corr-time>3</corr-time>
<hard-cap>0</hard-cap>
<allow-throttle>2</allow-throttle>
<cpu-power-limit>-1</cpu-power-limit>
<cpu-safe-Tlvl>-1</cpu-safe-Tlvl>
<mem-power-limit>-1</mem-power-limit>
<thermal-power-limit>-1</thermal-power-limit>
<mem-safe-Tlvl>-1</mem-safe-Tlvl>
<plat-thermal>-1</plat-thermal>
<plat-safe-Tlvl>-1</plat-safe-Tlvl>
<miss-rdg-timeout>-1</miss-rdg-timeout>
</power-profile>
</powerProfileList>
</power-cap-config>
<user-policy>
<password-expiration>
<grace-period>0</grace-period>
<notification-period>15</notification-period>
<password-expiry-duration>0</password-expiry-duration>
<password-history>0</password-history>
</password-expiration>
</user-policy>
<status>ok</status>
</root>"
  }

  exec { 'apply_cimc_settings':
    command => "ucscfg import $ucscfg::cimc_settings_file 999888",
    unless  => "ucscfg export cimc_tmp.xml 999888; diff -w $ucscfg::cimc_settings_file cimc_tmp.xml",
    cwd     => "$ucscfg::settings_dir",
    path    => "/bin:/usr/bin:$ucscfg::settings_dir",
    require => File["$ucscfg::settings_dir$ucscfg::cimc_settings_file"],
    logoutput => true,
    timeout => 900
  }

  file { "$ucscfg::settings_dir$ucscfg::bios_settings_file":
    owner => 'root',
    group => 'root',
    mode  => '0644',
    content => "## BIOSVersion :: $ucscfg::bios_version
/bios/Main/TPMAdminCtrl Enabled
/bios/Advanced/Processor_Configuration/IntelHyperThread $ucscfg::intel_hyper_thread
/bios/Advanced/Processor_Configuration/CoreMultiProcessing All
/bios/Advanced/Processor_Configuration/ExecuteDisable Enabled
/bios/Advanced/Processor_Configuration/IntelVT Enabled
/bios/Advanced/Processor_Configuration/IntelVTD Enabled
/bios/Advanced/Processor_Configuration/InterruptRemap Enabled
/bios/Advanced/Processor_Configuration/PassThroughDMA Disabled
/bios/Advanced/Processor_Configuration/CoherencySupport Disabled
/bios/Advanced/Processor_Configuration/ATS Enabled
/bios/Advanced/Processor_Configuration/CpuPerformanceProfile Enterprise
/bios/Advanced/Processor_Configuration/HardwarePrefetch Enabled
/bios/Advanced/Processor_Configuration/AdjacentCacheLinePrefetch Enabled
/bios/Advanced/Processor_Configuration/DcuStreamerPrefetch Enabled
/bios/Advanced/Processor_Configuration/DcuIpPrefetch Enabled
/bios/Advanced/Processor_Configuration/DirectCacheAccess Auto
/bios/Advanced/Processor_Configuration/CPUPowerManagement Performance
/bios/Advanced/Processor_Configuration/EnhancedIntelSpeedStep Enabled
/bios/Advanced/Processor_Configuration/IntelTurboBoostTech Enabled
/bios/Advanced/Processor_Configuration/ProcessorC3Report Disabled
/bios/Advanced/Processor_Configuration/ProcessorC6Report Enabled
/bios/Advanced/Processor_Configuration/ProcessorC1E Enabled
/bios/Advanced/Processor_Configuration/PsdCoordType \"HW ALL\"
/bios/Advanced/Processor_Configuration/PwrPerfTuning OS
/bios/Advanced/Processor_Configuration/CpuEngPerfBias \"Balanced Performance\"
/bios/Advanced/Processor_Configuration/PackageCstateLimit \"C6 Retention\"
/bios/Advanced/Processor_Configuration/LocalX2Apic XAPIC
/bios/Advanced/Processor_Configuration/WorkLdConfig Balanced
/bios/Advanced/Processor_Configuration/HWPMEnable Disabled
/bios/Advanced/Processor_Configuration/AutonumousCstateEnable Disabled
/bios/Advanced/Processor_Configuration/CmciEnable Disabled
/bios/Advanced/Memory_Configuration/SelectMemoryRAS \"Maximum Performance\"
/bios/Advanced/Memory_Configuration/NUMAOptimize Enabled
/bios/Advanced/Memory_Configuration/ChannelInterLeave Auto
/bios/Advanced/Memory_Configuration/RankInterLeave Auto
/bios/Advanced/Memory_Configuration/PatrolScrub Enabled
/bios/Advanced/Memory_Configuration/DemandScrub Enabled
/bios/Advanced/Memory_Configuration/Altitude \"300 M\"
/bios/Advanced/QPI_Configuration/QPILinkFrequency Auto
/bios/Advanced/QPI_Configuration/QpiSnoopMode Auto
/bios/Advanced/USB_Configuration/LegacyUSBSupport Enabled
/bios/Advanced/USB_Configuration/UsbEmul6064 Enabled
/bios/Advanced/USB_Configuration/PchUsb30Mode Disabled
/bios/Advanced/USB_Configuration/AllUsbDevices Enabled
/bios/Advanced/USB_Configuration/UsbPortRear Enabled
/bios/Advanced/USB_Configuration/UsbPortFront Enabled
/bios/Advanced/USB_Configuration/UsbPortInt Enabled
/bios/Advanced/USB_Configuration/UsbPortKVM Enabled
/bios/Advanced/USB_Configuration/UsbPortVMedia Enabled
/bios/Advanced/PCI_Configuration/MemoryMappedIOAbove4GB Enabled
/bios/Advanced/PCI_Configuration/SrIov Enabled
/bios/Advanced/Serial_Configuration/comSpcrEnable Disabled
/bios/Advanced/Serial_Configuration/ConsoleRedir Disabled
/bios/Advanced/Serial_Configuration/TerminalType VT100
/bios/Advanced/Serial_Configuration/BaudRate 115200
/bios/Advanced/Serial_Configuration/FlowCtrl None
/bios/Advanced/Serial_Configuration/PuttyFunctionKeyPad ESCN
/bios/Advanced/Serial_Configuration/RedirectionAfterPOST \"Always Enable\"
/bios/Advanced/LOM_and_PCIe_Slots_Configuration/cdnEnable Disabled
/bios/Advanced/LOM_and_PCIe_Slots_Configuration/PCIROMCLP Disabled
/bios/Advanced/LOM_and_PCIe_Slots_Configuration/SataModeSelect AHCI
/bios/Advanced/LOM_and_PCIe_Slots_Configuration/AllLomPortControl Enabled
/bios/Advanced/LOM_and_PCIe_Slots_Configuration/LomOpromControlPort0 Enabled
/bios/Advanced/LOM_and_PCIe_Slots_Configuration/LomOpromControlPort1 Enabled
/bios/Advanced/LOM_and_PCIe_Slots_Configuration/PcieOptionROMs Enabled
/bios/Advanced/LOM_and_PCIe_Slots_Configuration/PcieSlot1OptionROM Enabled
/bios/Advanced/LOM_and_PCIe_Slots_Configuration/PcieSlot2OptionROM Enabled
/bios/Advanced/LOM_and_PCIe_Slots_Configuration/PcieSlotMLOMOptionROM Enabled
/bios/Advanced/LOM_and_PCIe_Slots_Configuration/PcieSlotHBAOptionROM Enabled
/bios/Advanced/LOM_and_PCIe_Slots_Configuration/PcieSlotN1OptionROM Enabled
/bios/Advanced/LOM_and_PCIe_Slots_Configuration/PcieSlotN2OptionROM Enabled
/bios/Advanced/LOM_and_PCIe_Slots_Configuration/PcieSlotMLOMLinkSpeed GEN3
/bios/Advanced/LOM_and_PCIe_Slots_Configuration/PcieSlotRiser1LinkSpeed GEN3
/bios/Advanced/LOM_and_PCIe_Slots_Configuration/PcieSlotRiser2LinkSpeed Auto
/bios/Advanced/LOM_and_PCIe_Slots_Configuration/PcieSlotFrontSlot5LinkSpeed GEN3
/bios/Advanced/LOM_and_PCIe_Slots_Configuration/PcieSlotFrontSlot6LinkSpeed GEN3
/bios/Advanced/LOM_and_PCIe_Slots_Configuration/PcieSlotHBALinkSpeed GEN3
/bios/Server_Management/FRB-2 Enabled
/bios/Server_Management/OSBootWatchdogTimer Disabled
/bios/Server_Management/OSBootWatchdogTimerTimeout \"10 mins\"
/bios/Server_Management/OSBootWatchdogTimerPolicy \"Power Down\"

"
  }

  exec { 'apply_bios_settings':
    command => "ucscfg batch set $ucscfg::bios_settings_file",
    unless  => "ucscfg show text /bios | diff -w $ucscfg::bios_settings_file -",
    cwd     => "$ucscfg::settings_dir",
    path    => "/bin:/usr/bin:$ucscfg::settings_dir",
    require => File["$ucscfg::settings_dir$ucscfg::bios_settings_file"],
    logoutput => true
  }

  reboot { 'after_run':
    message => 'Rebooting due to ucscfg bios settings changes',
    apply   => finished,
    subscribe => Exec['apply_bios_settings'],
    when    => refreshed
  }

}
