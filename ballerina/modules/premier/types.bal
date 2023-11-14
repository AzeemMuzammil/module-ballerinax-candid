// Copyright (c) 2023 WSO2 LLC. (http://www.wso2.org) All Rights Reserved.
//
// WSO2 LLC. licenses this file to you under the Apache License,
// Version 2.0 (the "License"); you may not use this file except
// in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing,
// software distributed under the License is distributed on an
// "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
// KIND, either express or implied.  See the License for the
// specific language governing permissions and limitations
// under the License.

import ballerina/http;

# Provides a set of configurations for controlling the behaviours when communicating with a remote HTTP endpoint.
@display {label: "Connection Config"}
public type ConnectionConfig record {|
    # The HTTP version understood by the client
    http:HttpVersion httpVersion = http:HTTP_2_0;
    # Configurations related to HTTP/1.x protocol
    ClientHttp1Settings http1Settings?;
    # Configurations related to HTTP/2 protocol
    http:ClientHttp2Settings http2Settings?;
    # The maximum time to wait (in seconds) for a response before closing the connection
    decimal timeout = 60;
    # The choice of setting `forwarded`/`x-forwarded` header
    string forwarded = "disable";
    # Configurations associated with request pooling
    http:PoolConfiguration poolConfig?;
    # HTTP caching related configurations
    http:CacheConfig cache?;
    # Specifies the way of handling compression (`accept-encoding`) header
    http:Compression compression = http:COMPRESSION_AUTO;
    # Configurations associated with the behaviour of the Circuit Breaker
    http:CircuitBreakerConfig circuitBreaker?;
    # Configurations associated with retrying
    http:RetryConfig retryConfig?;
    # Configurations associated with inbound response size limits
    http:ResponseLimitConfigs responseLimits?;
    # SSL/TLS-related options
    http:ClientSecureSocket secureSocket?;
    # Proxy server related options
    http:ProxyConfig proxy?;
    # Enables the inbound payload validation functionality which provided by the constraint package. Enabled by default
    boolean validation = true;
|};

# Provides settings related to HTTP/1.x protocol.
public type ClientHttp1Settings record {|
    # Specifies whether to reuse a connection for multiple requests
    http:KeepAlive keepAlive = http:KEEPALIVE_AUTO;
    # The chunking behaviour of the request
    http:Chunking chunking = http:CHUNKING_AUTO;
    # Proxy server related options
    ProxyConfig proxy?;
|};

# Proxy server configurations to be used with the HTTP client endpoint.
public type ProxyConfig record {|
    # Host name of the proxy server
    string host = "";
    # Proxy server port
    int port = 0;
    # Proxy server username
    string userName = "";
    # Proxy server password
    @display {label: "", kind: "password"}
    string password = "";
|};

# Provides API key configurations needed when communicating with a remote HTTP endpoint.
public type ApiKeysConfig record {|
    string subscriptionKey;
|};

# IRS letter of determination information
public type LetterOfDetermination record {
    # Document name of the letter of determination
    string? letter_of_determination_doc_name?;
    # URL to the letter of determination
    string? letter_of_determination_url?;
};

# Information about the non-profit, such as name and address
public type Summary1 record {
    # GuideStar internal organization ID
    int? organization_id?;
    # Organization name
    string? organization_name?;
    # Employee identification number
    string? ein?;
    # DEPRECATED
    string? bridge_id?;
    # Organization address street name
    string? address_line_1?;
    # Organization address Suite or Apartment number
    string? address_line_2?;
    # Organization address city
    string? city?;
    # Organization address state
    string? state?;
    # Organization address zip code
    string? zip?;
    # Organization fax number
    string? fax?;
    # Legal organization name
    string? govt_registered_name?;
    # Comma separated string of names associated with the organization
    string? also_known_as?;
    # When the fiscal year ends for the organization
    string? fiscal_year_end?;
    # When the fiscal year begins for the organization
    string? fiscal_year_start?;
    # Single digit code designating the type of organization (Central, Intermediate, or Independent) if there is no group exemption or (Central, Intermediate, Independent, or Subordinate) if there is a group exemption.
    string? affiliation_code?;
    # Description of what the affiliation code means
    string? affiliation_description?;
    # Primary contact name
    string? contact_name?;
    # Primary contact title
    string? contact_title?;
    # Primary contact email
    string? contact_email?;
    # Primary contact phone number
    string? contact_phone?;
    # Primary contact fax number
    string? contact_fax?;
    # Guidestar.org organization profile seal of transparency level
    string? gs_profile_update_level?;
    # Url to Guidestar.org seal image
    string? gs_profile_update_level_logo?;
    # Deductibility code signifies whether contributions made to an organization are deductible
    string? deductibility_code?;
    # Deductibility code description
    string? deductibility_description?;
    # EIN that should be used for charitable donations
    string? donation_to_ein?;
    # Organization name that should be used for charitable donations
    string? donation_to_name?;
    # DEPRECATED
    string? areas_served_narrative?;
    # Year that organization started operating as a non-profit
    string? ruling_year?;
    # Guidestar.org organization profile URL
    string? gs_public_report?;
    # URL of API call to the Pro PDF API endpoint to download the organization's profile PDF
    string? gs_pro_pdf?;
    # DEPRECATED
    string? impact_statement?;
    # Subsection Codes are the codes shown under section 501(c) of the Internal Revenue Code of 1986, which define the category under which an organization may be exempt.
    string? subsection_code?;
    # Description of organization subsection code
    string? subsection_description?;
    # Keywords added by the organization to their profile
    string? keywords?;
    # Organization logo URL
    string? logo_url?;
    # Organization mission statement
    string? mission?;
    # Whether or not this organization is the national headquarters
    boolean? is_national_hq?;
    # National Taxonomy of Exempt Entities (NTEE) Code
    string? ntee_code?;
    # Organization website URL
    string? website_url?;
    # Year that an organization was founded
    string? year_founded?;
    # Year that an organization was incorporated
    string? year_incorporated?;
    Address[]? addresses?;
    Affiliation[]? affiliations?;
    Award[]? awards?;
    FormerName[]? formerly_known_as?;
    string[]? forms_1023_1024?;
    LetterOfDetermination[]? letters_of_determination?;
    LetterOfDissolution[]? letters_of_dissolution?;
    NteeCode[]? ntee_codes?;
    # North American Industry Classification System (NAICS) information
    NAICSCode? naics_code?;
    SICCode[]? sic_codes?;
    OtherDocument[]? other_documents?;
    PhotoLink[]? photos?;
    string[]? social_media_urls?;
    TelephoneNumber[]? telephone_numbers?;
    Video[]? videos?;
};

# Information about the non-profit, such as name and address
public type Summary2 record {
    # GuideStar internal organization ID
    int? organization_id?;
    # Organization name
    string? organization_name?;
    # Employee identification number
    string? ein?;
    # DEPRECATED
    string? bridge_id?;
    # Organization address street name
    string? address_line_1?;
    # Organization address Suite or Apartment number
    string? address_line_2?;
    # Organization address city
    string? city?;
    # Organization address state
    string? state?;
    # Organization address zip code
    string? zip?;
    # Organization fax number
    string? fax?;
    # Legal organization name
    string? govt_registered_name?;
    # Comma separated string of names associated with the organization
    string? also_known_as?;
    # When the fiscal year ends for the organization
    string? fiscal_year_end?;
    # When the fiscal year begins for the organization
    string? fiscal_year_start?;
    # Single digit code designating the type of organization (Central, Intermediate, or Independent) if there is no group exemption or (Central, Intermediate, Independent, or Subordinate) if there is a group exemption.
    string? affiliation_code?;
    # Description of what the affiliation code means
    string? affiliation_description?;
    # Primary contact name
    string? contact_name?;
    # Primary contact title
    string? contact_title?;
    # Primary contact email
    string? contact_email?;
    # Primary contact phone number
    string? contact_phone?;
    # Primary contact fax number
    string? contact_fax?;
    # Guidestar.org organization profile seal of transparency level
    string? gs_profile_update_level?;
    # Url to Guidestar.org seal image
    string? gs_profile_update_level_logo?;
    # Deductibility code signifies whether contributions made to an organization are deductible
    string? deductibility_code?;
    # Deductibility code description
    string? deductibility_description?;
    # EIN that should be used for charitable donations
    string? donation_to_ein?;
    # Organization name that should be used for charitable donations
    string? donation_to_name?;
    # DEPRECATED
    string? areas_served_narrative?;
    # Year that organization started operating as a non-profit
    string? ruling_year?;
    # Guidestar.org organization profile URL
    string? gs_public_report?;
    # URL of API call to the Pro PDF API endpoint to download the organization's profile PDF
    string? gs_pro_pdf?;
    # URL of API call to the FTA PDF API endpoint to download the organization's financial trends analysis PDF
    string? gs_financial_trends_analysis_pdf?;
    # DEPRECATED
    string? impact_statement?;
    # Subsection Codes are the codes shown under section 501(c) of the Internal Revenue Code of 1986, which define the category under which an organization may be exempt.
    string? subsection_code?;
    # Description of organization subsection code
    string? subsection_description?;
    # Keywords added by the organization to their profile
    string? keywords?;
    # Organization logo URL
    string? logo_url?;
    # Organization mission statement
    string? mission?;
    # Whether or not this organization is the national headquarters
    boolean? is_national_hq?;
    # National Taxonomy of Exempt Entities (NTEE) Code
    string? ntee_code?;
    # Organization website URL
    string? website_url?;
    # Year that an organization was founded
    string? year_founded?;
    # Year that an organization was incorporated
    string? year_incorporated?;
    # Is the organization not on the BMF
    boolean? is_non_bmf_org?;
    # First time organization appeared on the BMF
    string? first_on_bmf_date?;
    # Last time an organization appeared on the BMF
    string? last_on_bmf_date?;
    # Contains the last change datetimes for several key data values
    ProfileDataChangeDates? profile_data_change_dates?;
    Address[]? addresses?;
    Affiliation[]? affiliations?;
    Award[]? awards?;
    FormerName[]? formerly_known_as?;
    string[]? forms_1023_1024?;
    LetterOfDetermination[]? letters_of_determination?;
    LetterOfDissolution[]? letters_of_dissolution?;
    NteeCode[]? ntee_codes?;
    # North American Industry Classification System (NAICS) information
    NAICSCode? naics_code?;
    SICCode[]? sic_codes?;
    PlatinumEvaluationDocument[]? platinum_evaluation_documents?;
    OtherDocument[]? other_documents?;
    PhotoLink[]? photos?;
    string[]? social_media_urls?;
    TelephoneNumber[]? telephone_numbers?;
    Video[]? videos?;
};

