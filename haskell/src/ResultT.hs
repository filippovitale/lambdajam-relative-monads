module ResultT where
import Control.Applicative (Applicative(..), liftA2)
import Control.Monad (liftM)
import Control.Monad.Trans.Class (MonadTrans(..))
import Result

newtype ResultT m a = ResultT { runResultT :: m (Result a) }

instance Functor f => Functor (ResultT f) where
  fmap f (ResultT x) = ResultT $ fmap (fmap f) x
  
instance Applicative f => Applicative (ResultT f) where
  pure x = ResultT $ (pure . pure) x
  (ResultT f) <*> (ResultT x) = ResultT $ (liftA2 . liftA2) id f x

instance Monad m => Monad (ResultT m) where
  return = undefined
  (>>=)  = undefined
  
instance MonadTrans ResultT where
  lift = undefined

raiseE :: Monad m => String -> ResultT m a
raiseE = undefined

handleE :: Monad m => ResultT m a -> (String -> ResultT m a) -> ResultT m a
handleE = undefined
