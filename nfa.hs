-- This NFA was originally from Ravi's Homework set # 3b Problem 2 
-- The problem was to create a NFA (not code it).
--
-- Given a number, as a string, remove one of its digits and check
-- if it is divisible by 7 (Any digit can be removed but only one)
-- The number is READ IN backwards.
--
-- Created 09-26-2012
-- Updated 05-20-2013
-- Version 1.1
-- Created by unsignedzero (David Tran)

--Define Main
module Main where

-- Front End Call
mod7 :: [Char] -> Bool
mod7 [] = True
mod7 x 
 | y > 0 = True
 | otherwise = False
 where y = mod7_0 x

-- We have fourteen states. The first seven, without removing the digit does
-- not have an s before the number. The number of the function is the one's
-- digit and the new number we read becomes the ten's digit. The function we
-- go to the is remainder when that number is modulus divided by 7.
 
-- Back
mod7_0 :: [Char] -> Int
mod7_0 [] = 0
mod7_0 (x:xs)
  | x == '0' = mod7_0 xs + mod7_s0 xs
  | x == '1' = mod7_1 xs + mod7_s0 xs
  | x == '2' = mod7_2 xs + mod7_s0 xs
  | x == '3' = mod7_3 xs + mod7_s0 xs
  | x == '4' = mod7_4 xs + mod7_s0 xs
  | x == '5' = mod7_5 xs + mod7_s0 xs
  | x == '6' = mod7_6 xs + mod7_s0 xs
  | x == '7' = mod7_0 xs + mod7_s0 xs
  | x == '8' = mod7_1 xs + mod7_s0 xs
  | x == '9' = mod7_2 xs + mod7_s0 xs
  | otherwise = 0

mod7_1 :: [Char] -> Int
mod7_1 [] = 0
mod7_1 (x:xs)
  | x == '0' = mod7_5 xs + mod7_s1 xs
  | x == '1' = mod7_6 xs + mod7_s1 xs
  | x == '2' = mod7_0 xs + mod7_s1 xs
  | x == '3' = mod7_1 xs + mod7_s1 xs
  | x == '4' = mod7_2 xs + mod7_s1 xs
  | x == '5' = mod7_3 xs + mod7_s1 xs
  | x == '6' = mod7_4 xs + mod7_s1 xs
  | x == '7' = mod7_5 xs + mod7_s1 xs
  | x == '8' = mod7_6 xs + mod7_s1 xs
  | x == '9' = mod7_0 xs + mod7_s1 xs
  | otherwise = 0

mod7_2 :: [Char] -> Int
mod7_2 [] = 0
mod7_2 (x:xs)
  | x == '0' = mod7_3 xs + mod7_s2 xs
  | x == '1' = mod7_4 xs + mod7_s2 xs
  | x == '2' = mod7_5 xs + mod7_s2 xs
  | x == '3' = mod7_6 xs + mod7_s2 xs
  | x == '4' = mod7_0 xs + mod7_s2 xs
  | x == '5' = mod7_1 xs + mod7_s2 xs
  | x == '6' = mod7_2 xs + mod7_s2 xs
  | x == '7' = mod7_3 xs + mod7_s2 xs
  | x == '8' = mod7_4 xs + mod7_s2 xs
  | x == '9' = mod7_5 xs + mod7_s2 xs
  | otherwise = 0

mod7_3 :: [Char] -> Int
mod7_3 [] = 0
mod7_3 (x:xs)
  | x == '0' = mod7_1 xs + mod7_s3 xs
  | x == '1' = mod7_2 xs + mod7_s3 xs
  | x == '2' = mod7_3 xs + mod7_s3 xs
  | x == '3' = mod7_4 xs + mod7_s3 xs
  | x == '4' = mod7_5 xs + mod7_s3 xs
  | x == '5' = mod7_6 xs + mod7_s3 xs
  | x == '6' = mod7_0 xs + mod7_s3 xs
  | x == '7' = mod7_1 xs + mod7_s3 xs
  | x == '8' = mod7_2 xs + mod7_s3 xs
  | x == '9' = mod7_3 xs + mod7_s3 xs
  | otherwise = 0

mod7_4 :: [Char] -> Int
mod7_4 [] = 0
mod7_4 (x:xs)
  | x == '0' = mod7_6 xs + mod7_s4 xs
  | x == '1' = mod7_0 xs + mod7_s4 xs
  | x == '2' = mod7_1 xs + mod7_s4 xs
  | x == '3' = mod7_2 xs + mod7_s4 xs
  | x == '4' = mod7_3 xs + mod7_s4 xs
  | x == '5' = mod7_4 xs + mod7_s4 xs
  | x == '6' = mod7_5 xs + mod7_s4 xs
  | x == '7' = mod7_6 xs + mod7_s4 xs
  | x == '8' = mod7_0 xs + mod7_s4 xs
  | x == '9' = mod7_1 xs + mod7_s4 xs
  | otherwise = 0

mod7_5 :: [Char] -> Int
mod7_5 [] = 0
mod7_5 (x:xs)
  | x == '0' = mod7_4 xs + mod7_s5 xs
  | x == '1' = mod7_5 xs + mod7_s5 xs
  | x == '2' = mod7_6 xs + mod7_s5 xs
  | x == '3' = mod7_0 xs + mod7_s5 xs
  | x == '4' = mod7_1 xs + mod7_s5 xs
  | x == '5' = mod7_2 xs + mod7_s5 xs
  | x == '6' = mod7_3 xs + mod7_s5 xs
  | x == '7' = mod7_4 xs + mod7_s5 xs
  | x == '8' = mod7_5 xs + mod7_s5 xs
  | x == '9' = mod7_6 xs + mod7_s5 xs
  | otherwise = 0