# Address entry in summary.addresses. Usually an office of an organization.
public type Address record {
    # Address line 1
    string? address_line_1?;
    # Address line 2
    string? address_line_2?;
    # Address city
    string? city?;
    # Address state
    string? state?;
    # Address postal code
    string? postal_code?;
    # Address country
    string? country?;
    # Address type
    string? address_type?;
};

public type FinancialStatement record {
    # DEPRECATED
    string? fiscal_year_begin?;
    # When the fiscal year ends.
    string? fiscal_year_end?;
    # The company that audited the financials.
    string? auditing_company?;
    # The name of the uploaded document
    string? doc_name?;
    # The url of the document
    string? document_url?;
};

# Information about the non-profit, such as name and address
public type Summary3 record {
    # GuideStar internal organization ID
    int? organization_id?;
    # Organization name
    string? organization_name?;
    # Employee identification number
    string? ein?;
    # DEPRECATED
    string? bridge_id?;
    # Organization address street name
    string? address_line_1?;
    # Organization address Suite or Apartment number
    string? address_line_2?;
    # Organization address city
    string? city?;
    # Organization address state
    string? state?;
    # Organization address zip code
    string? zip?;
    # Organization address county
    string? county?;
    # Latitude of the center of the zip code of an organizations mailing address
    string? latitude?;
    # Longitude of the center of the zip code of an organizations mailing address
    string? longitude?;
    # Organization fax number
    string? fax?;
    # Legal organization name
    string? govt_registered_name?;
    # Comma separated string of names associated with the organization
    string? also_known_as?;
    # When the fiscal year ends for the organization
    string? fiscal_year_end?;
    # When the fiscal year begins for the organization
    string? fiscal_year_start?;
    # Single digit code designating the type of organization (Central, Intermediate, or Independent) if there is no group exemption or (Central, Intermediate, Independent, or Subordinate) if there is a group exemption.
    string? affiliation_code?;
    # Description of what the affiliation code means
    string? affiliation_description?;
    # Primary contact name
    string? contact_name?;
    # Primary contact title
    string? contact_title?;
    # Primary contact email
    string? contact_email?;
    # Primary contact phone number
    string? contact_phone?;
    # Primary contact fax number
    string? contact_fax?;
    # Guidestar.org organization profile seal of transparency level
    string? gs_profile_update_level?;
    # Url to Guidestar.org seal image
    string? gs_profile_update_level_logo?;
    # Deductibility code signifies whether contributions made to an organization are deductible
    string? deductibility_code?;
    # Deductibility code description
    string? deductibility_description?;
    # EIN that should be used for charitable donations
    string? donation_to_ein?;
    # Organization name that should be used for charitable donations
    string? donation_to_name?;
    # DEPRECATED
    string? areas_served_narrative?;
    # Year that organization started operating as a non-profit
    string? ruling_year?;
    # Guidestar.org organization profile URL
    string? gs_public_report?;
    # URL of API call to the Pro PDF API endpoint to download the organization's profile PDF
    string? gs_pro_pdf?;
    # URL of API call to the FTA PDF API endpoint to download the organization's financial trends analysis PDF
    string? gs_financial_trends_analysis_pdf?;
    # DEPRECATED
    string? impact_statement?;
    # Subsection Codes are the codes shown under section 501(c) of the Internal Revenue Code of 1986, which define the category under which an organization may be exempt.
    string? subsection_code?;
    # Description of organization subsection code
    string? subsection_description?;
    # Keywords added by the organization to their profile
    string? keywords?;
    # Organization logo URL
    string? logo_url?;
    # Organization mission statement
    string? mission?;
    # Whether or not this organization is the national headquarters
    boolean? is_national_hq?;
    # Description of demographics status that can be displayed to a funder or donor
    string? demographics_status?;
    # Description of demographics status that can be displayed to a nonprofit
    string? demographics_status_nonprofit?;
    # National Taxonomy of Exempt Entities (NTEE) Code
    string? ntee_code?;
    # UN sustainable development goals
    SDG? sdg?;
    # Organization website URL
    string? website_url?;
    # Year that an organization was founded
    string? year_founded?;
    # Year that an organization was incorporated
    string? year_incorporated?;
    # Is the organization not on the BMF
    boolean? is_non_bmf_org?;
    # First time organization appeared on the BMF
    string? first_on_bmf_date?;
    # Last time an organization appeared on the BMF
    string? last_on_bmf_date?;
    # Contains the last change datetimes for several key data values
    ProfileDataChangeDates? profile_data_change_dates?;
    Address[]? addresses?;
    Affiliation[]? affiliations?;
    Award[]? awards?;
    FormerName[]? formerly_known_as?;
    string[]? forms_1023_1024?;
    LetterOfDetermination[]? letters_of_determination?;
    LetterOfDissolution[]? letters_of_dissolution?;
    NteeCode[]? ntee_codes?;
    # North American Industry Classification System (NAICS) information
    NAICSCode? naics_code?;
    SICCode[]? sic_codes?;
    PlatinumEvaluationDocument[]? platinum_evaluation_documents?;
    OtherDocument[]? other_documents?;
    PhotoLink[]? photos?;
    string[]? social_media_urls?;
    TelephoneNumber[]? telephone_numbers?;
    Video[]? videos?;
    # Has this organization filled the 'How we listen' section of their profile
    boolean? org_collect_feedback?;
    # Response to 'How is your organization collecting feedback?'
    string? org_feedback_example?;
    # Did the organization indicate they had an interest in taking guidestar's feedback quiz
    boolean? org_quiz_interest?;
    # Did the organization indicate they had an interest in learning more about feedback practices
    boolean? org_learn_more?;
    FBResponseText[]? feedback_responses?;
    PCS[]? pcs_codes?;
    SDG[]? profile_sdg_codes?;
};

# IRS 990 form Part VIII dealing with revenue
public type PartVIII record {
    # revenue from federated campaigns
    decimal? federated_campaigns?;
    # revenue from membership dues
    decimal? membership_dues?;
    # revenue from fundraising events
    decimal? fundraising_events?;
    # revenue from related orgs
    decimal? related_orgs?;
    # revenue from government grants
    decimal? government_grants?;
    # revenue from other contributions
    decimal? contributions_other?;
    # revenue from other noncash contributions
    decimal? contributions_noncash?;
    # total revenue from other contributions
    decimal? contributions_all?;
    # revenue from services
    decimal? service_revenue?;
    # revenue from income investments
    decimal? income_investment?;
    # revenue from income bonds
    decimal? income_bonds?;
    # revenue from royalties
    decimal? royalties?;
    # Gross Rent-real
    decimal? rents_real?;
    # Gross Rent -personal
    decimal? rents_personal?;
    # Real rental expense
    decimal? rent_expenses_real?;
    # Personal rental expense
    decimal? rent_expenses_personal?;
    # Rental Income-real
    decimal? rent_income_real?;
    # Rental Income-personal
    decimal? rent_income_personal?;
    # Net Rental Income
    decimal? net_rental?;
    # Gross sales of Assets-securities
    decimal? gross_securities?;
    # Gross sales of assets-other
    decimal? gross_other?;
    # Less cost of sale of assets-securities
    decimal? cost_securities?;
    # Less cost of sales of assets-other
    decimal? cost_other?;
    # Gain or loss on sale of assets-securities
    decimal? gain_securities?;
    # Gain or loss on sale of assets-other
    decimal? gain_other?;
    # net revenue from sales
    decimal? net_sales?;
    # revenue from contributions
    decimal? contributions?;
    # gross special revenue
    decimal? gross_special?;
    # direct expenses for the organization
    decimal? direct_expenses?;
    # net special revenue
    decimal? net_special?;
    # Gross income from gaming
    decimal? gaming_income?;
    # Less expenses from gaming
    decimal? gaming_expenses?;
    # Net income from gaming
    decimal? gaming_net?;
    # gross revenue from sales
    decimal? gross_sales?;
    # cost of goods
    decimal? cost_goods?;
    # gross profit earned
    decimal? gross_profit?;
    # other revenue
    decimal? revenue_other?;
    # total revenue
    decimal? revenue_total?;
    # first specially declared revenue-providing service
    string? service_description_a?;
    # Program service code (a)
    decimal? service_code_a?;
    # second specially declared revenue-providing service
    string? service_description_b?;
    # revenue from service a
    decimal? service_amount_a?;
    # Program service code (b)
    decimal? service_code_b?;
    # revenue from service b
    decimal? service_amount_b?;
    # third specially declared revenue-providing service
    string? service_description_c?;
    # Program service code (c)
    decimal? service_code_c?;
    # revenue from service c
    decimal? service_amount_c?;
    # fourth specially declared revenue-providing service
    string? service_description_d?;
    # Program service code (d)
    decimal? service_code_d?;
    # revenue from service d
    decimal? service_amount_d?;
    # fifth specially declared revenue-providing service
    string? service_description_e?;
    # Program service code (e)
    decimal? service_code_e?;
    # revenue from service e
    decimal? service_amount_e?;
    # sixth specially declared revenue-providing service
    string? service_description_f?;
    # Program service code (f)
    decimal? service_code_f?;
    # revenue from service f
    decimal? service_amount_f?;
};

# UN sustainable development goals
public type SDG record {
    # UN sustainable development goal number
    int:Signed32? id?;
    # UN sustainable development goal description
    string? description?;
};

public type BoardMember record {
    # The board member's first and last name.
    string? name?;
    # DEPRECATED
    string? title?;
    # The company the board member works for.
    string? company?;
};

# expense composition section of financial trends analysis
public type Expense_Composition record {
    # total expenses before depreciation
    int? total_expenses_before_depreciation?;
    # total expenses percent change over the prior year
    string? total_expenses_percent_change_over_prior_year?;
    # personnel expenses
    string? personnel?;
    # professional fees expenses
    string? professional_fees?;
    # occupancy expenses
    string? occupancy?;
    # expenses from interest
    string? interest_expense?;
    # Pass through expenses
    string? pass_through?;
    # all other expenses
    string? all_other_expenses?;
};

@deprecated
public type Accreditation record {
    # DEPRECATED
    string? accreditation?;
    # DEPRECATED
    string? year?;
};

# Category for demographics
# 
# # Deprecated
@deprecated
public type DemographicsCategory record {
    # DEPRECATED
    string? category?;
    record {|boolean?...;|}? org_does_not_collect_for?;
    # DEPRECATED
    DemographicsSubCategory[]? subcategories?;
};

public type V3PublicProfile record {
    # HTTP response status code.
    int? code?;
    # Diagnostic message for response status
    string? message?;
    # Time taken for request to process
    int? took?;
    # List of errors encountered
    string[]? errors?;
    V3PublicProfile_data? data?;
};

