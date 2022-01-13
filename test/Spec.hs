import Test.Hspec

import Lib

  -- We can run individual tests
  -- Example
  -- stack test --test-arguments='--match "myStr matches"'
main :: IO ()
main = hspec $ do
  describe "myStr" $ do
    it "myStr matches \"Hello world\"" $ do
      myStr `shouldBe` "Hello world"
  describe "test 1" $ do
    it "always passes" $ do
      1 `shouldBe` 1
  describe "test 2" $ do
    it "always fails" $ do
      1 `shouldBe` 2
