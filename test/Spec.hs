import Test.HUnit

import Lib

main :: IO ()
main = runTestTT tests >> pure ()

test1 = TestCase (assertEqual "myStr matches " "Hello world" myStr)
tests = TestList [TestLabel "test1" test1]