# DEPRECATED
# 
# # Deprecated
@deprecated
public type Affiliation record {
    # DEPRECATED
    string? affiliation?;
    # DEPRECATED
    string? year?;
};

public type Form990T record {
    # The name of the file.
    string? form990t_name?;
    # URL for the organization's Form 990 T
    string? form990t_url?;
};

public type ParentOrganization record {
    # The parent organizations EIN.
    string? ein?;
    # The parent organizations name.
    string? organization_name?;
    # The exemption code.
    string? group_exemption?;
};

# Program metrics entered by the organization
public type PlatinumMetrics record {
    # Metric name
    string? metric?;
    # The years this metric was captured and the values for a given year
    MetricYear[]? years?;
    # The target populations that the metric supports
    string[]? target_population_served?;
    # How this metric is being measured
    string? type_of_metric?;
    # How to determine if this metric is showing a successful trend
    string? direction_of_success?;
};

# Collection of an organizations programs and program metrics
public type Programs2 record {
    Program2[]? programs?;
    PlatinumMetrics[]? platinum_metrics?;
    Question[]? charting_impact_answers?;
};

# IRS 990 form Part X, Balance Sheet
public type PartX record {
    # beginning of year cash
    decimal? cash_boy?;
    # end of year cash
    decimal? cash_eoy?;
    # beginning of year savings
    decimal? savings_boy?;
    # end of year savings
    decimal? savings_eoy?;
    # Net pledges and grants receivable:  beginning of year
    decimal? pledges_grants_boy?;
    # Net pledges and grants receivable:  end of year
    decimal? pledges_grants_eoy?;
    # beginning of year accounts receivable
    decimal? accounts_receivable_boy?;
    # end of year accounts receivable
    decimal? accounts_receivable_eoy?;
    # beginning of year qualified receivable
    decimal? qualified_receivable_boy?;
    # end of year qualified receivable
    decimal? qualified_receivable_eoy?;
    # beginning of year disqualified receivable
    decimal? disqualified_receivable_boy?;
    # end of year disqualified receivable
    decimal? disqualified_receivable_eoy?;
    # beginning of year loans receivable
    decimal? loans_receivable_boy?;
    # end of year loans receivable
    decimal? loans_receivable_eoy?;
    # beginning of year inventory
    decimal? inventory_boy?;
    # end of year inventory
    decimal? inventory_eoy?;
    # beginning of year prepaid
    decimal? prepaid_boy?;
    # end of year prepaid
    decimal? prepaid_eoy?;
    # Land, buildings, and equipment: cost basis
    decimal? lbe_base?;
    # Less:  accumulated depreciation
    decimal? less_depreciation?;
    # Land and buildings BOY
    decimal? lbe_boy?;
    # Land and buildings EOY
    decimal? lbe_eoy?;
    # beginning of year public securities
    decimal? public_securities_boy?;
    # end of year public securities
    decimal? public_securities_eoy?;
    # beginning of year other securities
    decimal? other_securities_boy?;
    # end ofyear other securities
    decimal? other_securities_eoy?;
    # beginning of year investment programs
    decimal? investment_programs_boy?;
    # end of year investment programs
    decimal? investment_programs_eoy?;
    # beginning of year intangible assets
    decimal? intangible_assets_boy?;
    # end of year intangible assets
    decimal? intangible_assets_eoy?;
    # beginning of year other assets
    decimal? other_assets_boy?;
    # end of year other assets
    decimal? other_assets_eoy?;
    # beginning of year total assets
    decimal? assets_total_boy?;
    # end of year total asstes
    decimal? assets_total_eoy?;
    # beginning of year accounts payable
    decimal? accounts_payable_boy?;
    # end of year accounts payable
    decimal? accounts_payable_eoy?;
    # beginning of year grants payable
    decimal? grants_payable_boy?;
    # end of year grants payable
    decimal? grants_payable_eoy?;
    # beginning of year deferred revenue
    decimal? deferred_revenue_boy?;
    # end of year deferred revenue
    decimal? deferred_revenue_eoy?;
    # beginning of year tax exempt bonds
    decimal? tax_exempt_bonds_boy?;
    # end of year tax exempt bonds
    decimal? tax_exempt_bonds_eoy?;
    # beginning of year escrow liability
    decimal? escrow_liability_boy?;
    # end of year escrow liability
    decimal? escrow_liability_eoy?;
    # beginning of year payable officiers
    decimal? payable_officiers_boy?;
    # end of year payable officiers
    decimal? payable_officiers_eoy?;
    # beginning of year secured notes payable
    decimal? secured_notes_payable_boy?;
    # end of year secured notes payable
    decimal? secured_notes_payable_eoy?;
    # beginning of year unsecured notes payable
    decimal? unsecured_notes_payable_boy?;
    # end of year unsecured notes payable
    decimal? unsecured_notes_payable_eoy?;
    # beginning of year other liability
    decimal? liability_other_boy?;
    # end of year other liability
    decimal? liability_other_eoy?;
    # beginning of year total liability
    decimal? liability_total_boy?;
    # end of year total liability
    decimal? liability_total_eoy?;
    # Unrestricted net assets: beginning of year
    decimal? unrestricted_boy?;
    # Unrestricted net assets: end of year
    decimal? unrestricted_eoy?;
    # Temporarily restricted net assets: Beginning of year
    decimal? temporarily_restricted_boy?;
    # Temporarily restricted net assets: End of year
    decimal? temporarily_restricted_eoy?;
    # Permanently restricted net assets: Beginning of year
    decimal? permanently_restricted_boy?;
    # Permanently restricted net assets: End of year
    decimal? permanently_restricted_eoy?;
    # Temporarily restricted net assets: Beginning of year + Permanently restricted net assets: Beginning of year
    decimal? restricted_boy?;
    # Temporarily restricted net assets: End of year + Permanently restricted net assets: Beginning of year
    decimal? restricted_eoy?;
    # beginning of year capital
    decimal? capital_boy?;
    # end of year capital
    decimal? capital_eoy?;
    # Paid-in or capital surplus, or land, building, or equipment fund:  beginning of year
    decimal? paid_in_boy?;
    # Paid-in or capital surplus, or land, building, or equipment fund:  end of year
    decimal? paid_in_eoy?;
    # Retained earnings, endowment, accumulated income, or other funds:  beginning of year
    decimal? retained_boy?;
    # Retained earnings, endowment, accumulated income, or other funds:  end of year
    decimal? retained_eoy?;
    # beginning of year net total
    decimal? net_total_boy?;
    # end of year net total
    decimal? net_total_eoy?;
    # beginning of year balances
    decimal? balances_boy?;
    # end of year balances
    decimal? balances_eoy?;
};

# Collection of an organizations programs and program metrics
public type Programs1 record {
    Program2[]? programs?;
    PlatinumMetrics1[]? platinum_metrics?;
    Question[]? charting_impact_answers?;
};

# Collection of an organizations programs and program metrics
public type Programs3 record {
    Program3[]? programs?;
    PlatinumMetrics[]? platinum_metrics?;
    Question[]? charting_impact_answers?;
};

# liquidity capital structure indicator
public type Liquidity record {
    # months worth of cash
    decimal? months_of_cash?;
    # months worth of cash and investments
    decimal? months_of_cash_and_investments?;
    # estimated months worth of liquid unrestricted net assets
    decimal? months_of_estimated_liquid_unrestricted_net_assets?;
};

public type Object record {
};

@deprecated
public type FundingSource record {
    # DEPRECATED
    string? funding_source?;
    # DEPRECATED
    string? funding_amount?;
};

public type CharityCheck_parent_organizations record {
    # EIN of parent organization.
    string? ein?;
    # Name of Parent Organization.
    string? organization_name?;
    # This is a four-digit internal number assigned to parent organizations holding group exemption letters.
    string? group_exemption?;
};

public type NotAcceptable record {
    # HTTP response status code.
    string? code?;
    string? message?;
};

# Standard Industrial Classification (SIC) information
public type SICCode record {
    # SIC code
    string? sic_code?;
    # SIC code description
    string? sic_description?;
};

public type Person record {
    # The board member's first and last name.
    string? name?;
    # The board member's title.
    string? title?;
    string[]? 'type?;
    # The salary for the staff member's position.
    decimal? compensation?;
    # Salary from other related organizations.
    decimal? related_compensation?;
    # Benefits provided by the organization.
    decimal? other_compensation?;
    # Hours spent on their position.
    string? hours?;
    # DEPRECATED
    string? benefits?;
};

# IRS letter of dissolution information
public type LetterOfDissolution record {
    # Document name of the letter of dissolution
    string? name?;
    # Year of dissolution
    string? year?;
    # URL to letter of dissolution
    string? letter_of_dissolution_url?;
};

# North American Industry Classification System (NAICS) information
public type NAICSCode record {
    # NAICS code
    string? naics_code?;
    # NAICS code description
    string? naics_description?;
};

public type MetricYear record {
    # The year for the metric.
    int:Signed32? year?;
    # The value for the metric.
    decimal? value?;
};

# profitability section of financial trends analysis
public type Profitability record {
    # unrestricted surplus or deficit before depreciation
    int? Unrestricted_surplus_\(deficit\)_before_depreciation?;
    # surplus as a percent of expenses before depreciation
    string? surplus_as_percent_of_expenses_before_depreciation?;
    # unrestricted surplus or deficit after depreciation
    int? Unrestricted_surplus_\(deficit\)_after_depreciation?;
    # surplus as a percent of expenses after depreciation
    string? surplus_as_percent_of_expenses_after_depreciation?;
};

# External evaluations support your organization's progress or results
public type PlatinumEvaluationDocument record {
    # Name of evaluation document
    string? document_name?;
    # Year of evaluation document
    string? document_year?;
    # URL of evaluation document
    string? document_url?;
    # DEPRECATED
    string? document_type?;
};

public type AnnualReport record {
    # The document's name.
    string? doc_name?;
    # DEPRECATED
    string? contents?;
    # The year the document is from.
    string? year?;
    # The url for the document.
    string? url?;
};

public type V3PublicProfile_data record {
    # Information about the non-profit, such as name and address
    Summary3? summary?;
    # Collection of an organizations programs and program metrics
    Programs3? programs?;
    # Organization financial information
    Financials3? financials?;
    # Organization operations information
    Operations2? operations?;
    # Organization Charity Check information
    CharityCheck? charitycheck?;
};

public type InternalServerError record {
    # HTTP response status code.
    string? code?;
    string? message?;
};

# Demographics, Equity, and Inclusion 2 sub category
public type DEI2SubCategory record {
    # subcategory description
    string? subcategory?;
    # board members in demographic group
    int:Signed32? board_members?;
    # staff members in demographic group
    int:Signed32? staff?;
    # senior staff members in demographic group
    int:Signed32? senior_staff?;
    # whether or not reported by CEO
    boolean? reported_by_ceo?;
    # whether or not reported by co CEO
    boolean? reported_by_coceo?;
};