mod7_6 :: [Char] -> Int
mod7_6 [] = 0
mod7_6 (x:xs)
  | x == '0' = mod7_2 xs + mod7_s6 xs
  | x == '1' = mod7_3 xs + mod7_s6 xs
  | x == '2' = mod7_4 xs + mod7_s6 xs
  | x == '3' = mod7_5 xs + mod7_s6 xs
  | x == '4' = mod7_6 xs + mod7_s6 xs
  | x == '5' = mod7_0 xs + mod7_s6 xs
  | x == '6' = mod7_1 xs + mod7_s6 xs
  | x == '7' = mod7_2 xs + mod7_s6 xs
  | x == '8' = mod7_3 xs + mod7_s6 xs
  | x == '9' = mod7_4 xs + mod7_s6 xs
  | otherwise = 0

-- Here are all the state with one digit already removed

mod7_s0 :: [Char] -> Int
mod7_s0 [] = 1
mod7_s0 (x:xs)
  | x == '0' = mod7_s0 xs
  | x == '1' = mod7_s1 xs
  | x == '2' = mod7_s2 xs
  | x == '3' = mod7_s3 xs
  | x == '4' = mod7_s4 xs
  | x == '5' = mod7_s5 xs
  | x == '6' = mod7_s6 xs
  | x == '7' = mod7_s0 xs
  | x == '8' = mod7_s1 xs
  | x == '9' = mod7_s2 xs
  | otherwise = 0

mod7_s1 :: [Char] -> Int
mod7_s1 [] = 0
mod7_s1 (x:xs)
  | x == '0' = mod7_s5 xs
  | x == '1' = mod7_s6 xs
  | x == '2' = mod7_s0 xs
  | x == '3' = mod7_s1 xs
  | x == '4' = mod7_s2 xs
  | x == '5' = mod7_s3 xs
  | x == '6' = mod7_s4 xs
  | x == '7' = mod7_s5 xs
  | x == '8' = mod7_s6 xs
  | x == '9' = mod7_s0 xs
  | otherwise = 0

mod7_s2 :: [Char] -> Int
mod7_s2 [] = 0
mod7_s2 (x:xs)
  | x == '0' = mod7_s3 xs
  | x == '1' = mod7_s4 xs
  | x == '2' = mod7_s5 xs
  | x == '3' = mod7_s6 xs
  | x == '4' = mod7_s0 xs
  | x == '5' = mod7_s1 xs
  | x == '6' = mod7_s2 xs
  | x == '7' = mod7_s3 xs
  | x == '8' = mod7_s4 xs
  | x == '9' = mod7_s5 xs
  | otherwise = 0

mod7_s3 :: [Char] -> Int
mod7_s3 [] = 0
mod7_s3 (x:xs)
  | x == '0' = mod7_s1 xs
  | x == '1' = mod7_s2 xs
  | x == '2' = mod7_s3 xs
  | x == '3' = mod7_s4 xs
  | x == '4' = mod7_s5 xs
  | x == '5' = mod7_s6 xs
  | x == '6' = mod7_s0 xs
  | x == '7' = mod7_s1 xs
  | x == '8' = mod7_s2 xs
  | x == '9' = mod7_s3 xs
  | otherwise = 0

mod7_s4 :: [Char] -> Int
mod7_s4 [] = 0
mod7_s4 (x:xs)
  | x == '0' = mod7_s6 xs
  | x == '1' = mod7_s0 xs
  | x == '2' = mod7_s1 xs
  | x == '3' = mod7_s2 xs
  | x == '4' = mod7_s3 xs
  | x == '5' = mod7_s4 xs
  | x == '6' = mod7_s5 xs
  | x == '7' = mod7_s6 xs
  | x == '8' = mod7_s0 xs
  | x == '9' = mod7_s1 xs
  | otherwise = 0

mod7_s5 :: [Char] -> Int
mod7_s5 [] = 0
mod7_s5 (x:xs)
  | x == '0' = mod7_s4 xs
  | x == '1' = mod7_s5 xs
  | x == '2' = mod7_s6 xs
  | x == '3' = mod7_s0 xs
  | x == '4' = mod7_s1 xs
  | x == '5' = mod7_s2 xs
  | x == '6' = mod7_s3 xs
  | x == '7' = mod7_s4 xs
  | x == '8' = mod7_s5 xs
  | x == '9' = mod7_s6 xs
  | otherwise = 0

mod7_s6 :: [Char] -> Int
mod7_s6 [] = 0
mod7_s6 (x:xs)
  | x == '0' = mod7_s2 xs
  | x == '1' = mod7_s3 xs
  | x == '2' = mod7_s4 xs
  | x == '3' = mod7_s5 xs
  | x == '4' = mod7_s6 xs
  | x == '5' = mod7_s0 xs
  | x == '6' = mod7_s1 xs
  | x == '7' = mod7_s2 xs
  | x == '8' = mod7_s3 xs
  | x == '9' = mod7_s4 xs
  | otherwise = 0
  
-- Main Function
main :: IO()
main = do
  putStrLn "Near divisibility test"
  putStrLn "Enter a number backwards"
  input_rev_number <- getLine
  putStrLn $ show $ mod7 "112"
