module Main where

import Options.Applicative
import Data.Monoid

data Options = Options { fileIn   :: String
                       , mfileOut :: Maybe String }

options :: Parser Options
options = Options
  <$> strArgument (  metavar "INPUT"
                  <> help "input dataset")
  <*> (optional $ strOption (  short 'o'
                            <> metavar "OUTPUT"
                            <> help "output file"))

parseOpts :: IO Options
parseOpts = execParser $ info (helper <*> options)
                       $ fullDesc <> progDesc "A simple plotting program"


data DataType = DSV Char
  deriving Show

data PlotType
  = Density
  | WeightedDensity
  deriving Show

main :: IO ()
main = do
  opts <- parseOpts
  return ()