# full cost components section of financial trends analysis
public type Full_Cost_Components record {
    # total expenses after depreciation
    int? total_expenses_after_depreciation?;
    # one month of savings
    int? one_month_of_savings?;
    # Debt principal payment
    int? debt_principal_payment?;
    # Fixed asset additions
    int? fixed_asset_additions?;
    # estimated total full costs
    int? total_full_costs_estimated?;
};

public type V2PublicProfile record {
    # HTTP response status code.
    int? code?;
    # Diagnostic message for response status
    string? message?;
    # Time taken for request to process
    int? took?;
    # List of errors encountered
    string[]? errors?;
    V2PublicProfile_data? data?;
};

# General question and answer pair, used in multiple places
public type Question record {
    # Question text
    string? question?;
    # Answer text
    string? answer?;
};

# Information about an organization's program as entered by the organization
public type Program3 record {
    # Program name
    string? name?;
    # Program description
    string? description?;
    # First target population that the program is targeting
    string? target_population?;
    # Second target population that the program is targeting
    string? target_population2?;
    # Program budget in dollars
    string? budget?;
    # Geographic area served by program
    string[]? areas_served?;
};

# Information about an organization's program as entered by the organization
public type Program2 record {
    # Program name
    string? name?;
    # Program description
    string? description?;
    # First target population that the program is targeting
    string? target_population?;
    # Program budget in dollars
    string? budget?;
    # Geographic area served by program
    string[]? areas_served?;
};

# revenue composition section of financial trends analysis
public type Revenue_Composition record {
    # total revenu, unrestricted and restricted
    int? total_revenue_unrestricted_and_restricted?;
    # total percent change in revenue over prior year
    string? total_revenue_percent_change_over_prior_year?;
    # total revenue prior
    decimal? total_revenue_prior?;
    # programs/services revenue
    string? program_svcs_revenue?;
    # membership dues revenue
    string? membership_dues?;
    # investment income revenue
    string? investment_income?;
    # government grants revenue
    string? government_grants?;
    # other grants/contributions revenue
    string? other_grants_contributions?;
    # other revenue
    string? other_revenue?;
};

# DEPRECATED
# 
# # Deprecated
@deprecated
public type DemographicsStaffLevel record {
    # DEPRECATED
    string? staff_level?;
    # DEPRECATED
    int:Signed32? count?;
};

# Program metrics entered by the organization
public type PlatinumMetrics1 record {
    # Metric name
    string? metric?;
    # The years this metric was captured and the values for a given year
    MetricYear[]? years?;
    # The target populations that the metric supports
    string[]? target_population_served?;
};

# Demographics and Equity Information Section
public type DEI2Category record {
    # category description
    string? category?;
    # presence of board member data collected in category
    boolean? board_members_not_collected?;
    # presence of staff data collected in category
    boolean? staff_not_collected?;
    # presence of senior staff data collected in category
    boolean? senior_staff_not_collected?;
    # subcategory descriptions
    DEI2SubCategory[]? subcategories?;
};

# DEPRECATED
# 
# # Deprecated
@deprecated
public type FormerName record {
    # DEPRECATED
    string? former_name?;
    # DEPRECATED
    string? year?;
};

public type V1PublicProfile_data record {
    # Information about the non-profit, such as name and address
    Summary1? summary?;
    # Collection of an organizations programs and program metrics
    Programs1? programs?;
    # Organization financial information
    Financials2? financials?;
    # Organization operations information
    Operations1? operations?;
    # Organization Charity Check information
    CharityCheck? charitycheck?;
};

# Organization financial information
public type Financials1 record {
    # Current, or most recent, fiscal year (FY) financial information. Since this could come from multiple 990 form types, many of the fields are normalized.
    CurrentFinancial1? most_recent_year_financials?;
    FinancialF990_1[]? f990_financials?;
    Financial990PF[]? pf990_financials?;
    Fin_Doc[]? financial_documents?;
    Form990T[]? forms_990T?;
    FundingNeed[]? funding_needs?;
    FundingSource[]? funding_sources?;
    FinancialStatement[]? financial_statements?;
    AnnualReport[]? annual_reports?;
    Ratios[]? accounting_ratios?;
};

@deprecated
public type SeniorStaff record {
    # DEPRECATED
    string? name?;
    # DEPRECATED
    string? title?;
    # DEPRECATED
    string? experience?;
};

@deprecated
public type FundingNeed record {
    # DEPRECATED
    string? funding_need?;
    # DEPRECATED
    string? amount_needed?;
};

# Organization financial information
public type Financials2 record {
    # Current, or most recent, fiscal year (FY) financial information. Since this could come from multiple 990 form types, many of the fields are normalized.
    CurrentFinancial? most_recent_year_financials?;
    FinancialF990_2[]? f990_financials?;
    Financial990PF[]? pf990_financials?;
    FinancialF990EZ[]? f990ez_financials?;
    FinancialTrends[]? financial_trends_analysis?;
    Fin_Doc[]? financial_documents?;
    Form990T[]? forms_990T?;
    FundingNeed[]? funding_needs?;
    FundingSource[]? funding_sources?;
    FinancialStatement[]? financial_statements?;
    AnnualReport[]? annual_reports?;
    Ratios[]? accounting_ratios?;
};

# Organization financial information
public type Financials3 record {
    # Current, or most recent, fiscal year (FY) financial information. Since this could come from multiple 990 form types, many of the fields are normalized.
    CurrentFinancial? most_recent_year_financials?;
    FinancialF990_3[]? f990_financials?;
    Financial990PF[]? pf990_financials?;
    FinancialF990EZ[]? f990ez_financials?;
    FinancialTrends[]? financial_trends_analysis?;
    Fin_Doc[]? financial_documents?;
    Form990T[]? forms_990T?;
    FundingNeed[]? funding_needs?;
    FundingSource[]? funding_sources?;
    FinancialStatement[]? financial_statements?;
    AnnualReport[]? annual_reports?;
    Ratios[]? accounting_ratios?;
};

# Organization operations information
public type Operations1 record {
    # Organization leader name
    string? leader_name?;
    # Organization leader profile
    string? leader_profile?;
    # Organization co-leader name
    string? co_leader_name?;
    # Organization co-leader profile
    string? co_leader_profile?;
    # Number of employees of the organization
    int:Signed32? no_of_employees?;
    # Number of volunteers at an organization
    int:Signed32? no_of_volunteers?;
    # DEPRECATED
    string? organization_email?;
    # The year details in operations are from
    int:Signed32? organization_details_year?;
    Person[]? officers_directors_key_employees?;
    Person[]? highest_paid_employees?;
    # Number of employees that are paid at least $100k
    int:Signed32? employees_greater_than_100K?;
    # Name of the board chairperson
    string? board_chair_name?;
    # Company board chairperson is associated with
    string? board_chair_affiliation?;
    # Start year of board chair term
    string? board_chair_term_start?;
    # End year of board chair term
    string? board_chair_term_end?;
    # Name of board co-chairperson
    string? board_co_chair_name?;
    # Company board co-chairperson is associated with
    string? board_co_chair_affiliation?;
    # Start year of board co-chair term
    string? board_co_chair_term_start?;
    # End year of board co-chair term
    string? board_co_chair_term_end?;
    BoardMember[]? board_of_directors?;
    Question[]? board_leadership_practices?;
    OrganizationDemographics? organization_demographics?;
    Contractor[]? contractors?;
    # URL of organization blog
    string? blog_url?;
    # Name of primary fundraising contact
    string? fundraising_contact_name?;
    # Title of primary fundraising contact
    string? fundraising_contact_title?;
    # Email address of primary fundraising contact
    string? fundraising_contact_email?;
    # Phone number of primary fundraising contact
    string? fundraising_contact_phone?;
    # Tax preparation firm name
    string? preparer_firm_name?;
    # Tax preparation firm address
    string? preparer_firm_address?;
    # Tax preparation firm EIN
    string? preparer_firm_ein?;
    # Tax preparation firm phone number
    string? preparer_firm_phone?;
    SeniorStaff[]? senior_staff?;
    OtherStaff[]? other_staff?;
    Accreditation[]? accreditations?;
};

# Organization operations information
public type Operations2 record {
    # Organization leader name
    string? leader_name?;
    # Organization leader profile
    string? leader_profile?;
    # Organization co-leader name
    string? co_leader_name?;
    # Organization co-leader profile
    string? co_leader_profile?;
    # Number of employees of the organization
    int:Signed32? no_of_employees?;
    # Number of volunteers at an organization
    int:Signed32? no_of_volunteers?;
    # DEPRECATED
    string? organization_email?;
    # The year details in operations are from
    int:Signed32? organization_details_year?;
    Person[]? officers_directors_key_employees?;
    Person[]? highest_paid_employees?;
    # Number of employees that are paid at least $100k
    int:Signed32? employees_greater_than_100K?;
    # Name of the board chairperson
    string? board_chair_name?;
    # Company board chairperson is associated with
    string? board_chair_affiliation?;
    # Start year of board chair term
    string? board_chair_term_start?;
    # End year of board chair term
    string? board_chair_term_end?;
    # Name of board co-chairperson
    string? board_co_chair_name?;
    # Company board co-chairperson is associated with
    string? board_co_chair_affiliation?;
    # Start year of board co-chair term
    string? board_co_chair_term_start?;
    # End year of board co-chair term
    string? board_co_chair_term_end?;
    BoardMember[]? board_of_directors?;
    Question[]? board_leadership_practices?;
    OrganizationDemographics? organization_demographics?;
    DEI2Demographics? demographics?;
    Contractor[]? contractors?;
    # URL of organization blog
    string? blog_url?;
    # Name of primary fundraising contact
    string? fundraising_contact_name?;
    # Title of primary fundraising contact
    string? fundraising_contact_title?;
    # Email address of primary fundraising contact
    string? fundraising_contact_email?;
    # Phone number of primary fundraising contact
    string? fundraising_contact_phone?;
    # Tax preparation firm name
    string? preparer_firm_name?;
    # Tax preparation firm address
    string? preparer_firm_address?;
    # Tax preparation firm EIN
    string? preparer_firm_ein?;
    # Tax preparation firm phone number
    string? preparer_firm_phone?;
    SeniorStaff[]? senior_staff?;
    OtherStaff[]? other_staff?;
    Accreditation[]? accreditations?;
};

# list of business model indicators enumerated below
public type Business_Model_Indicators record {
    # profitability section of financial trends analysis
    Profitability? profitability?;
    # revenue composition section of financial trends analysis
    Revenue_Composition? revenue_composition?;
    # expense composition section of financial trends analysis
    Expense_Composition? expense_composition?;
    # full cost components section of financial trends analysis
    Full_Cost_Components? full_cost_components?;
};

