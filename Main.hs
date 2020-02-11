
module Main where

import Control.Applicative
import System.IO
import Happstack.Server

main = do
    let conf = nullConf { port = 80 }
    socket <- bindPort conf
    simpleHTTPWithSocket socket conf $ handler

handler = (dir "a" $ ok "a") <|> (dir "b" $ ok "b")