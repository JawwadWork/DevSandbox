<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Email_Alert_Notify_VP_about_cases_for_large_accounts</fullName>
        <ccEmails>jawwadilyas@hotmail.com</ccEmails>
        <description>Email Alert - Notify VP about cases for large accounts</description>
        <protected>false</protected>
        <recipients>
            <recipient>jawwadilyas@gmail.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/SupportCaseAssignmentNotification</template>
    </alerts>
    <rules>
        <fullName>New Case Large Account Notification</fullName>
        <actions>
            <name>Email_Alert_Notify_VP_about_cases_for_large_accounts</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 OR 2</booleanFilter>
        <criteriaItems>
            <field>Account.AnnualRevenue</field>
            <operation>greaterThan</operation>
            <value>20000</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.NumberOfEmployees</field>
            <operation>greaterThan</operation>
            <value>5000</value>
        </criteriaItems>
        <description>Notify Services VP regarding new cases for large accounts and assign follow up to Account Owner.</description>
        <triggerType>onCreateOnly</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Follow_up_the_customer_on_case_resolution</name>
                <type>Task</type>
            </actions>
            <timeLength>1</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <tasks>
        <fullName>Follow_up_the_customer_on_case_resolution</fullName>
        <assignedToType>accountOwner</assignedToType>
        <description>Time Trigger workflow</description>
        <dueDateOffset>2</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <offsetFromField>Case.ClosedDate</offsetFromField>
        <priority>High</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Follow up the customer on case resolution</subject>
    </tasks>
</Workflow>