# Telephone number associated with organization
public type TelephoneNumber record {
    # Telephone number entered by organization
    string? telephone_number?;
    # Description of telephone number
    string? telephone_type?;
};

# IRS form 990 financials
public type FinancialF990_1 record {
    # Start date of the FY that this current financial object covers
    string? period_begin?;
    # End date of the fiscal year that this current financial object covers
    string? period_end?;
    # Revenue from recurring membership dues
    decimal? membership_dues?;
    # Contributions revenue, i.e. donations, in USD
    decimal? revenue_contributions?;
    # Government grants revenue, in USD
    decimal? revenue_govt_grants?;
    # Revenue derived from fees for program services
    decimal? revenue_program_services?;
    # Revenue from investments
    decimal? revenue_investments?;
    # Revenue from special events
    decimal? revenue_special_events?;
    # Revenue from sales of tangible items
    decimal? revenue_sales?;
    # Other revenue sources, not recorded elsewhere
    decimal? revenue_other?;
    # Total FY revenue
    decimal? revenue_total?;
    # Payments to affiliate organizations
    decimal? affiliate_net_payments?;
    # Expenses incurred from program services
    decimal? expense_program_services?;
    # Administration expenses
    decimal? expense_administration?;
    # Fundraising expenses
    decimal? expense_fundraising?;
    # Total FY expenses
    decimal? expenses_total?;
    # Difference between total revenue and total expenses
    decimal? net_gain_loss?;
    # Accounting expenses
    decimal? expense_accounting?;
    # Advertising/promotional expenses
    decimal? expense_advertising_promotion?;
    # IT expenses
    decimal? expense_info_technology?;
    # Insurance expenses
    decimal? expense_insurance?;
    # Interest expenses
    decimal? expense_interest?;
    # Investment management expenses
    decimal? expense_investment_management?;
    # Legal expenses
    decimal? expense_legal?;
    # Pension plan expenses
    decimal? expense_pension_plan?;
    # Publications expenses
    decimal? expense_publications?;
    # Professional fundraising expenses
    decimal? expense_profesional_fundraising?;
    # Net assets at the end of year
    decimal? net_assets_eoy?;
    # Total assets
    decimal? assets_total?;
    # Expenses not recorded elsewhere
    decimal? other_expense?;
    # Total liabilities at the end of year
    decimal? liabilities_total?;
    # A measurement of how long an organization can operate using cash and cash reserves at current expense levels. Calculated using the formula - Cash plus Savings divided by Total Expenses minus Depreciation divided by 12 months.
    string? months_of_cash?;
};

# IRS form 990 financials
public type FinancialF990_2 record {
    # Start date of the FY that this current financial object covers
    string? period_begin?;
    # End date of the fiscal year that this current financial object covers
    string? period_end?;
    # Revenue from recurring membership dues
    decimal? membership_dues?;
    # Contributions revenue, i.e. donations, in USD
    decimal? revenue_contributions?;
    # Government grants revenue, in USD
    decimal? revenue_govt_grants?;
    # Revenue derived from fees for program services
    decimal? revenue_program_services?;
    # Revenue from investments
    decimal? revenue_investments?;
    # Revenue from special events
    decimal? revenue_special_events?;
    # Revenue from sales of tangible items
    decimal? revenue_sales?;
    # Other revenue sources, not recorded elsewhere
    decimal? revenue_other?;
    # Total FY revenue
    decimal? revenue_total?;
    # Payments to affiliate organizations
    decimal? affiliate_net_payments?;
    # Expenses incurred from program services
    decimal? expense_program_services?;
    # Administration expenses
    decimal? expense_administration?;
    # Fundraising expenses
    decimal? expense_fundraising?;
    # Total FY expenses
    decimal? expenses_total?;
    # Difference between total revenue and total expenses
    decimal? net_gain_loss?;
    # Accounting expenses
    decimal? expense_accounting?;
    # Advertising/promotional expenses
    decimal? expense_advertising_promotion?;
    # IT expenses
    decimal? expense_info_technology?;
    # Insurance expenses
    decimal? expense_insurance?;
    # Interest expenses
    decimal? expense_interest?;
    # Investment management expenses
    decimal? expense_investment_management?;
    # Legal expenses
    decimal? expense_legal?;
    # Pension plan expenses
    decimal? expense_pension_plan?;
    # Publications expenses
    decimal? expense_publications?;
    # Professional fundraising expenses
    decimal? expense_profesional_fundraising?;
    # Total assets
    decimal? assets_total?;
    # Unrestricted new assets
    decimal? unrestricted_net_assets?;
    # Net fixed assets (Land, Buildings, equipment)
    decimal? net_fixed_assets_LBE?;
    # Net assets at the end of year
    decimal? net_assets_end_of_year?;
    # Expenses not recorded elsewhere
    decimal? other_expense?;
    # total amount of secured mortgages and notes payable to unrelated third parties that are secured by the organization's assets
    decimal? notes_payable_mortgages?;
    # Total liabilities at the end of year
    decimal? liabilities_total?;
    # A measurement of how long an organization can operate using cash and cash reserves at current expense levels. Calculated using the formula - Cash plus Savings divided by Total Expenses minus Depreciation divided by 12 months.
    string? months_of_cash?;
};

public type Ratios record {
    # The fiscal year.
    int:Signed32? year?;
    # A measurement of how long an organization can operate using cash and cash reserves at current expense levels. Calculated using the formula: Cash plus Savings divided by Total Expenses minus Depreciation divided by 12 months.
    string? months_of_cash?;
    # The ratio of an organization's capacity to repay its current liabilities through cash and cash equivalents. Metric calculated using the 'Quick Ratio' (Cash + Savings + Short Term Investments + Accounts Receivable) / Total Liabilities.
    string? liquidity?;
    # The cost of employee benefits divided by the wages paid to employees. Calculated using the formula: Pensions plus Benefits plus Payroll Tax Totals divided by Current Compensation plus Total Wages.
    string? fringe_rate?;
    # The amount of net gain or net loss.
    string? net_gain_loss?;
};

# IRS 990 form Part IX dealing with expenses
public type PartIX record {
    # expenses from grants issued to US organizations
    decimal? grants_orgs_us?;
    # expenses from grants issued to US individuals
    decimal? grants_individuals_us?;
    # expenses from grants issued to non US organizations
    decimal? grants_orgs_non_us?;
    # total expenses from benefits programs
    decimal? benefits_total?;
    # current expenses from employee compensation
    decimal? compensation_current?;
    # expenses from disqualified employee compensation
    decimal? compensation_disqualified?;
    # total expenses from employee wages
    decimal? wages_total?;
    # expenses from employee pensions
    decimal? pension_total?;
    # total expenses from employee benefits
    decimal? employee_benefits_total?;
    # total expenses from tax on payroll
    decimal? payroll_tax_total?;
    # expenses from management fees
    decimal? fees_management?;
    # expenses from legal fees
    decimal? fees_legal?;
    # total expenses from accounting fees
    decimal? accounting_fees_total?;
    # expenses from lobbying fees
    decimal? fees_lobbying?;
    # total fundraising expenses
    decimal? fundraising_total?;
    # expenses from investment fees
    decimal? fees_investments?;
    # expenses from other fees
    decimal? fees_other?;
    # expenses from promotional advertising
    decimal? ads_promo?;
    # office expenses
    decimal? office?;
    # IT expenses
    decimal? information_technology?;
    # expenses from royalties
    decimal? expense_royalties?;
    # Occupancy
    decimal? occupancy_total?;
    # total expenses from travel
    decimal? travel_total?;
    # Payment of travel for officials
    decimal? entertain_officials?;
    # total expenses from meetings
    decimal? meetings_total?;
    # total expenses from interest accrued
    decimal? interest_total?;
    # expenses from payments
    decimal? payments?;
    # Depreciation, depletion, and amortization
    decimal? depreciation_total?;
    # expenses from insurance
    decimal? insurance?;
    # expenses from specially declared source a
    decimal? expense_a_total?;
    # expenses from specially declared source b
    decimal? expense_b_total?;
    # expenses from specially declared source c
    decimal? expense_c_total?;
    # expenses from specially declared source d
    decimal? expense_d_total?;
    # expenses from specially declared source e
    decimal? expense_e_total?;
    # total expenses
    decimal? expenses_total?;
    # total expenses from program services
    decimal? total_program_services?;
    # total management expenses
    decimal? total_management?;
    # total fundraising expenses
    decimal? total_fundraising?;
    # total joint expenses
    decimal? expense_joint_total?;
    # expenses from joint services
    decimal? joint_services?;
    # general joint expenses
    decimal? joint_general?;
    # joint fundraising expenses
    decimal? joint_fundraising?;
    # expenses from all other sources
    decimal? all_other_expenses?;
    # first specially declared source of expense
    string? expense_a_description?;
    # second specially declared source of expense
    string? expense_b_description?;
    # third specially declared source of expense
    string? expense_c_description?;
    # fourth specially declared source of expense
    string? expense_d_description?;
};

# IRS form 990 financials
public type FinancialF990_3 record {
    # Start date of the FY that this current financial object covers
    string? period_begin?;
    # End date of the fiscal year that this current financial object covers
    string? period_end?;
    # Revenue from recurring membership dues
    decimal? membership_dues?;
    # Contributions revenue, i.e. donations, in USD
    decimal? revenue_contributions?;
    # Government grants revenue, in USD
    decimal? revenue_govt_grants?;
    # Revenue derived from fees for program services
    decimal? revenue_program_services?;
    # Revenue from investments
    decimal? revenue_investments?;
    # Revenue from special events
    decimal? revenue_special_events?;
    # Revenue from sales of tangible items
    decimal? revenue_sales?;
    # Other revenue sources, not recorded elsewhere
    decimal? revenue_other?;
    # Total FY revenue
    decimal? revenue_total?;
    # Payments to affiliate organizations
    decimal? affiliate_net_payments?;
    # Expenses incurred from program services
    decimal? expense_program_services?;
    # Administration expenses
    decimal? expense_administration?;
    # Fundraising expenses
    decimal? expense_fundraising?;
    # Total FY expenses
    decimal? expenses_total?;
    # Difference between total revenue and total expenses
    decimal? net_gain_loss?;
    # Accounting expenses
    decimal? expense_accounting?;
    # Advertising/promotional expenses
    decimal? expense_advertising_promotion?;
    # IT expenses
    decimal? expense_info_technology?;
    # Insurance expenses
    decimal? expense_insurance?;
    # Interest expenses
    decimal? expense_interest?;
    # Investment management expenses
    decimal? expense_investment_management?;
    # Legal expenses
    decimal? expense_legal?;
    # Pension plan expenses
    decimal? expense_pension_plan?;
    # Publications expenses
    decimal? expense_publications?;
    # Professional fundraising expenses
    decimal? expense_profesional_fundraising?;
    # Total assets
    decimal? assets_total?;
    # Unrestricted new assets
    decimal? unrestricted_net_assets?;
    # Net fixed assets (Land, Buildings, equipment)
    decimal? net_fixed_assets_LBE?;
    # Net assets at the end of year
    decimal? net_assets_end_of_year?;
    # Expenses not recorded elsewhere
    decimal? other_expense?;
    # total amount of secured mortgages and notes payable to unrelated third parties that are secured by the organization's assets
    decimal? notes_payable_mortgages?;
    # Total liabilities at the end of year
    decimal? liabilities_total?;
    # A measurement of how long an organization can operate using cash and cash reserves at current expense levels. Calculated using the formula - Cash plus Savings divided by Total Expenses minus Depreciation divided by 12 months.
    string? months_of_cash?;
    # IRS 990 form Part VIII dealing with revenue
    PartVIII? part_8_revenue?;
    # IRS 990 form Part IX dealing with expenses
    PartIX? part_9_expenses?;
    # IRS 990 form Part X, Balance Sheet
    PartX? part_10_balance_sheet?;
};

