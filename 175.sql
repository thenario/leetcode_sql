SELECT 
    Person.PersonId,
    Person.FirstName,
    Person.Lastname,
    Address.AddressId,
    Address.City,
    Address.State 
FROM Person
LEFT JOIN Address ON Person.PersonId = Address.PersonId;