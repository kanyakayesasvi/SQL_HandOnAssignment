CREATE TABLE StudentAdmissionPaymentDetails(
StudentRollNo INT,
AmountPaid INT,
AmountBalance INT,
PaymentMode VARCHAR(20),
PaymentType VARCHAR(20),
BankName VARCHAR(20),
PaymentStatus VARCHAR(20),
FOREIGN KEY(StudentRollNo) REFERENCES
StudentBasicInformation(StudentRollNo)
);