public type Contractor record {
    # The contractors name.
    string? name?;
    # The contractors address.
    string? address?;
    # The contractors compensation.
    string? compensation?;
    # The type of service the contractor provided.
    string? service_type?;
};

# list of key data checks enumerated below
public type Key_Data_Checks record {
    # presence of data check errors
    boolean? data_check_errors?;
};

# list of capital structure indicators enumerated below
public type Capital_Structure_Indicators record {
    # liquidity capital structure indicator
    Liquidity? liquidity?;
    # balance sheet composition
    Balance_Sheet_Composition? balance_sheet_composition?;
};

public type CharityCheck_organization_types record {
    # Type of organization and use of contribution as it appears in the Publication 78.
    string? organization_type?;
    # In general, an individual who itemizes deductions may deduct contributions to most charitable organizations up to 50% of his or her adjusted gross income computed without regard to net operating loss carrybacks. Individuals generally may deduct charitable contributions to other organizations up to 30% of their adjusted gross income (computed without regard to net operating loss carrybacks). These limitations (and organizational status) are indicated.
    string? deductibility_limitation?;
    # Deductibility Status Codes.
    string? deductibility_status_description?;
};

# IRS form 990-EZ financials
public type FinancialF990EZ record {
    # Tax year begin date
    string? period_begin?;
    # Tax year end date
    string? period_end?;
    # Accounting Method
    string? accounting_method?;
    # Tax-exempt status
    string? organization_type?;
    # Candid use only
    string? date_last_modified?;
    # Contributions, gifts, grants, and similar amounts received .
    decimal? revenue_contributions?;
    # Program service revenue including government fees and contracts
    decimal? revenue_program_services?;
    # Membership dues and assessments revenues
    decimal? revenue_membership_dues?;
    # Investment income
    decimal? revenue_investments?;
    # Gain or (loss) from sale of assets other than inventory 
    decimal? revenue_sales_other?;
    # Net income or (loss) from gaming and fundraising events
    decimal? revenue_special_events?;
    # Gross sales of inventory, less returns and allowances
    decimal? revenue_sales_inventory?;
    # Gross sales of inventory, less returns and allowances
    decimal? revenue_sales?;
    # Total all other revenue
    decimal? revenue_other?;
    # Total revenue - Current Year
    decimal? total_revenue?;
    # Grants and similar amounts paid
    decimal? expense_grants?;
    # Benefits paid to or for members
    decimal? expense_benefits?;
    # Salaries, other compensation, and employee benefits
    decimal? expense_salaries_employee_benefits?;
    # Professional fees and other payments to independent contractors
    decimal? expense_professional_fees?;
    # Occupancy, rent, utilities, and maintenance
    decimal? expense_occupancy?;
    # Printing, publications, postage, and shipping
    decimal? expense_printing_publications_postage?;
    # Other expenses
    decimal? expense_other?;
    # Total functional expenses
    decimal? total_expenses?;
    # Excess or (deficit) for the year
    decimal? net_gain_loss?;
    # Other changes in net assets or fund balances
    decimal? other_changes?;
    # Beginning of year cash, savings, and investments
    decimal? cash_savings_investments_boy?;
    # Beginning of year land and buildings assets
    decimal? land_and_buidings_boy?;
    # Beginning of year other assets
    decimal? other_assets_boy?;
    # Beginning of year total assets
    decimal? total_assets_boy?;
    # Beginning of year total liabilities
    decimal? total_liabilities_boy?;
    # Net assets or fund balances at the beginning of the year
    decimal? net_assets_boy?;
    # End of year cash, savings, and investments
    decimal? cash_savings_investments_eoy?;
    # End of year land and buildings assets
    decimal? land_and_buidings_eoy?;
    # End of year other assets
    decimal? other_assets_eoy?;
    # End of year total assets
    decimal? total_assets_eoy?;
    # End of year total liabilities
    decimal? total_liabilities_eoy?;
    # Net assets or fund balances at the end of the year
    decimal? net_assets_eoy?;
    # IRS Form 990 EZ Financials Part I, Revenue, Expenses, and Changes in Net Assets or Fund Balances
    EZFinancialsPartI? part_1_revenue_expenses?;
    # IRS Form 990 EZ Financials Part II, Balance Sheet
    EZFinancialsPartII? part_2_balance_sheet?;
};

@deprecated
public type OtherStaff record {
    # DEPRECATED
    string? name?;
    # DEPRECATED
    string? title?;
    # DEPRECATED
    string? 'type?;
};

# IRS 990 document, possibly uploaded by the organization
public type Fin_Doc record {
    # File name document uploaded as
    string? form990_name?;
    # Year file pertains to
    string? form990_year?;
    # URL to access this document
    string? form990_url?;
    # Source of document
    string? form990_source?;
};

public type OK_PublicProfile3_ record {
    # HTTP response status code.
    string? code?;
    # Description of the HTTP response status code.
    string? status?;
};

# Contains the last change datetimes for several key data values
public type ProfileDataChangeDates record {
    # Datetime of last update to primary address
    string? primary_address_last_modified?;
    # Datetime of last update to payment address
    string? payment_address_last_modified?;
    # Datetime of last update to primary contact email address
    string? primary_contact_email_last_modified?;
    # Datetime of last update to fundraising contact email address
    string? fundraising_contact_email_last_modified?;
    # Datetime of last update to organization website address
    string? org_website_last_modified?;
    # Datetime of last update to organization seal level
    string? seal_last_modified?;
    # Datetime of last update to organization demographics information
    string? dei_last_modified?;
};

# A document the organization uploaded to GuideStar
public type OtherDocument record {
    # Document name entered by organization
    string? document_name?;
    # Year document is associated with
    string? document_year?;
    # DEPRECATED
    string? otherdocument_contents?;
    # URL to document
    string? document_url?;
};

# Financial Trends Analysis for 990 filers
public type FinancialTrends record {
    # The fiscal year as a number
    string? fiscal_year?;
    # list of business model indicators enumerated below
    Business_Model_Indicators? business_model_indicators?;
    # list of capital structure indicators enumerated below
    Capital_Structure_Indicators? capital_structure_indicators?;
    # list of key data checks enumerated below
    Key_Data_Checks? key_data_checks?;
};

# balance sheet composition
public type Balance_Sheet_Composition record {
    # total cash
    int? cash?;
    # total investments
    int? investments?;
    # total receivables
    int? receivables?;
    # gross land buildings and equipment amount
    int? gross_land_buildings_and_equipment_lbe?;
    # accumulated depreciation as percent of land and buildings
    string? accumulated_depreciation_as_percent_of_lbe?;
    # liabilities as a percent of net assets
    string? liabilities_as_percent_of_net_assets?;
    # unrestrited net assets total
    int? unrestricted_net_assets?;
    # temporarily restricted net assets total
    int? temporarily_restricted_net_assets?;
    # permanently restricted net assets total
    int? permanently_restricted_net_assets?;
    # restricted net assets total
    int? restricted_net_assets?;
    # total net assets
    int? total_net_assets?;
};

public type BadRequest record {
    # HTTP response status code.
    string? code?;
    string? message?;
};

# demographic totals for staff
public type StaffLevelTotals record {
    # total number of board members
    string? total_board_members?;
    # total number of staff
    string? total_staff?;
    # total number of senior staff
    string? total_senior_staff?;
};

# Video information added by organization
public type Video record {
    # Caption of video
    string? video_caption?;
    # URL to video
    string? video_url?;
};

# DEPRECATED
# 
# # Deprecated
@deprecated
public type DemographicsSubCategory record {
    # DEPRECATED
    string? subcategory?;
    # DEPRECATED
    DemographicsStaffLevel[]? staff_levels?;
};

# IRS form 990-PF financials 
public type Financial990PF record {
    # Candid use only
    decimal? investments_us_state_government?;
    # Tax year begin date
    string? period_begin?;
    # Tax year end date
    string? period_end?;
    # Cash—non-interest-bearing,  Fair Market Value + Savings and temporary cash investments, Fair Market Value
    decimal? cash_equivalent_investible_assets?;
    # Net investment income
    decimal? net_investment_income?;
    # Adjusted Net Income
    decimal? adjusted_net_income?;
    # Total operating and administrative expenses
    decimal? total_operating_expenses?;
    # Contributions not included in 8a
    decimal? contributions?;
    # Total functional expenses
    decimal? total_expenses?;
    # Accounting fees
    decimal? expense_accounting?;
    # Interest expenses
    decimal? expense_interest?;
    # Legal fees
    decimal? expense_legal?;
    # Other professional fees
    decimal? expense_professional_fees?;
    # Pension plans, employee benefits expenses
    decimal? expense_pension_plans?;
    # Printing and publications expenses
    decimal? expense_publications?;
    # Investments—U.S. and state government obligations
    decimal? investments_us_state_govt?;
    # Investments—corporate stock
    decimal? investments_stocks?;
    # Investments—corporate bonds
    decimal? investments_bonds?;
    # Investments—other
    decimal? investments_other?;
    # Land, buildings, and equipment: basis
    decimal? land_buildings_equipment?;
    # Other assets
    decimal? other_assets?;
    # Total assets
    decimal? total_assets?;
    # Total liabilities
    decimal? total_liabilities?;
    # Total assets, Fair Market Value - Total liabilities, Book Value
    decimal? net_assets?;
    # Total revenue - Current Year
    decimal? income_total?;
};

