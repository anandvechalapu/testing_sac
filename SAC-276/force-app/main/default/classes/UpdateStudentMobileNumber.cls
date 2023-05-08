public with sharing class UpdateStudentMobileNumber {
    // Trigger on Student__c object
    trigger UpdateStudentMobileNumber on Student__c (before insert) {
        // Iterate through each record
        for (Student__c stu : Trigger.new) {
            // Check if the Phone field is not null
            if (stu.Phone != null) {
                // Set the Mobile field to the same value as the Phone field
                stu.Mobile__c = stu.Phone;
            }
        }
    }
}