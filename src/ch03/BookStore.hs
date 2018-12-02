module BookStore where

type CustomerID = Int
type Address = [String]

data BookInfo = Book Int String [String]
                 deriving (Show)

bookID      (Book id title authors) = id
bookTitle   (Book id title authors) = title
bookAuthors (Book id title authors) = authors

nicerID (Book id _ _) = id
nicerTitle (Book _ title _) = title
nicerAuthors (Book _ _ authors) = authors

-- data Customer = Customer Int String [String]
--                 deriving (Show)

data Customer = Customer {
  customerID      :: CustomerID,
  customerName    :: String,
  customerAddress :: Address
                         } deriving (Show)

customer1 = Customer 271828 "J.R. Hacker"
            ["255 Syntax Ct",
             "Milpitas, CA 95134",
             "USA"]

customer2 = Customer {
              customerID = 271828
            , customerAddress = ["1048576 Disk Drive",
                                 "Milpitas, CA 95134",
                                 "USA"]
            , customerName = "Jane Q. Citizen"
            }