# Current, or most recent, fiscal year (FY) financial information. Since this could come from multiple 990 form types, many of the fields are normalized.
public type CurrentFinancial1 record {
    # The FY as a number
    int:Signed32? fiscal_year?;
    # The IRS 990 form type the data in this CurrentFinancial object is based off of.
    string? form_type?;
    # Source of current financial information
    string? data_source?;
    # Total monetary amount of assets, in USD
    decimal? assets_total?;
    # Total monetary value of liabilities, in USD
    decimal? total_liabilities?;
    # Contributions revenue, i.e. donations, in USD
    decimal? revenue_contributions?;
    # Government grants revenue, in USD
    decimal? revenue_govt_grants?;
    # Program services revenue, in USD
    decimal? revenue_program_services?;
    # Investments revenue, in USD
    decimal? revenue_investments?;
    # Special events revenue, in USD
    decimal? revenue_special_events?;
    # Sales revenue, in USD
    decimal? revenue_sales?;
    # Other revenue, in USD
    decimal? revenue_other?;
    # Total revenue,, in USD
    decimal? total_revenue?;
    # Administration expenses, in USD
    decimal? expense_administration?;
    # Program services expenses, in USD
    decimal? expense_program_services?;
    # Fundraising expenses, in USD
    decimal? expense_fundraising?;
    # Accounting expenses, in USD
    decimal? expense_accounting?;
    # Advertising expenses, in USD
    decimal? expense_advertising_promotion?;
    # IT expenses, in USD
    decimal? expense_info_technology?;
    # Insurance expenses, in USD
    decimal? expense_insurance?;
    # Interest expenses, in USD
    decimal? expense_interest?;
    # Investment management expenses, in USD
    decimal? expense_investment_management?;
    # Legal expenses, in USD
    decimal? expense_legal?;
    # Pension plan expenses, in USD
    decimal? expense_pension_plan?;
    # Professional fundraising expenses, in USD
    decimal? expense_professional_fundraising?;
    # Professional fees expenses, in USD
    decimal? expense_professional_fees?;
    # Publication expenses, in USD
    decimal? expense_publications?;
    # Admin operating expenses, in USD
    decimal? expense_operating_admin?;
    # Gifts and grants paid expenses, in USD
    decimal? expense_gifts_grants_paid?;
    # Disbursement expenses, in USD
    decimal? total_expense_disbursements?;
    # Total expenses, in USD
    decimal? expenses_total?;
    # Net gain/loos this FY, in USD
    decimal? net_gain_loss?;
    # Cash and equivalent assets, in USD
    decimal? cash_and_equivalent_assets?;
    # U.S. bond investment gain/loss, in USD
    decimal? investments_us_government?;
    # Stock investment gain/loss, in USD
    decimal? investments_stock?;
    # Bond investments gain/loss, in USD
    decimal? investments_bonds?;
    # Other investments gain/loss, in USD
    decimal? investments_other?;
    # Land, buildings, equipment end of year value, in USD
    decimal? land_buildings_equipment?;
    # Other assets end of year value, in USD
    decimal? other_assets?;
};

# The Philanthropy Classification System (PCS) is Candid’s (formerly Foundation Center and GuideStar) taxonomy, describing the work of grantmakers, recipient organizations and the philanthropic transactions between those entities. Candid’s Classification System is based on the National Taxonomy of Exempt Entities (NTEE) and has been expanded over the last three decades to include the emerging work we have evidenced while capturing and indexing the work of the sector on a global scale.
public type PCS record {
    # PCS facet name
    string? pcs_facet?;
    # PCS code
    string? pcs_code?;
    # PCS code description
    string? pcs_description?;
    # PCS parent code
    string? pcs_parent_code?;
    # PCS parent code description
    string? pcs_parent_description?;
};

# Current, or most recent, fiscal year (FY) financial information. Since this could come from multiple 990 form types, many of the fields are normalized.
public type CurrentFinancial record {
    # Start date of the FY that this current financial object covers
    string? period_begin?;
    # End date of the fiscal year that this current financial object covers
    string? period_end?;
    # The FY as a number
    int:Signed32? fiscal_year?;
    # The IRS 990 form type the data in this CurrentFinancial object is based off of.
    string? form_type?;
    # Source of current financial information
    string? data_source?;
    # Total monetary amount of assets, in USD
    decimal? assets_total?;
    # Total monetary value of liabilities, in USD
    decimal? total_liabilities?;
    # Contributions revenue, i.e. donations, in USD
    decimal? revenue_contributions?;
    # Government grants revenue, in USD
    decimal? revenue_govt_grants?;
    # Program services revenue, in USD
    decimal? revenue_program_services?;
    # Investments revenue, in USD
    decimal? revenue_investments?;
    # Special events revenue, in USD
    decimal? revenue_special_events?;
    # Sales revenue, in USD
    decimal? revenue_sales?;
    # Other revenue, in USD
    decimal? revenue_other?;
    # Total revenue,, in USD
    decimal? total_revenue?;
    # Administration expenses, in USD
    decimal? expense_administration?;
    # Program services expenses, in USD
    decimal? expense_program_services?;
    # Fundraising expenses, in USD
    decimal? expense_fundraising?;
    # Accounting expenses, in USD
    decimal? expense_accounting?;
    # Advertising expenses, in USD
    decimal? expense_advertising_promotion?;
    # IT expenses, in USD
    decimal? expense_info_technology?;
    # Insurance expenses, in USD
    decimal? expense_insurance?;
    # Interest expenses, in USD
    decimal? expense_interest?;
    # Investment management expenses, in USD
    decimal? expense_investment_management?;
    # Legal expenses, in USD
    decimal? expense_legal?;
    # Pension plan expenses, in USD
    decimal? expense_pension_plan?;
    # Professional fundraising expenses, in USD
    decimal? expense_professional_fundraising?;
    # Unrestricted net asset, in USD
    decimal? unrestricted_net_assets?;
    # Land, buildings and equipment fixed assets, in USD
    decimal? net_fixed_assets_LBE?;
    # mortgages and notes payable to unrelated 3rd parties, in USD
    decimal? notes_payable_mortgages?;
    # A measurement of how long an organization can operate using cash and cash reserves at current expense levels. Calculated using the formula - Cash plus Savings divided by Total Expenses minus Depreciation divided by 12 months.
    string? months_of_cash?;
    # Professional fees expenses, in USD
    decimal? expense_professional_fees?;
    # Publication expenses, in USD
    decimal? expense_publications?;
    # Admin operating expenses, in USD
    decimal? expense_operating_admin?;
    # Gifts and grants paid expenses, in USD
    decimal? expense_gifts_grants_paid?;
    # Disbursement expenses, in USD
    decimal? total_expense_disbursements?;
    # Total expenses, in USD
    decimal? expenses_total?;
    # Net gain/loos this FY, in USD
    decimal? net_gain_loss?;
    # Salary and other employee benefit expense, in USD
    decimal? expense_salaries_employee_benefits?;
    # Cash and equivalent assets, in USD
    decimal? cash_and_equivalent_assets?;
    # U.S. bond investment gain/loss, in USD
    decimal? investments_us_government?;
    # Stock investment gain/loss, in USD
    decimal? investments_stock?;
    # Bond investments gain/loss, in USD
    decimal? investments_bonds?;
    # Other investments gain/loss, in USD
    decimal? investments_other?;
    # Land, buildings, equipment end of year value, in USD
    decimal? land_buildings_equipment?;
    # Other assets end of year value, in USD
    decimal? other_assets?;
};

public type Forbidden record {
    # HTTP response status code.
    string? code?;
    string? message?;
};

public type DEI2Demographics record {
    # demographic totals for staff
    StaffLevelTotals? staff_level_totals?;
    # list of equity strategy items enumerated below
    EquityStrategy? equity_strategies?;
    DEI2Category[]? categories?;
};

