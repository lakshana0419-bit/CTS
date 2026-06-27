BEGIN
    FOR rec IN (
        SELECT CustomerID, LoanID
        FROM Loans
        WHERE DueDate BETWEEN SYSDATE AND SYSDATE + 30
    ) LOOP

        DBMS_OUTPUT.PUT_LINE(
            'Reminder sent to Customer ' ||
            rec.CustomerID
        );

    END LOOP;
END;
/