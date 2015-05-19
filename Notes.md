Ideas for workshop
------------------



* Derive monad from RelMonad
* rMap equivalent for MonadResult
* RelResult 

Timing
------

* 2:30 hours total time
* 15 minutes to get set up, provide instructions, etc.
* 30 minutes on naive FS
* 45 minutes on RelMonad approach
* 45 minutes on MTL approach
* 15 minutes left



Fixes
-----

* Replace `rOnException` with a version that uses `rFlatMap` in Haskell.
* Add `rFlatMap` to `RelMonad`.
* Move `tMap` into an extensions exercise file.
* Tidy up `FS.hs`.
* Create `src/help/RelMonad.hs`