# Organization Charity Check information
public type CharityCheck record {
    # A unique number identifying organizations and organizational entities.
    string? organization_id?;
    # Date the organization’s information was last updated.
    string? organization_info_last_modified?;
    # Employer Identification Number.
    string? ein?;
    # The public name recognized by the IRS.
    string? organization_name?;
    # Organization name "Also Known As" 
    string? organization_name_aka?;
    # Address of the organization.
    string? address_line1?;
    # Additional address information.
    string? address_line2?;
    # City of the organization's address. 
    string? city?;
    # State (Abbreviation) of the organization's address.
    string? state?;
    # State (Full Name) of the organization's address.
    string? state_name?;
    # Zip code of the organization's address.
    string? zip?;
    # This indicates the primary return(s) the organization is required to file.
    string? filing_req_code?;
    # Date the Charity Check report was last modified.
    string? charity_check_last_modified?;
    # A message indicating that although the organization is not on the Pub78, their filing requirement code shows that they are a religious organization and are therefore not required to appear on the Pub78 to establish their status.
    string? pub78_church_message?;
    # Organization name as it appears in the Publication 78 data.
    string? pub78_organization_name?;
    # EIN (Employer Identification Number) as it appears in the Publication 78 data. 
    string? pub78_ein?;
    # Whether the organization is listed on the most current Publication 78. Also known as the Cumulative List of Organizations, IRS Publication 78 lists all organizations to which charitable contributions are tax deductible. The Publication 78 record for each organization includes the organization's name, its city, and its current tax-exempt status, including what percentage of contributions to it are tax deductible. Subordinate organizations in group exemptions inherit the Pub78 status of the parent organization. 
    string? pub78_verified?;
    # City of the organization as it appears in the Publication 78 data.
    string? pub78_city?;
    # State of the organization as it appears in the Publication 78 data.
    string? pub78_state?;
    # Indicator for understanding an organization’s Publication 78 data. Subordinate organizations in group exemptions inherit the Pub78 status of the parent organization.
    string? pub78_indicator?;
    CharityCheck_organization_types[]? organization_types?;
    # Date of most recent Publication 78.
    string? most_recent_pub78?;
    # Date of the most recent Internal Revenue Bulletin.
    string? most_recent_irb?;
    # A message indicating that although the organization is not on the IRS BF, their filing requirement code shows that they are a church or religious organization and are therefore not required to appear on the IRS BMF to establish their status.
    string? bmf_church_message?;
    # Organization name as it appears in the Business Master File.
    string? bmf_organization_name?;
    # EIN (Employer Identification Number) as it appears in the Business Master File.
    string? bmf_ein?;
    # If the organization appears in the Business Master File.
    string? bmf_status?;
    # Date of the most recent IRS Business Master File.
    string? most_recent_bmf?;
    # Subsection code as it appears in Business Master File. This code identifies the type of tax-exempt organization. This is often used to determine if contributions to them are tax deductible. 
    string? bmf_subsection?;
    # Subsection code description as it relates to the subsection code that appears in Business Master File. This code identifies the type of tax-exempt organization. This is often used to determine if contributions to them are tax deductible.
    string? subsection_description?;
    # Organizations can select IRS foundation codes to describe their organization type.
    string? foundation_code?;
    # Textual description of the foundation code. 
    string? foundation_code_description?;
    # This is the month on a ruling or determination letter recognizing the organization's exempt status.
    string? ruling_month?;
    # This is the year on a ruling or determination letter recognizing the organization's exempt status.
    string? ruling_year?;
    # This is the month on an advanced ruling recognizing the organization’s exempt status. A section 501(c)(3) organization that has received an advance ruling with an expiration date on or after June 9, 2008, is classified as a publicly supported charity during its first five years. Such an organization and its donors may rely on the organization's advance ruling and the organization no longer needs to file Form 8734 with the IRS. Beginning with the organization's sixth year, it must establish that it met the public support test by showing that it is publicly supported on its Form 990, Return of Organization Exempt From Income Tax.On September 9, 2008, the IRS issued temporary Income Tax Regulations, which eliminated the advance ruling process for a section 501(c)(3) organization. Under the new regulations, a new 501(c)(3) organization will be classified as a publicly supported charity, and not a private foundation, if it can show that it reasonably can be expected to be publicly supported when it applies for tax-exempt status.
    string? adv_ruling_month?;
    # This is the year on an advanced ruling recognizing the organization’s exempt status. A section 501(c)(3) organization that has received an advance ruling with an expiration date on or after June 9, 2008, is classified as a publicly supported charity during its first five years. Such an organization and its donors may rely on the organization's advance ruling and the organization no longer needs to file Form 8734 with the IRS. Beginning with the organization's sixth year, it must establish that it met the public support test by showing that it is publicly supported on its Form 990, Return of Organization Exempt From Income Tax. On September 9, 2008, the IRS issued temporary Income Tax Regulations, which eliminated the advance ruling process for a section 501(c)(3) organization. Under the new regulations, a new 501(c)(3) organization will be classified as a publicly supported charity, and not a private foundation, if it can show that it reasonably can be expected to be publicly supported when it applies for tax-exempt status. 
    string? adv_ruling_year?;
    # This is a 4-digit IRS-internal number assigned to parent organizations holding group exemption letters. Subordinate organizations in group exemptions inherit the Pub78 status of the parent organization.
    string? group_exemption?;
    # The EO Status Code defines the type of exemption held by the organization.
    string? exempt_status_code?;
    # Indicates whether this organization has been listed by OFAC on the Specially Designated National (SDN) List. Also known as the “Terrorist Watch List”. 
    string? ofac_status?;
    # Indicates the revocation code provided by the IRS in the Automatic Revocation file.
    string? revocation_code?;
    # Date of revocation.
    string? revocation_date?;
    # Date of reinstatement, if any.
    string? reinstatement_date?;
    # Indicates whether the Business Master File and Publication 78 data are reporting the organization differently regarding its classification as a private foundation. 
    string? irs_bmf_pub78_conflict?;
    # Non-private foundation status. 
    string? foundation_509a_status?;
    # Candid Internal Use Only (Removed in Future API Versions). 
    string? irb_organization_id?;
    # If the organization was listed in an Internal Revenue Bulletin, the bulletin number is listed here.
    string? bulletin_number?;
    # URL link to the IRB.
    string? bulletin_url?;
    # Effective date of the IRB.
    string? effective_date?;
    # The date that GuideStar IRB last modification date.
    string? irb_last_modified?;
    # Date and time the Charity Check API returned the result. Reported in Greenwich Mean Time (GMT).
    string? report_date?;
    # Organizations can select IRS foundation codes to describe their organization type. 
    string? foundation_type_code?;
    # Textual description of the foundation code.
    string? foundation_type_description?;
    CharityCheck_parent_organizations[]? parent_organizations?;
};

# Images uploaded by organization
public type PhotoLink record {
    # URL to image
    string? picture_url?;
    # Image caption
    string? caption?;
};

public type Unauthorized record {
    # HTTP response status code.
    string? code?;
    string? message?;
};

# list of equity strategy items enumerated below
public type EquityStrategy record {
    # presence of compensation information
    boolean? data_compensation?;
    # presence of data disparities information
    boolean? data_disparities?;
    # presence of root cause information
    boolean? data_root_cause?;
    # presence of programming goals information
    boolean? data_programming_goals?;
    # presence of feedback information
    boolean? data_feedback?;
    # presence of demographics information
    boolean? data_demographics?;
    # presence of strategic plan information
    boolean? data_strategic_plan?;
    # presence of policy standards information
    boolean? policy_standards?;
    # presence of promotion policy information
    boolean? policy_promotion?;
    # presence of evaluation policy information
    boolean? policy_evaluation?;
    # presence of community policy information
    boolean? policy_community?;
    # presence of leadership policy information
    boolean? policy_leadership?;
    # presence of satisfaction policy information
    boolean? policy_satisfaction?;
    # presence of equity policy information
    boolean? policy_equity?;
    # equity strategy section's last modified date for the organization
    string? equity_strategy_last_modified?;
};

public type V1PublicProfile record {
    # HTTP response status code.
    int? code?;
    # Diagnostic message for response status
    string? message?;
    # Time taken for request to process
    int? took?;
    # List of errors encountered
    string[]? errors?;
    V1PublicProfile_data? data?;
};

# National taxonomy of exempt Entities (NTEE) code information
public type NteeCode record {
    # NTEE code
    string? ntee_code?;
    # NTEE primary code
    string? primary_code?;
    # NTEE Primary description
    string? primary_description?;
    # NTEE subcode
    string? sub_code?;
    # NTEE subcode description
    string? sub_description?;
};

public type V2PublicProfile_data record {
    # Information about the non-profit, such as name and address
    Summary2? summary?;
    # Collection of an organizations programs and program metrics
    Programs2? programs?;
    # Organization financial information
    Financials2? financials?;
    # Organization operations information
    Operations1? operations?;
    # Organization Charity Check information
    CharityCheck? charitycheck?;
};

public type Error record {
    string? 'resource?;
    string? reason?;
};

# Specific feedback response questions answered by organization
public type FBResponseText record {
    # Feedback response question text
    string? question_text?;
    # Feedback response answer text
    string? response_text?;
};

public type OrganizationType record {
    # The type of organization it is.
    string? organization_type?;
    # The amount you can deduct from your taxes for donations towards this organization.
    string? deductibility_limitation?;
    # The code for the type of organization.
    string? deductibility_status_description?;
};

@deprecated
public type OrganizationDemographics record {
    # DEPRECATED
    int:Signed32? total_board_members?;
    # DEPRECATED
    int:Signed32? total_fulltime_staff?;
    # DEPRECATED
    int:Signed32? total_parttime_staff?;
    # DEPRECATED
    int:Signed32? total_staff?;
    # DEPRECATED
    int:Signed32? total_senior_staff?;
    # DEPRECATED
    boolean? tracks_staffboardvol_retention?;
    # DEPRECATED
    boolean? tracks_staffboard_income?;
    # DEPRECATED
    boolean? tracks_staffboard_age?;
    # DEPRECATED
    boolean? tracks_vendor_diversity?;
    # DEPRECATED
    boolean? has_diversity_committee?;
    # DEPRECATED
    boolean? has_diversity_manager?;
    # DEPRECATED
    boolean? diversity_manager_fulltime?;
    # DEPRECATED
    boolean? diversity_plan?;
    # DEPRECATED
    boolean? supports_diversity_via_other_methods?;
    # list of equity strategy items enumerated below
    EquityStrategy? equity_strategies?;
    # DEPRECATED
    DemographicsCategory[]? categories?;
};

# IRS Form 990 EZ Financials Part I, Revenue, Expenses, and Changes in Net Assets or Fund Balances
public type EZFinancialsPartI record {
    # total contributions
    decimal? contributions_total?;
    # service revenue
    decimal? service_revenue?;
    # revenue from membership dues
    decimal? membership_dues?;
    # revenue from income investments
    decimal? income_investments?;
    # gross revenue from other sources
    decimal? gross_other?;
    # Less cost of sales of assets- other
    decimal? cost_other?;
    # Gain or loss on sale of assets-other
    decimal? gain_other?;
    # gross gaming revenue
    decimal? gross_gaming?;
    # gross fundraising revenue
    decimal? gross_fundraising?;
    # gross special revenue
    decimal? gross_special?;
    # direct expenses
    decimal? direct_expenses?;
    # net special revenue
    decimal? net_special?;
    # gross revenue from sales
    decimal? gross_sales?;
    # cost of goods
    decimal? cost_goods?;
    # gross profit
    decimal? gross_profit?;
    # revenue from other sources
    decimal? revenue_other?;
    # total revenue
    decimal? revenue_total?;
    # total grants paid
    decimal? grants_total?;
    # total benefits paid
    decimal? benefits_total?;
    # total compensation expenses
    decimal? compensation_total?;
    # total fundraising expenses
    decimal? fundraising_total?;
    # total expenses from occupancy, rent, utilities, and maintenance
    decimal? occupancy_total?;
    # total printing expenses
    decimal? printing_total?;
    # total expenses from other sources
    decimal? other_expenses_total?;
    # total functional expenses
    decimal? functional_expenses_total?;
    # excess (or deficit) for the year
    decimal? year_excess?;
    # beginning of year net assets
    decimal? net_assets_boy?;
    # changes in assets
    decimal? assets_change?;
    # end of year net assets
    decimal? net_assets_eoy?;
};

# DEPRECATED
# 
# # Deprecated
@deprecated
public type Award record {
    # DEPRECATED
    string? awarding_external_org?;
    # DEPRECATED
    string? award_name?;
    # Year award received
    string? award_year?;
};

public type TooManyRequests record {
    # HTTP response status code.
    string? code?;
    string? message?;
};

# IRS Form 990 EZ Financials Part II, Balance Sheet
public type EZFinancialsPartII record {
    # beginning of year cash
    decimal? cash_boy?;
    # beginning of year land and buildings
    decimal? lbe_boy?;
    # beginning of year other assets
    decimal? assets_other_boy?;
    # beginning of year total assets
    decimal? assets_total_boy?;
    # beginning of year total liability
    decimal? liability_total_boy?;
    # beginning of year net total
    decimal? net_total_boy?;
    # end of year cash
    decimal? cash_eoy?;
    # end of year land and buildings
    decimal? lbe_eoy?;
    # end of year other assets
    decimal? assets_other_eoy?;
    # end of year total assets
    decimal? assets_total_eoy?;
    # end of year total liability
    decimal? liability_total_eoy?;
    # end of year net total
    decimal? net_total_eoy?;
};

public type NotFound record {
    # HTTP response status code.
    string? code?;
    string? message?;
};
