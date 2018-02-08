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

-- Creation of the new type BookInfo is done by treating book as a function

myInfo = Book 9780135072455 "Algebra of Programming"
         ["Richard Bird", "Oege de Moor"]

