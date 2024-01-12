{- This file was auto-generated from utxorpc/sync/v1/sync.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Utxorpc.Sync.V1.Sync (
        ChainSyncService(..), AnyChainBlock(), AnyChainBlock'Chain(..),
        _AnyChainBlock'Raw, _AnyChainBlock'Cardano, BlockRef(),
        DumpHistoryRequest(), DumpHistoryResponse(), FetchBlockRequest(),
        FetchBlockResponse(), FollowTipRequest(), FollowTipResponse(),
        FollowTipResponse'Action(..), _FollowTipResponse'Apply,
        _FollowTipResponse'Undo, _FollowTipResponse'Reset
    ) where
import qualified Data.ProtoLens.Runtime.Control.DeepSeq as Control.DeepSeq
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Prism as Data.ProtoLens.Prism
import qualified Data.ProtoLens.Runtime.Prelude as Prelude
import qualified Data.ProtoLens.Runtime.Data.Int as Data.Int
import qualified Data.ProtoLens.Runtime.Data.Monoid as Data.Monoid
import qualified Data.ProtoLens.Runtime.Data.Word as Data.Word
import qualified Data.ProtoLens.Runtime.Data.ProtoLens as Data.ProtoLens
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Encoding.Bytes as Data.ProtoLens.Encoding.Bytes
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Encoding.Growing as Data.ProtoLens.Encoding.Growing
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Encoding.Parser.Unsafe as Data.ProtoLens.Encoding.Parser.Unsafe
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Encoding.Wire as Data.ProtoLens.Encoding.Wire
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Field as Data.ProtoLens.Field
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Message.Enum as Data.ProtoLens.Message.Enum
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Service.Types as Data.ProtoLens.Service.Types
import qualified Data.ProtoLens.Runtime.Lens.Family2 as Lens.Family2
import qualified Data.ProtoLens.Runtime.Lens.Family2.Unchecked as Lens.Family2.Unchecked
import qualified Data.ProtoLens.Runtime.Data.Text as Data.Text
import qualified Data.ProtoLens.Runtime.Data.Map as Data.Map
import qualified Data.ProtoLens.Runtime.Data.ByteString as Data.ByteString
import qualified Data.ProtoLens.Runtime.Data.ByteString.Char8 as Data.ByteString.Char8
import qualified Data.ProtoLens.Runtime.Data.Text.Encoding as Data.Text.Encoding
import qualified Data.ProtoLens.Runtime.Data.Vector as Data.Vector
import qualified Data.ProtoLens.Runtime.Data.Vector.Generic as Data.Vector.Generic
import qualified Data.ProtoLens.Runtime.Data.Vector.Unboxed as Data.Vector.Unboxed
import qualified Data.ProtoLens.Runtime.Text.Read as Text.Read
import qualified Proto.Google.Protobuf.FieldMask
import qualified Proto.Utxorpc.Cardano.V1.Cardano
{- | Fields :
     
         * 'Proto.Utxorpc.Sync.V1.Sync_Fields.maybe'chain' @:: Lens' AnyChainBlock (Prelude.Maybe AnyChainBlock'Chain)@
         * 'Proto.Utxorpc.Sync.V1.Sync_Fields.maybe'raw' @:: Lens' AnyChainBlock (Prelude.Maybe Data.ByteString.ByteString)@
         * 'Proto.Utxorpc.Sync.V1.Sync_Fields.raw' @:: Lens' AnyChainBlock Data.ByteString.ByteString@
         * 'Proto.Utxorpc.Sync.V1.Sync_Fields.maybe'cardano' @:: Lens' AnyChainBlock (Prelude.Maybe Proto.Utxorpc.Cardano.V1.Cardano.Block)@
         * 'Proto.Utxorpc.Sync.V1.Sync_Fields.cardano' @:: Lens' AnyChainBlock Proto.Utxorpc.Cardano.V1.Cardano.Block@ -}
data AnyChainBlock
  = AnyChainBlock'_constructor {_AnyChainBlock'chain :: !(Prelude.Maybe AnyChainBlock'Chain),
                                _AnyChainBlock'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AnyChainBlock where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data AnyChainBlock'Chain
  = AnyChainBlock'Raw !Data.ByteString.ByteString |
    AnyChainBlock'Cardano !Proto.Utxorpc.Cardano.V1.Cardano.Block
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField AnyChainBlock "maybe'chain" (Prelude.Maybe AnyChainBlock'Chain) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AnyChainBlock'chain
           (\ x__ y__ -> x__ {_AnyChainBlock'chain = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AnyChainBlock "maybe'raw" (Prelude.Maybe Data.ByteString.ByteString) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AnyChainBlock'chain
           (\ x__ y__ -> x__ {_AnyChainBlock'chain = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (AnyChainBlock'Raw x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap AnyChainBlock'Raw y__))
instance Data.ProtoLens.Field.HasField AnyChainBlock "raw" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AnyChainBlock'chain
           (\ x__ y__ -> x__ {_AnyChainBlock'chain = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (AnyChainBlock'Raw x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap AnyChainBlock'Raw y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField AnyChainBlock "maybe'cardano" (Prelude.Maybe Proto.Utxorpc.Cardano.V1.Cardano.Block) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AnyChainBlock'chain
           (\ x__ y__ -> x__ {_AnyChainBlock'chain = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (AnyChainBlock'Cardano x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap AnyChainBlock'Cardano y__))
instance Data.ProtoLens.Field.HasField AnyChainBlock "cardano" Proto.Utxorpc.Cardano.V1.Cardano.Block where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AnyChainBlock'chain
           (\ x__ y__ -> x__ {_AnyChainBlock'chain = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (AnyChainBlock'Cardano x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap AnyChainBlock'Cardano y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message AnyChainBlock where
  messageName _ = Data.Text.pack "utxorpc.sync.v1.AnyChainBlock"
  packedMessageDescriptor _
    = "\n\
      \\rAnyChainBlock\DC2\DC2\n\
      \\ETXraw\CAN\SOH \SOH(\fH\NULR\ETXraw\DC25\n\
      \\acardano\CAN\STX \SOH(\v2\EM.utxorpc.cardano.v1.BlockH\NULR\acardanoB\a\n\
      \\ENQchain"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        raw__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "raw"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'raw")) ::
              Data.ProtoLens.FieldDescriptor AnyChainBlock
        cardano__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cardano"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Utxorpc.Cardano.V1.Cardano.Block)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'cardano")) ::
              Data.ProtoLens.FieldDescriptor AnyChainBlock
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, raw__field_descriptor),
           (Data.ProtoLens.Tag 2, cardano__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _AnyChainBlock'_unknownFields
        (\ x__ y__ -> x__ {_AnyChainBlock'_unknownFields = y__})
  defMessage
    = AnyChainBlock'_constructor
        {_AnyChainBlock'chain = Prelude.Nothing,
         _AnyChainBlock'_unknownFields = []}
  parseMessage
    = let
        loop ::
          AnyChainBlock -> Data.ProtoLens.Encoding.Bytes.Parser AnyChainBlock
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "raw"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"raw") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "cardano"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"cardano") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "AnyChainBlock"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'chain") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (AnyChainBlock'Raw v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((\ bs
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                   (Prelude.fromIntegral (Data.ByteString.length bs)))
                                (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          v)
                (Prelude.Just (AnyChainBlock'Cardano v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData AnyChainBlock where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_AnyChainBlock'_unknownFields x__)
             (Control.DeepSeq.deepseq (_AnyChainBlock'chain x__) ())
instance Control.DeepSeq.NFData AnyChainBlock'Chain where
  rnf (AnyChainBlock'Raw x__) = Control.DeepSeq.rnf x__
  rnf (AnyChainBlock'Cardano x__) = Control.DeepSeq.rnf x__
_AnyChainBlock'Raw ::
  Data.ProtoLens.Prism.Prism' AnyChainBlock'Chain Data.ByteString.ByteString
_AnyChainBlock'Raw
  = Data.ProtoLens.Prism.prism'
      AnyChainBlock'Raw
      (\ p__
         -> case p__ of
              (AnyChainBlock'Raw p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_AnyChainBlock'Cardano ::
  Data.ProtoLens.Prism.Prism' AnyChainBlock'Chain Proto.Utxorpc.Cardano.V1.Cardano.Block
_AnyChainBlock'Cardano
  = Data.ProtoLens.Prism.prism'
      AnyChainBlock'Cardano
      (\ p__
         -> case p__ of
              (AnyChainBlock'Cardano p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Utxorpc.Sync.V1.Sync_Fields.index' @:: Lens' BlockRef Data.Word.Word64@
         * 'Proto.Utxorpc.Sync.V1.Sync_Fields.hash' @:: Lens' BlockRef Data.ByteString.ByteString@ -}
data BlockRef
  = BlockRef'_constructor {_BlockRef'index :: !Data.Word.Word64,
                           _BlockRef'hash :: !Data.ByteString.ByteString,
                           _BlockRef'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show BlockRef where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField BlockRef "index" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockRef'index (\ x__ y__ -> x__ {_BlockRef'index = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BlockRef "hash" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockRef'hash (\ x__ y__ -> x__ {_BlockRef'hash = y__}))
        Prelude.id
instance Data.ProtoLens.Message BlockRef where
  messageName _ = Data.Text.pack "utxorpc.sync.v1.BlockRef"
  packedMessageDescriptor _
    = "\n\
      \\bBlockRef\DC2\DC4\n\
      \\ENQindex\CAN\SOH \SOH(\EOTR\ENQindex\DC2\DC2\n\
      \\EOThash\CAN\STX \SOH(\fR\EOThash"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        index__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "index"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"index")) ::
              Data.ProtoLens.FieldDescriptor BlockRef
        hash__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "hash"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"hash")) ::
              Data.ProtoLens.FieldDescriptor BlockRef
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, index__field_descriptor),
           (Data.ProtoLens.Tag 2, hash__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _BlockRef'_unknownFields
        (\ x__ y__ -> x__ {_BlockRef'_unknownFields = y__})
  defMessage
    = BlockRef'_constructor
        {_BlockRef'index = Data.ProtoLens.fieldDefault,
         _BlockRef'hash = Data.ProtoLens.fieldDefault,
         _BlockRef'_unknownFields = []}
  parseMessage
    = let
        loop :: BlockRef -> Data.ProtoLens.Encoding.Bytes.Parser BlockRef
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "index"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"index") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "hash"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"hash") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "BlockRef"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"index") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"hash") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                         ((\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                            _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData BlockRef where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_BlockRef'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_BlockRef'index x__)
                (Control.DeepSeq.deepseq (_BlockRef'hash x__) ()))
{- | Fields :
     
         * 'Proto.Utxorpc.Sync.V1.Sync_Fields.startToken' @:: Lens' DumpHistoryRequest BlockRef@
         * 'Proto.Utxorpc.Sync.V1.Sync_Fields.maybe'startToken' @:: Lens' DumpHistoryRequest (Prelude.Maybe BlockRef)@
         * 'Proto.Utxorpc.Sync.V1.Sync_Fields.maxItems' @:: Lens' DumpHistoryRequest Data.Word.Word32@
         * 'Proto.Utxorpc.Sync.V1.Sync_Fields.fieldMask' @:: Lens' DumpHistoryRequest Proto.Google.Protobuf.FieldMask.FieldMask@
         * 'Proto.Utxorpc.Sync.V1.Sync_Fields.maybe'fieldMask' @:: Lens' DumpHistoryRequest (Prelude.Maybe Proto.Google.Protobuf.FieldMask.FieldMask)@ -}
data DumpHistoryRequest
  = DumpHistoryRequest'_constructor {_DumpHistoryRequest'startToken :: !(Prelude.Maybe BlockRef),
                                     _DumpHistoryRequest'maxItems :: !Data.Word.Word32,
                                     _DumpHistoryRequest'fieldMask :: !(Prelude.Maybe Proto.Google.Protobuf.FieldMask.FieldMask),
                                     _DumpHistoryRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DumpHistoryRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField DumpHistoryRequest "startToken" BlockRef where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DumpHistoryRequest'startToken
           (\ x__ y__ -> x__ {_DumpHistoryRequest'startToken = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField DumpHistoryRequest "maybe'startToken" (Prelude.Maybe BlockRef) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DumpHistoryRequest'startToken
           (\ x__ y__ -> x__ {_DumpHistoryRequest'startToken = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DumpHistoryRequest "maxItems" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DumpHistoryRequest'maxItems
           (\ x__ y__ -> x__ {_DumpHistoryRequest'maxItems = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DumpHistoryRequest "fieldMask" Proto.Google.Protobuf.FieldMask.FieldMask where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DumpHistoryRequest'fieldMask
           (\ x__ y__ -> x__ {_DumpHistoryRequest'fieldMask = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField DumpHistoryRequest "maybe'fieldMask" (Prelude.Maybe Proto.Google.Protobuf.FieldMask.FieldMask) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DumpHistoryRequest'fieldMask
           (\ x__ y__ -> x__ {_DumpHistoryRequest'fieldMask = y__}))
        Prelude.id
instance Data.ProtoLens.Message DumpHistoryRequest where
  messageName _ = Data.Text.pack "utxorpc.sync.v1.DumpHistoryRequest"
  packedMessageDescriptor _
    = "\n\
      \\DC2DumpHistoryRequest\DC2:\n\
      \\vstart_token\CAN\STX \SOH(\v2\EM.utxorpc.sync.v1.BlockRefR\n\
      \startToken\DC2\ESC\n\
      \\tmax_items\CAN\ETX \SOH(\rR\bmaxItems\DC29\n\
      \\n\
      \field_mask\CAN\EOT \SOH(\v2\SUB.google.protobuf.FieldMaskR\tfieldMask"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        startToken__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "start_token"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor BlockRef)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'startToken")) ::
              Data.ProtoLens.FieldDescriptor DumpHistoryRequest
        maxItems__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "max_items"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"maxItems")) ::
              Data.ProtoLens.FieldDescriptor DumpHistoryRequest
        fieldMask__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "field_mask"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.FieldMask.FieldMask)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'fieldMask")) ::
              Data.ProtoLens.FieldDescriptor DumpHistoryRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 2, startToken__field_descriptor),
           (Data.ProtoLens.Tag 3, maxItems__field_descriptor),
           (Data.ProtoLens.Tag 4, fieldMask__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _DumpHistoryRequest'_unknownFields
        (\ x__ y__ -> x__ {_DumpHistoryRequest'_unknownFields = y__})
  defMessage
    = DumpHistoryRequest'_constructor
        {_DumpHistoryRequest'startToken = Prelude.Nothing,
         _DumpHistoryRequest'maxItems = Data.ProtoLens.fieldDefault,
         _DumpHistoryRequest'fieldMask = Prelude.Nothing,
         _DumpHistoryRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          DumpHistoryRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser DumpHistoryRequest
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "start_token"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"startToken") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "max_items"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"maxItems") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "field_mask"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"fieldMask") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "DumpHistoryRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'startToken") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"maxItems") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'fieldMask") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                             ((Prelude..)
                                (\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                Data.ProtoLens.encodeMessage _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData DumpHistoryRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_DumpHistoryRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_DumpHistoryRequest'startToken x__)
                (Control.DeepSeq.deepseq
                   (_DumpHistoryRequest'maxItems x__)
                   (Control.DeepSeq.deepseq (_DumpHistoryRequest'fieldMask x__) ())))
{- | Fields :
     
         * 'Proto.Utxorpc.Sync.V1.Sync_Fields.block' @:: Lens' DumpHistoryResponse [AnyChainBlock]@
         * 'Proto.Utxorpc.Sync.V1.Sync_Fields.vec'block' @:: Lens' DumpHistoryResponse (Data.Vector.Vector AnyChainBlock)@
         * 'Proto.Utxorpc.Sync.V1.Sync_Fields.nextToken' @:: Lens' DumpHistoryResponse BlockRef@
         * 'Proto.Utxorpc.Sync.V1.Sync_Fields.maybe'nextToken' @:: Lens' DumpHistoryResponse (Prelude.Maybe BlockRef)@ -}
data DumpHistoryResponse
  = DumpHistoryResponse'_constructor {_DumpHistoryResponse'block :: !(Data.Vector.Vector AnyChainBlock),
                                      _DumpHistoryResponse'nextToken :: !(Prelude.Maybe BlockRef),
                                      _DumpHistoryResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DumpHistoryResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField DumpHistoryResponse "block" [AnyChainBlock] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DumpHistoryResponse'block
           (\ x__ y__ -> x__ {_DumpHistoryResponse'block = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField DumpHistoryResponse "vec'block" (Data.Vector.Vector AnyChainBlock) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DumpHistoryResponse'block
           (\ x__ y__ -> x__ {_DumpHistoryResponse'block = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DumpHistoryResponse "nextToken" BlockRef where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DumpHistoryResponse'nextToken
           (\ x__ y__ -> x__ {_DumpHistoryResponse'nextToken = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField DumpHistoryResponse "maybe'nextToken" (Prelude.Maybe BlockRef) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DumpHistoryResponse'nextToken
           (\ x__ y__ -> x__ {_DumpHistoryResponse'nextToken = y__}))
        Prelude.id
instance Data.ProtoLens.Message DumpHistoryResponse where
  messageName _
    = Data.Text.pack "utxorpc.sync.v1.DumpHistoryResponse"
  packedMessageDescriptor _
    = "\n\
      \\DC3DumpHistoryResponse\DC24\n\
      \\ENQblock\CAN\SOH \ETX(\v2\RS.utxorpc.sync.v1.AnyChainBlockR\ENQblock\DC28\n\
      \\n\
      \next_token\CAN\STX \SOH(\v2\EM.utxorpc.sync.v1.BlockRefR\tnextToken"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        block__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "block"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor AnyChainBlock)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"block")) ::
              Data.ProtoLens.FieldDescriptor DumpHistoryResponse
        nextToken__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "next_token"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor BlockRef)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'nextToken")) ::
              Data.ProtoLens.FieldDescriptor DumpHistoryResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, block__field_descriptor),
           (Data.ProtoLens.Tag 2, nextToken__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _DumpHistoryResponse'_unknownFields
        (\ x__ y__ -> x__ {_DumpHistoryResponse'_unknownFields = y__})
  defMessage
    = DumpHistoryResponse'_constructor
        {_DumpHistoryResponse'block = Data.Vector.Generic.empty,
         _DumpHistoryResponse'nextToken = Prelude.Nothing,
         _DumpHistoryResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          DumpHistoryResponse
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld AnyChainBlock
             -> Data.ProtoLens.Encoding.Bytes.Parser DumpHistoryResponse
        loop x mutable'block
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'block <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'block)
                      (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t)
                           (Lens.Family2.set
                              (Data.ProtoLens.Field.field @"vec'block") frozen'block x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "block"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'block y)
                                loop x v
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "next_token"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"nextToken") y x)
                                  mutable'block
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'block
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'block <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                 Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'block)
          "DumpHistoryResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                (\ _v
                   -> (Data.Monoid.<>)
                        (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                        ((Prelude..)
                           (\ bs
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                      (Prelude.fromIntegral (Data.ByteString.length bs)))
                                   (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                           Data.ProtoLens.encodeMessage _v))
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'block") _x))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'nextToken") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData DumpHistoryResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_DumpHistoryResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_DumpHistoryResponse'block x__)
                (Control.DeepSeq.deepseq (_DumpHistoryResponse'nextToken x__) ()))
{- | Fields :
     
         * 'Proto.Utxorpc.Sync.V1.Sync_Fields.ref' @:: Lens' FetchBlockRequest [BlockRef]@
         * 'Proto.Utxorpc.Sync.V1.Sync_Fields.vec'ref' @:: Lens' FetchBlockRequest (Data.Vector.Vector BlockRef)@
         * 'Proto.Utxorpc.Sync.V1.Sync_Fields.fieldMask' @:: Lens' FetchBlockRequest Proto.Google.Protobuf.FieldMask.FieldMask@
         * 'Proto.Utxorpc.Sync.V1.Sync_Fields.maybe'fieldMask' @:: Lens' FetchBlockRequest (Prelude.Maybe Proto.Google.Protobuf.FieldMask.FieldMask)@ -}
data FetchBlockRequest
  = FetchBlockRequest'_constructor {_FetchBlockRequest'ref :: !(Data.Vector.Vector BlockRef),
                                    _FetchBlockRequest'fieldMask :: !(Prelude.Maybe Proto.Google.Protobuf.FieldMask.FieldMask),
                                    _FetchBlockRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show FetchBlockRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField FetchBlockRequest "ref" [BlockRef] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FetchBlockRequest'ref
           (\ x__ y__ -> x__ {_FetchBlockRequest'ref = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField FetchBlockRequest "vec'ref" (Data.Vector.Vector BlockRef) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FetchBlockRequest'ref
           (\ x__ y__ -> x__ {_FetchBlockRequest'ref = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FetchBlockRequest "fieldMask" Proto.Google.Protobuf.FieldMask.FieldMask where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FetchBlockRequest'fieldMask
           (\ x__ y__ -> x__ {_FetchBlockRequest'fieldMask = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField FetchBlockRequest "maybe'fieldMask" (Prelude.Maybe Proto.Google.Protobuf.FieldMask.FieldMask) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FetchBlockRequest'fieldMask
           (\ x__ y__ -> x__ {_FetchBlockRequest'fieldMask = y__}))
        Prelude.id
instance Data.ProtoLens.Message FetchBlockRequest where
  messageName _ = Data.Text.pack "utxorpc.sync.v1.FetchBlockRequest"
  packedMessageDescriptor _
    = "\n\
      \\DC1FetchBlockRequest\DC2+\n\
      \\ETXref\CAN\SOH \ETX(\v2\EM.utxorpc.sync.v1.BlockRefR\ETXref\DC29\n\
      \\n\
      \field_mask\CAN\STX \SOH(\v2\SUB.google.protobuf.FieldMaskR\tfieldMask"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        ref__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ref"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor BlockRef)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"ref")) ::
              Data.ProtoLens.FieldDescriptor FetchBlockRequest
        fieldMask__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "field_mask"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.FieldMask.FieldMask)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'fieldMask")) ::
              Data.ProtoLens.FieldDescriptor FetchBlockRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, ref__field_descriptor),
           (Data.ProtoLens.Tag 2, fieldMask__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _FetchBlockRequest'_unknownFields
        (\ x__ y__ -> x__ {_FetchBlockRequest'_unknownFields = y__})
  defMessage
    = FetchBlockRequest'_constructor
        {_FetchBlockRequest'ref = Data.Vector.Generic.empty,
         _FetchBlockRequest'fieldMask = Prelude.Nothing,
         _FetchBlockRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          FetchBlockRequest
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld BlockRef
             -> Data.ProtoLens.Encoding.Bytes.Parser FetchBlockRequest
        loop x mutable'ref
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'ref <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'ref)
                      (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t)
                           (Lens.Family2.set
                              (Data.ProtoLens.Field.field @"vec'ref") frozen'ref x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "ref"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'ref y)
                                loop x v
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "field_mask"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"fieldMask") y x)
                                  mutable'ref
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'ref
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'ref <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                               Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'ref)
          "FetchBlockRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                (\ _v
                   -> (Data.Monoid.<>)
                        (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                        ((Prelude..)
                           (\ bs
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                      (Prelude.fromIntegral (Data.ByteString.length bs)))
                                   (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                           Data.ProtoLens.encodeMessage _v))
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'ref") _x))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'fieldMask") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData FetchBlockRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_FetchBlockRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_FetchBlockRequest'ref x__)
                (Control.DeepSeq.deepseq (_FetchBlockRequest'fieldMask x__) ()))
{- | Fields :
     
         * 'Proto.Utxorpc.Sync.V1.Sync_Fields.block' @:: Lens' FetchBlockResponse [AnyChainBlock]@
         * 'Proto.Utxorpc.Sync.V1.Sync_Fields.vec'block' @:: Lens' FetchBlockResponse (Data.Vector.Vector AnyChainBlock)@ -}
data FetchBlockResponse
  = FetchBlockResponse'_constructor {_FetchBlockResponse'block :: !(Data.Vector.Vector AnyChainBlock),
                                     _FetchBlockResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show FetchBlockResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField FetchBlockResponse "block" [AnyChainBlock] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FetchBlockResponse'block
           (\ x__ y__ -> x__ {_FetchBlockResponse'block = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField FetchBlockResponse "vec'block" (Data.Vector.Vector AnyChainBlock) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FetchBlockResponse'block
           (\ x__ y__ -> x__ {_FetchBlockResponse'block = y__}))
        Prelude.id
instance Data.ProtoLens.Message FetchBlockResponse where
  messageName _ = Data.Text.pack "utxorpc.sync.v1.FetchBlockResponse"
  packedMessageDescriptor _
    = "\n\
      \\DC2FetchBlockResponse\DC24\n\
      \\ENQblock\CAN\SOH \ETX(\v2\RS.utxorpc.sync.v1.AnyChainBlockR\ENQblock"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        block__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "block"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor AnyChainBlock)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"block")) ::
              Data.ProtoLens.FieldDescriptor FetchBlockResponse
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, block__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _FetchBlockResponse'_unknownFields
        (\ x__ y__ -> x__ {_FetchBlockResponse'_unknownFields = y__})
  defMessage
    = FetchBlockResponse'_constructor
        {_FetchBlockResponse'block = Data.Vector.Generic.empty,
         _FetchBlockResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          FetchBlockResponse
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld AnyChainBlock
             -> Data.ProtoLens.Encoding.Bytes.Parser FetchBlockResponse
        loop x mutable'block
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'block <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'block)
                      (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t)
                           (Lens.Family2.set
                              (Data.ProtoLens.Field.field @"vec'block") frozen'block x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "block"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'block y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'block
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'block <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                 Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'block)
          "FetchBlockResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                (\ _v
                   -> (Data.Monoid.<>)
                        (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                        ((Prelude..)
                           (\ bs
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                      (Prelude.fromIntegral (Data.ByteString.length bs)))
                                   (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                           Data.ProtoLens.encodeMessage _v))
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'block") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData FetchBlockResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_FetchBlockResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq (_FetchBlockResponse'block x__) ())
{- | Fields :
     
         * 'Proto.Utxorpc.Sync.V1.Sync_Fields.intersect' @:: Lens' FollowTipRequest [BlockRef]@
         * 'Proto.Utxorpc.Sync.V1.Sync_Fields.vec'intersect' @:: Lens' FollowTipRequest (Data.Vector.Vector BlockRef)@ -}
data FollowTipRequest
  = FollowTipRequest'_constructor {_FollowTipRequest'intersect :: !(Data.Vector.Vector BlockRef),
                                   _FollowTipRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show FollowTipRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField FollowTipRequest "intersect" [BlockRef] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FollowTipRequest'intersect
           (\ x__ y__ -> x__ {_FollowTipRequest'intersect = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField FollowTipRequest "vec'intersect" (Data.Vector.Vector BlockRef) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FollowTipRequest'intersect
           (\ x__ y__ -> x__ {_FollowTipRequest'intersect = y__}))
        Prelude.id
instance Data.ProtoLens.Message FollowTipRequest where
  messageName _ = Data.Text.pack "utxorpc.sync.v1.FollowTipRequest"
  packedMessageDescriptor _
    = "\n\
      \\DLEFollowTipRequest\DC27\n\
      \\tintersect\CAN\SOH \ETX(\v2\EM.utxorpc.sync.v1.BlockRefR\tintersect"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        intersect__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "intersect"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor BlockRef)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"intersect")) ::
              Data.ProtoLens.FieldDescriptor FollowTipRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, intersect__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _FollowTipRequest'_unknownFields
        (\ x__ y__ -> x__ {_FollowTipRequest'_unknownFields = y__})
  defMessage
    = FollowTipRequest'_constructor
        {_FollowTipRequest'intersect = Data.Vector.Generic.empty,
         _FollowTipRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          FollowTipRequest
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld BlockRef
             -> Data.ProtoLens.Encoding.Bytes.Parser FollowTipRequest
        loop x mutable'intersect
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'intersect <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                            (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                               mutable'intersect)
                      (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t)
                           (Lens.Family2.set
                              (Data.ProtoLens.Field.field @"vec'intersect") frozen'intersect x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "intersect"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'intersect y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'intersect
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'intersect <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                     Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'intersect)
          "FollowTipRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                (\ _v
                   -> (Data.Monoid.<>)
                        (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                        ((Prelude..)
                           (\ bs
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                      (Prelude.fromIntegral (Data.ByteString.length bs)))
                                   (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                           Data.ProtoLens.encodeMessage _v))
                (Lens.Family2.view
                   (Data.ProtoLens.Field.field @"vec'intersect") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData FollowTipRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_FollowTipRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq (_FollowTipRequest'intersect x__) ())
{- | Fields :
     
         * 'Proto.Utxorpc.Sync.V1.Sync_Fields.maybe'action' @:: Lens' FollowTipResponse (Prelude.Maybe FollowTipResponse'Action)@
         * 'Proto.Utxorpc.Sync.V1.Sync_Fields.maybe'apply' @:: Lens' FollowTipResponse (Prelude.Maybe AnyChainBlock)@
         * 'Proto.Utxorpc.Sync.V1.Sync_Fields.apply' @:: Lens' FollowTipResponse AnyChainBlock@
         * 'Proto.Utxorpc.Sync.V1.Sync_Fields.maybe'undo' @:: Lens' FollowTipResponse (Prelude.Maybe AnyChainBlock)@
         * 'Proto.Utxorpc.Sync.V1.Sync_Fields.undo' @:: Lens' FollowTipResponse AnyChainBlock@
         * 'Proto.Utxorpc.Sync.V1.Sync_Fields.maybe'reset' @:: Lens' FollowTipResponse (Prelude.Maybe BlockRef)@
         * 'Proto.Utxorpc.Sync.V1.Sync_Fields.reset' @:: Lens' FollowTipResponse BlockRef@ -}
data FollowTipResponse
  = FollowTipResponse'_constructor {_FollowTipResponse'action :: !(Prelude.Maybe FollowTipResponse'Action),
                                    _FollowTipResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show FollowTipResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data FollowTipResponse'Action
  = FollowTipResponse'Apply !AnyChainBlock |
    FollowTipResponse'Undo !AnyChainBlock |
    FollowTipResponse'Reset !BlockRef
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField FollowTipResponse "maybe'action" (Prelude.Maybe FollowTipResponse'Action) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FollowTipResponse'action
           (\ x__ y__ -> x__ {_FollowTipResponse'action = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FollowTipResponse "maybe'apply" (Prelude.Maybe AnyChainBlock) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FollowTipResponse'action
           (\ x__ y__ -> x__ {_FollowTipResponse'action = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (FollowTipResponse'Apply x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap FollowTipResponse'Apply y__))
instance Data.ProtoLens.Field.HasField FollowTipResponse "apply" AnyChainBlock where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FollowTipResponse'action
           (\ x__ y__ -> x__ {_FollowTipResponse'action = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (FollowTipResponse'Apply x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap FollowTipResponse'Apply y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField FollowTipResponse "maybe'undo" (Prelude.Maybe AnyChainBlock) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FollowTipResponse'action
           (\ x__ y__ -> x__ {_FollowTipResponse'action = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (FollowTipResponse'Undo x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap FollowTipResponse'Undo y__))
instance Data.ProtoLens.Field.HasField FollowTipResponse "undo" AnyChainBlock where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FollowTipResponse'action
           (\ x__ y__ -> x__ {_FollowTipResponse'action = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (FollowTipResponse'Undo x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap FollowTipResponse'Undo y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField FollowTipResponse "maybe'reset" (Prelude.Maybe BlockRef) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FollowTipResponse'action
           (\ x__ y__ -> x__ {_FollowTipResponse'action = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (FollowTipResponse'Reset x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap FollowTipResponse'Reset y__))
instance Data.ProtoLens.Field.HasField FollowTipResponse "reset" BlockRef where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FollowTipResponse'action
           (\ x__ y__ -> x__ {_FollowTipResponse'action = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (FollowTipResponse'Reset x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap FollowTipResponse'Reset y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message FollowTipResponse where
  messageName _ = Data.Text.pack "utxorpc.sync.v1.FollowTipResponse"
  packedMessageDescriptor _
    = "\n\
      \\DC1FollowTipResponse\DC26\n\
      \\ENQapply\CAN\SOH \SOH(\v2\RS.utxorpc.sync.v1.AnyChainBlockH\NULR\ENQapply\DC24\n\
      \\EOTundo\CAN\STX \SOH(\v2\RS.utxorpc.sync.v1.AnyChainBlockH\NULR\EOTundo\DC21\n\
      \\ENQreset\CAN\ETX \SOH(\v2\EM.utxorpc.sync.v1.BlockRefH\NULR\ENQresetB\b\n\
      \\ACKaction"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        apply__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "apply"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor AnyChainBlock)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'apply")) ::
              Data.ProtoLens.FieldDescriptor FollowTipResponse
        undo__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "undo"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor AnyChainBlock)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'undo")) ::
              Data.ProtoLens.FieldDescriptor FollowTipResponse
        reset__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "reset"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor BlockRef)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'reset")) ::
              Data.ProtoLens.FieldDescriptor FollowTipResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, apply__field_descriptor),
           (Data.ProtoLens.Tag 2, undo__field_descriptor),
           (Data.ProtoLens.Tag 3, reset__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _FollowTipResponse'_unknownFields
        (\ x__ y__ -> x__ {_FollowTipResponse'_unknownFields = y__})
  defMessage
    = FollowTipResponse'_constructor
        {_FollowTipResponse'action = Prelude.Nothing,
         _FollowTipResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          FollowTipResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser FollowTipResponse
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "apply"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"apply") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "undo"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"undo") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "reset"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"reset") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "FollowTipResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'action") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (FollowTipResponse'Apply v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (FollowTipResponse'Undo v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (FollowTipResponse'Reset v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData FollowTipResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_FollowTipResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq (_FollowTipResponse'action x__) ())
instance Control.DeepSeq.NFData FollowTipResponse'Action where
  rnf (FollowTipResponse'Apply x__) = Control.DeepSeq.rnf x__
  rnf (FollowTipResponse'Undo x__) = Control.DeepSeq.rnf x__
  rnf (FollowTipResponse'Reset x__) = Control.DeepSeq.rnf x__
_FollowTipResponse'Apply ::
  Data.ProtoLens.Prism.Prism' FollowTipResponse'Action AnyChainBlock
_FollowTipResponse'Apply
  = Data.ProtoLens.Prism.prism'
      FollowTipResponse'Apply
      (\ p__
         -> case p__ of
              (FollowTipResponse'Apply p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_FollowTipResponse'Undo ::
  Data.ProtoLens.Prism.Prism' FollowTipResponse'Action AnyChainBlock
_FollowTipResponse'Undo
  = Data.ProtoLens.Prism.prism'
      FollowTipResponse'Undo
      (\ p__
         -> case p__ of
              (FollowTipResponse'Undo p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_FollowTipResponse'Reset ::
  Data.ProtoLens.Prism.Prism' FollowTipResponse'Action BlockRef
_FollowTipResponse'Reset
  = Data.ProtoLens.Prism.prism'
      FollowTipResponse'Reset
      (\ p__
         -> case p__ of
              (FollowTipResponse'Reset p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
data ChainSyncService = ChainSyncService {}
instance Data.ProtoLens.Service.Types.Service ChainSyncService where
  type ServiceName ChainSyncService = "ChainSyncService"
  type ServicePackage ChainSyncService = "utxorpc.sync.v1"
  type ServiceMethods ChainSyncService = '["dumpHistory",
                                           "fetchBlock",
                                           "followTip"]
  packedServiceDescriptor _
    = "\n\
      \\DLEChainSyncService\DC2U\n\
      \\n\
      \FetchBlock\DC2\".utxorpc.sync.v1.FetchBlockRequest\SUB#.utxorpc.sync.v1.FetchBlockResponse\DC2X\n\
      \\vDumpHistory\DC2#.utxorpc.sync.v1.DumpHistoryRequest\SUB$.utxorpc.sync.v1.DumpHistoryResponse\DC2T\n\
      \\tFollowTip\DC2!.utxorpc.sync.v1.FollowTipRequest\SUB\".utxorpc.sync.v1.FollowTipResponse0\SOH"
instance Data.ProtoLens.Service.Types.HasMethodImpl ChainSyncService "fetchBlock" where
  type MethodName ChainSyncService "fetchBlock" = "FetchBlock"
  type MethodInput ChainSyncService "fetchBlock" = FetchBlockRequest
  type MethodOutput ChainSyncService "fetchBlock" = FetchBlockResponse
  type MethodStreamingType ChainSyncService "fetchBlock" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl ChainSyncService "dumpHistory" where
  type MethodName ChainSyncService "dumpHistory" = "DumpHistory"
  type MethodInput ChainSyncService "dumpHistory" = DumpHistoryRequest
  type MethodOutput ChainSyncService "dumpHistory" = DumpHistoryResponse
  type MethodStreamingType ChainSyncService "dumpHistory" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl ChainSyncService "followTip" where
  type MethodName ChainSyncService "followTip" = "FollowTip"
  type MethodInput ChainSyncService "followTip" = FollowTipRequest
  type MethodOutput ChainSyncService "followTip" = FollowTipResponse
  type MethodStreamingType ChainSyncService "followTip" = 'Data.ProtoLens.Service.Types.ServerStreaming
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\SUButxorpc/sync/v1/sync.proto\DC2\SIutxorpc.sync.v1\SUB google/protobuf/field_mask.proto\SUB utxorpc/cardano/v1/cardano.proto\"4\n\
    \\bBlockRef\DC2\DC4\n\
    \\ENQindex\CAN\SOH \SOH(\EOTR\ENQindex\DC2\DC2\n\
    \\EOThash\CAN\STX \SOH(\fR\EOThash\"c\n\
    \\rAnyChainBlock\DC2\DC2\n\
    \\ETXraw\CAN\SOH \SOH(\fH\NULR\ETXraw\DC25\n\
    \\acardano\CAN\STX \SOH(\v2\EM.utxorpc.cardano.v1.BlockH\NULR\acardanoB\a\n\
    \\ENQchain\"{\n\
    \\DC1FetchBlockRequest\DC2+\n\
    \\ETXref\CAN\SOH \ETX(\v2\EM.utxorpc.sync.v1.BlockRefR\ETXref\DC29\n\
    \\n\
    \field_mask\CAN\STX \SOH(\v2\SUB.google.protobuf.FieldMaskR\tfieldMask\"J\n\
    \\DC2FetchBlockResponse\DC24\n\
    \\ENQblock\CAN\SOH \ETX(\v2\RS.utxorpc.sync.v1.AnyChainBlockR\ENQblock\"\168\SOH\n\
    \\DC2DumpHistoryRequest\DC2:\n\
    \\vstart_token\CAN\STX \SOH(\v2\EM.utxorpc.sync.v1.BlockRefR\n\
    \startToken\DC2\ESC\n\
    \\tmax_items\CAN\ETX \SOH(\rR\bmaxItems\DC29\n\
    \\n\
    \field_mask\CAN\EOT \SOH(\v2\SUB.google.protobuf.FieldMaskR\tfieldMask\"\133\SOH\n\
    \\DC3DumpHistoryResponse\DC24\n\
    \\ENQblock\CAN\SOH \ETX(\v2\RS.utxorpc.sync.v1.AnyChainBlockR\ENQblock\DC28\n\
    \\n\
    \next_token\CAN\STX \SOH(\v2\EM.utxorpc.sync.v1.BlockRefR\tnextToken\"K\n\
    \\DLEFollowTipRequest\DC27\n\
    \\tintersect\CAN\SOH \ETX(\v2\EM.utxorpc.sync.v1.BlockRefR\tintersect\"\190\SOH\n\
    \\DC1FollowTipResponse\DC26\n\
    \\ENQapply\CAN\SOH \SOH(\v2\RS.utxorpc.sync.v1.AnyChainBlockH\NULR\ENQapply\DC24\n\
    \\EOTundo\CAN\STX \SOH(\v2\RS.utxorpc.sync.v1.AnyChainBlockH\NULR\EOTundo\DC21\n\
    \\ENQreset\CAN\ETX \SOH(\v2\EM.utxorpc.sync.v1.BlockRefH\NULR\ENQresetB\b\n\
    \\ACKaction2\153\STX\n\
    \\DLEChainSyncService\DC2U\n\
    \\n\
    \FetchBlock\DC2\".utxorpc.sync.v1.FetchBlockRequest\SUB#.utxorpc.sync.v1.FetchBlockResponse\DC2X\n\
    \\vDumpHistory\DC2#.utxorpc.sync.v1.DumpHistoryRequest\SUB$.utxorpc.sync.v1.DumpHistoryResponse\DC2T\n\
    \\tFollowTip\DC2!.utxorpc.sync.v1.FollowTipRequest\SUB\".utxorpc.sync.v1.FollowTipResponse0\SOHB\183\SOH\n\
    \\DC3com.utxorpc.sync.v1B\tSyncProtoP\SOHZ7github.com/bufbuild/buf-tour/gen/utxorpc/sync/v1;syncv1\162\STX\ETXUSX\170\STX\SIUtxorpc.Sync.V1\202\STX\SIUtxorpc\\Sync\\V1\226\STX\ESCUtxorpc\\Sync\\V1\\GPBMetadata\234\STX\DC1Utxorpc::Sync::V1J\191\DC3\n\
    \\ACK\DC2\EOT\NUL\NUL?\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\CAN\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL*\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL*\n\
    \8\n\
    \\STX\EOT\NUL\DC2\EOT\b\NUL\v\SOH\SUB, Represents a reference to a specific block\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\b\b\DLE\n\
    \B\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\t\STX\DC3\"5 Height or slot number (depending on the blockchain)\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\t\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\t\t\SO\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\t\DC1\DC2\n\
    \/\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\n\
    \\STX\DC1\"\" Hash of the content of the block\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\n\
    \\STX\a\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\n\
    \\b\f\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\n\
    \\SI\DLE\n\
    \\n\
    \\n\
    \\STX\EOT\SOH\DC2\EOT\r\NUL\DC2\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\r\b\NAK\n\
    \\f\n\
    \\EOT\EOT\SOH\b\NUL\DC2\EOT\SO\STX\DC1\ETX\n\
    \\f\n\
    \\ENQ\EOT\SOH\b\NUL\SOH\DC2\ETX\SO\b\r\n\
    \-\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX\SI\EOT\DC2\"  Original bytes for a raw block\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX\SI\EOT\t\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX\SI\n\
    \\r\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX\SI\DLE\DC1\n\
    \&\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX\DLE\EOT)\"\EM A parsed Cardano block.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ACK\DC2\ETX\DLE\EOT\FS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX\DLE\GS$\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX\DLE'(\n\
    \8\n\
    \\STX\EOT\STX\DC2\EOT\NAK\NUL\CAN\SOH\SUB, Request to fetch a block by its reference.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX\NAK\b\EM\n\
    \(\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX\SYN\STX\FS\"\ESC List of block references.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\EOT\DC2\ETX\SYN\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ACK\DC2\ETX\SYN\v\DC3\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX\SYN\DC4\ETB\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX\SYN\SUB\ESC\n\
    \7\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETX\ETB\STX+\"* Field mask to selectively return fields.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ACK\DC2\ETX\ETB\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETX\ETB\FS&\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETX\ETB)*\n\
    \5\n\
    \\STX\EOT\ETX\DC2\EOT\ESC\NUL\GS\SOH\SUB) Response containing the fetched blocks.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETX\ESC\b\SUB\n\
    \&\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETX\FS\STX#\"\EM List of fetched blocks.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\EOT\DC2\ETX\FS\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ACK\DC2\ETX\FS\v\CAN\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETX\FS\EM\RS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETX\FS!\"\n\
    \0\n\
    \\STX\EOT\EOT\DC2\EOT \NUL$\SOH\SUB$ Request to dump the block history.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETX \b\SUB\n\
    \9\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ETX!\STX\ESC\", Starting point for the block history dump.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ACK\DC2\ETX!\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETX!\v\SYN\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETX!\EM\SUB\n\
    \1\n\
    \\EOT\EOT\EOT\STX\SOH\DC2\ETX\"\STX\ETB\"$ Maximum number of items to return.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ENQ\DC2\ETX\"\STX\b\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\SOH\DC2\ETX\"\t\DC2\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ETX\DC2\ETX\"\NAK\SYN\n\
    \7\n\
    \\EOT\EOT\EOT\STX\STX\DC2\ETX#\STX+\"* Field mask to selectively return fields.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\ACK\DC2\ETX#\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\SOH\DC2\ETX#\FS&\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\ETX\DC2\ETX#)*\n\
    \;\n\
    \\STX\EOT\ENQ\DC2\EOT'\NUL*\SOH\SUB/ Response containing the dumped block history.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ENQ\SOH\DC2\ETX'\b\ESC\n\
    \-\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\ETX(\STX#\"  List of blocks in the history.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\EOT\DC2\ETX(\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ACK\DC2\ETX(\v\CAN\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\ETX(\EM\RS\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\ETX(!\"\n\
    \)\n\
    \\EOT\EOT\ENQ\STX\SOH\DC2\ETX)\STX\SUB\"\FS Next token for pagination.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\ACK\DC2\ETX)\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\SOH\DC2\ETX)\v\NAK\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\ETX\DC2\ETX)\CAN\EM\n\
    \:\n\
    \\STX\EOT\ACK\DC2\EOT-\NUL/\SOH\SUB. Request to follow the tip of the blockchain.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ACK\SOH\DC2\ETX-\b\CAN\n\
    \A\n\
    \\EOT\EOT\ACK\STX\NUL\DC2\ETX.\STX\"\"4 List of block references to find the intersection.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\EOT\DC2\ETX.\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ACK\DC2\ETX.\v\DC3\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\SOH\DC2\ETX.\DC4\GS\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ETX\DC2\ETX. !\n\
    \P\n\
    \\STX\EOT\a\DC2\EOT2\NUL8\SOH\SUBD Response containing the action to perform while following the tip.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\a\SOH\DC2\ETX2\b\EM\n\
    \\f\n\
    \\EOT\EOT\a\b\NUL\DC2\EOT3\STX7\ETX\n\
    \\f\n\
    \\ENQ\EOT\a\b\NUL\SOH\DC2\ETX3\b\SO\n\
    \ \n\
    \\EOT\EOT\a\STX\NUL\DC2\ETX4\EOT\FS\"\DC3 Apply this block.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\ACK\DC2\ETX4\EOT\DC1\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\SOH\DC2\ETX4\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\ETX\DC2\ETX4\SUB\ESC\n\
    \\US\n\
    \\EOT\EOT\a\STX\SOH\DC2\ETX5\EOT\ESC\"\DC2 Undo this block.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\ACK\DC2\ETX5\EOT\DC1\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\SOH\DC2\ETX5\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\ETX\DC2\ETX5\EM\SUB\n\
    \-\n\
    \\EOT\EOT\a\STX\STX\DC2\ETX6\EOT\ETB\"  Reset to this block reference.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\STX\ACK\DC2\ETX6\EOT\f\n\
    \\f\n\
    \\ENQ\EOT\a\STX\STX\SOH\DC2\ETX6\r\DC2\n\
    \\f\n\
    \\ENQ\EOT\a\STX\STX\ETX\DC2\ETX6\NAK\SYN\n\
    \8\n\
    \\STX\ACK\NUL\DC2\EOT;\NUL?\SOH\SUB, Service definition for syncing chain data.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ACK\NUL\SOH\DC2\ETX;\b\CAN\n\
    \.\n\
    \\EOT\ACK\NUL\STX\NUL\DC2\ETX<\STXA\"! Fetch a block by its reference.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\SOH\DC2\ETX<\ACK\DLE\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\STX\DC2\ETX<\DC1\"\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ETX\DC2\ETX<-?\n\
    \&\n\
    \\EOT\ACK\NUL\STX\SOH\DC2\ETX=\STXD\"\EM Dump the block history.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\SOH\DC2\ETX=\ACK\DC1\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\STX\DC2\ETX=\DC2$\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\ETX\DC2\ETX=/B\n\
    \0\n\
    \\EOT\ACK\NUL\STX\STX\DC2\ETX>\STXE\"# Follow the tip of the blockchain.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\SOH\DC2\ETX>\ACK\SI\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\STX\DC2\ETX>\DLE \n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\ACK\DC2\ETX>+1\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\ETX\DC2\ETX>2Cb\ACKproto3"