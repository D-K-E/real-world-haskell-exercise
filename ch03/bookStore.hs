--
data BookInfo = Book Int String [String] -- BookInfo is a Type Constructor
                deriving (Show)
-- Book is the value constructor
-- Int String [String] are components, fields

data MagazineInfo = Magazine Int String [String]
                    deriving (Show) -- Same thing
--
-- Since they are named differently, haskell treats them as different types
-- even
-- if they have same components

data T_BookReview = BookReview BookInfo CustomerID String

type CustomerID = Int -- Type synonyme CustomerId is just a different name
-- for Int

type ReviewBody = String

data T_BetterReview = BetterReview BookInfo CustomerID ReviewBody

type CardHolder = String
type CardNumber = String
type Address = [String]

-- Algebraic Data Types

data Bool = False | True -- the | separates value constructors

data BillingInfo =  CreditCard CardNumber CardHolder Address
                 | CashOnDelivery
                 | Invoice CustomerID
                   deriving (Show)

-- Here are three value constructors

-- A subtle example for type constructors and their importance

data T_Cartesian2D = Cartesian2D Double Double
                     deriving (Eq, Show)

data T_Polar2D = Polar2D Double Double
                 deriving (Eq, Show)

-- The idea is both have components but they are different types

-- Here are two different ways of writing the same thing

-- Normal or the usual type constructor syntax

data T_Customer = Customer Int String [String]
                  deriving (Show)

customerID :: Customer -> Int

customerID (Customer id _ _ ) = id

customerName :: Customer -> String

customerName (Customer _ name _) = name

customerAddress :: Customer -> [String]

customerAddress (Customer _ _ address) = address

-- Record Syntax equivalent

data T_Customer = Customer {
  customerId :: CustomerID
  , customerName :: String
  , customerAddress :: Address
                           } deriving (Show)

-- Their difference comes in instantiation

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
  -- In the second declaration order does not matter
-- Creation of the new type BookInfo is done by treating book as a function

myInfo = Book 9780135072455 "Algebra of Programming"
         ["Richard Bird", "Oege de Moor"]

-- Parameterised types TODO
