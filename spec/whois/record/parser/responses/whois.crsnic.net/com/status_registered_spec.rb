# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.crsnic.net/com/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/whois.crsnic.net.rb'

describe Whois::Record::Parser::WhoisCrsnicNet, "status_registered.expected" do

  subject do
    file = fixture("responses", "whois.crsnic.net/com/status_registered.txt")
    part = Whois::Record::Part.new(body: File.read(file))
    described_class.new(part)
  end

  describe "#disclaimer" do
    it do
      expect(subject.disclaimer).to eq("TERMS OF USE: You are not authorized to access or query our Whois database through the use of electronic processes that are high-volume and automated except as reasonably necessary to register domain names or modify existing registrations; the Data in VeriSign Global Registry Services' (\"VeriSign\") Whois database is provided by VeriSign for information purposes only, and to assist persons in obtaining information about or related to a domain name registration record. VeriSign does not guarantee its accuracy. By submitting a Whois query, you agree to abide by the following terms of use: You agree that you may use this Data only for lawful purposes and that under no circumstances will you use this Data to: (1) allow, enable, or otherwise support the transmission of mass unsolicited, commercial advertising or solicitations via e-mail, telephone, or facsimile; or (2) enable high volume, automated, electronic processes that apply to VeriSign (or its computer systems). The compilation, repackaging, dissemination or other use of this Data is expressly prohibited without the prior written consent of VeriSign. You agree not to use electronic processes that are automated and high-volume to access or query the Whois database except as reasonably necessary to register domain names or modify existing registrations. VeriSign reserves the right to restrict your access to the Whois database in its sole discretion to ensure operational stability.  VeriSign may restrict or terminate your access to the Whois database for failure to abide by these terms of use. VeriSign reserves the right to modify these terms at any time.")
    end
  end
  describe "#domain" do
    it do
      expect(subject.domain).to eq("google.com")
    end
  end
  describe "#domain_id" do
    it do
      expect { subject.domain_id }.to raise_error(Whois::AttributeNotSupported)
    end
  end
  describe "#status" do
    it do
      expect(subject.status).to eq(["clientDeleteProhibited", "clientTransferProhibited", "clientUpdateProhibited", "serverDeleteProhibited", "serverTransferProhibited", "serverUpdateProhibited"])
    end
  end
  describe "#available?" do
    it do
      expect(subject.available?).to eq(false)
    end
  end
  describe "#registered?" do
    it do
      expect(subject.registered?).to eq(true)
    end
  end
  describe "#created_on" do
    it do
      expect(subject.created_on).to be_a(Time)
      expect(subject.created_on).to eq(Time.parse("1997-09-15"))
    end
  end
  describe "#updated_on" do
    it do
      expect(subject.updated_on).to be_a(Time)
      expect(subject.updated_on).to eq(Time.parse("2011-07-20"))
    end
  end
  describe "#expires_on" do
    it do
      expect(subject.expires_on).to be_a(Time)
      expect(subject.expires_on).to eq(Time.parse("2020-09-14"))
    end
  end
  describe "#registrar" do
    it do
      expect(subject.registrar).to be_a(Whois::Record::Registrar)
      expect(subject.registrar.id).to eq(nil)
      expect(subject.registrar.name).to eq("MARKMONITOR INC.")
      expect(subject.registrar.organization).to eq("MARKMONITOR INC.")
      expect(subject.registrar.url).to eq("http://www.markmonitor.com")
    end
  end
  describe "#nameservers" do
    it do
      expect(subject.nameservers).to be_a(Array)
      expect(subject.nameservers).to have(4).items
      expect(subject.nameservers[0]).to be_a(Whois::Record::Nameserver)
      expect(subject.nameservers[0].name).to eq("ns1.google.com")
      expect(subject.nameservers[1]).to be_a(Whois::Record::Nameserver)
      expect(subject.nameservers[1].name).to eq("ns2.google.com")
      expect(subject.nameservers[2]).to be_a(Whois::Record::Nameserver)
      expect(subject.nameservers[2].name).to eq("ns3.google.com")
      expect(subject.nameservers[3]).to be_a(Whois::Record::Nameserver)
      expect(subject.nameservers[3].name).to eq("ns4.google.com")
    end
  end
  describe "#referral_whois" do
    it do
      expect(subject.referral_whois).to eq(["whois.PublicDomainRegistry.com", "whois.PublicDomainRegistry.com", "whois.tucows.com", "whois.domaincontext.com", "whois.PublicDomainRegistry.com", "whois.PublicDomainRegistry.com", "whois.PublicDomainRegistry.com", "whois.rrpproxy.net", "whois.onlinenic.com", "whois.domain.com", "whois.PublicDomainRegistry.com", "whois.PublicDomainRegistry.com", "whois.webnic.cc", "whois.PublicDomainRegistry.com", "whois.enterprice.net", "whois.melbourneit.com", "whois.godaddy.com", "whois.godaddy.com", "whois.enom.com", "whois.omnis.com", "whois.PublicDomainRegistry.com", "whois.wildwestdomains.com", "whois.PublicDomainRegistry.com", "whois.syra.com.au", "whois.PublicDomainRegistry.com", "whois.enom.com", "whois.name.com", "whois.gandi.net", "whois.hostingservicesinc.net", "grs-whois.hichina.com", "whois.tucows.com", "whois.godaddy.com", "whois.namesecure.com", "whois.paycenter.com.cn", "whois.enom.com", "whois.instra.net", "whois.planetdomain.com", "whois.enom.com", "whois.enom.com", "whois.tucows.com", "whois.markmonitor.com"])
    end
  end
  describe "#referral_url" do
    it do
      expect(subject.referral_url).to eq("http://www.markmonitor.com")
    end
  end
end
