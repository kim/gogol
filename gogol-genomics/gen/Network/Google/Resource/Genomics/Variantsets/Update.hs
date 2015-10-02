{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Genomics.Variantsets.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a variant set\'s metadata. All other modifications are silently
-- ignored.
--
-- /See:/ <https://developers.google.com/genomics/v1beta2/reference Genomics API Reference> for @GenomicsVariantsetsUpdate@.
module Network.Google.Resource.Genomics.Variantsets.Update
    (
    -- * REST Resource
      VariantsetsUpdateResource

    -- * Creating a Request
    , variantsetsUpdate'
    , VariantsetsUpdate'

    -- * Request Lenses
    , vuuQuotaUser
    , vuuPrettyPrint
    , vuuVariantSetId
    , vuuUserIP
    , vuuKey
    , vuuVariantSet
    , vuuOAuthToken
    , vuuFields
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsVariantsetsUpdate@ which the
-- 'VariantsetsUpdate'' request conforms to.
type VariantsetsUpdateResource =
     "variantsets" :>
       Capture "variantSetId" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Key :>
                 QueryParam "oauth_token" OAuthToken :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] VariantSet :> Put '[JSON] VariantSet

-- | Updates a variant set\'s metadata. All other modifications are silently
-- ignored.
--
-- /See:/ 'variantsetsUpdate'' smart constructor.
data VariantsetsUpdate' = VariantsetsUpdate'
    { _vuuQuotaUser    :: !(Maybe Text)
    , _vuuPrettyPrint  :: !Bool
    , _vuuVariantSetId :: !Text
    , _vuuUserIP       :: !(Maybe Text)
    , _vuuKey          :: !(Maybe Key)
    , _vuuVariantSet   :: !VariantSet
    , _vuuOAuthToken   :: !(Maybe OAuthToken)
    , _vuuFields       :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'VariantsetsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vuuQuotaUser'
--
-- * 'vuuPrettyPrint'
--
-- * 'vuuVariantSetId'
--
-- * 'vuuUserIP'
--
-- * 'vuuKey'
--
-- * 'vuuVariantSet'
--
-- * 'vuuOAuthToken'
--
-- * 'vuuFields'
variantsetsUpdate'
    :: Text -- ^ 'variantSetId'
    -> VariantSet -- ^ 'VariantSet'
    -> VariantsetsUpdate'
variantsetsUpdate' pVuuVariantSetId_ pVuuVariantSet_ =
    VariantsetsUpdate'
    { _vuuQuotaUser = Nothing
    , _vuuPrettyPrint = True
    , _vuuVariantSetId = pVuuVariantSetId_
    , _vuuUserIP = Nothing
    , _vuuKey = Nothing
    , _vuuVariantSet = pVuuVariantSet_
    , _vuuOAuthToken = Nothing
    , _vuuFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
vuuQuotaUser :: Lens' VariantsetsUpdate' (Maybe Text)
vuuQuotaUser
  = lens _vuuQuotaUser (\ s a -> s{_vuuQuotaUser = a})

-- | Returns response with indentations and line breaks.
vuuPrettyPrint :: Lens' VariantsetsUpdate' Bool
vuuPrettyPrint
  = lens _vuuPrettyPrint
      (\ s a -> s{_vuuPrettyPrint = a})

-- | The ID of the variant to be updated (must already exist).
vuuVariantSetId :: Lens' VariantsetsUpdate' Text
vuuVariantSetId
  = lens _vuuVariantSetId
      (\ s a -> s{_vuuVariantSetId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
vuuUserIP :: Lens' VariantsetsUpdate' (Maybe Text)
vuuUserIP
  = lens _vuuUserIP (\ s a -> s{_vuuUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
vuuKey :: Lens' VariantsetsUpdate' (Maybe Key)
vuuKey = lens _vuuKey (\ s a -> s{_vuuKey = a})

-- | Multipart request metadata.
vuuVariantSet :: Lens' VariantsetsUpdate' VariantSet
vuuVariantSet
  = lens _vuuVariantSet
      (\ s a -> s{_vuuVariantSet = a})

-- | OAuth 2.0 token for the current user.
vuuOAuthToken :: Lens' VariantsetsUpdate' (Maybe OAuthToken)
vuuOAuthToken
  = lens _vuuOAuthToken
      (\ s a -> s{_vuuOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
vuuFields :: Lens' VariantsetsUpdate' (Maybe Text)
vuuFields
  = lens _vuuFields (\ s a -> s{_vuuFields = a})

instance GoogleAuth VariantsetsUpdate' where
        authKey = vuuKey . _Just
        authToken = vuuOAuthToken . _Just

instance GoogleRequest VariantsetsUpdate' where
        type Rs VariantsetsUpdate' = VariantSet
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u VariantsetsUpdate'{..}
          = go _vuuQuotaUser (Just _vuuPrettyPrint)
              _vuuVariantSetId
              _vuuUserIP
              _vuuKey
              _vuuOAuthToken
              _vuuFields
              (Just AltJSON)
              _vuuVariantSet
          where go
                  = clientWithRoute
                      (Proxy :: Proxy VariantsetsUpdateResource)
                      r
                      u