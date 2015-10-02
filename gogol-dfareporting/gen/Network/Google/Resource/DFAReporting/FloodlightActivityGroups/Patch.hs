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
-- Module      : Network.Google.Resource.DFAReporting.FloodlightActivityGroups.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing floodlight activity group. This method supports
-- patch semantics.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingFloodlightActivityGroupsPatch@.
module Network.Google.Resource.DFAReporting.FloodlightActivityGroups.Patch
    (
    -- * REST Resource
      FloodlightActivityGroupsPatchResource

    -- * Creating a Request
    , floodlightActivityGroupsPatch'
    , FloodlightActivityGroupsPatch'

    -- * Request Lenses
    , fagpQuotaUser
    , fagpPrettyPrint
    , fagpFloodlightActivityGroup
    , fagpUserIP
    , fagpProfileId
    , fagpKey
    , fagpId
    , fagpOAuthToken
    , fagpFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingFloodlightActivityGroupsPatch@ which the
-- 'FloodlightActivityGroupsPatch'' request conforms to.
type FloodlightActivityGroupsPatchResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "floodlightActivityGroups" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Key :>
                   QueryParam "id" Int64 :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] FloodlightActivityGroup :>
                             Patch '[JSON] FloodlightActivityGroup

-- | Updates an existing floodlight activity group. This method supports
-- patch semantics.
--
-- /See:/ 'floodlightActivityGroupsPatch'' smart constructor.
data FloodlightActivityGroupsPatch' = FloodlightActivityGroupsPatch'
    { _fagpQuotaUser               :: !(Maybe Text)
    , _fagpPrettyPrint             :: !Bool
    , _fagpFloodlightActivityGroup :: !FloodlightActivityGroup
    , _fagpUserIP                  :: !(Maybe Text)
    , _fagpProfileId               :: !Int64
    , _fagpKey                     :: !(Maybe Key)
    , _fagpId                      :: !Int64
    , _fagpOAuthToken              :: !(Maybe OAuthToken)
    , _fagpFields                  :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'FloodlightActivityGroupsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fagpQuotaUser'
--
-- * 'fagpPrettyPrint'
--
-- * 'fagpFloodlightActivityGroup'
--
-- * 'fagpUserIP'
--
-- * 'fagpProfileId'
--
-- * 'fagpKey'
--
-- * 'fagpId'
--
-- * 'fagpOAuthToken'
--
-- * 'fagpFields'
floodlightActivityGroupsPatch'
    :: FloodlightActivityGroup -- ^ 'FloodlightActivityGroup'
    -> Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> FloodlightActivityGroupsPatch'
floodlightActivityGroupsPatch' pFagpFloodlightActivityGroup_ pFagpProfileId_ pFagpId_ =
    FloodlightActivityGroupsPatch'
    { _fagpQuotaUser = Nothing
    , _fagpPrettyPrint = True
    , _fagpFloodlightActivityGroup = pFagpFloodlightActivityGroup_
    , _fagpUserIP = Nothing
    , _fagpProfileId = pFagpProfileId_
    , _fagpKey = Nothing
    , _fagpId = pFagpId_
    , _fagpOAuthToken = Nothing
    , _fagpFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
fagpQuotaUser :: Lens' FloodlightActivityGroupsPatch' (Maybe Text)
fagpQuotaUser
  = lens _fagpQuotaUser
      (\ s a -> s{_fagpQuotaUser = a})

-- | Returns response with indentations and line breaks.
fagpPrettyPrint :: Lens' FloodlightActivityGroupsPatch' Bool
fagpPrettyPrint
  = lens _fagpPrettyPrint
      (\ s a -> s{_fagpPrettyPrint = a})

-- | Multipart request metadata.
fagpFloodlightActivityGroup :: Lens' FloodlightActivityGroupsPatch' FloodlightActivityGroup
fagpFloodlightActivityGroup
  = lens _fagpFloodlightActivityGroup
      (\ s a -> s{_fagpFloodlightActivityGroup = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
fagpUserIP :: Lens' FloodlightActivityGroupsPatch' (Maybe Text)
fagpUserIP
  = lens _fagpUserIP (\ s a -> s{_fagpUserIP = a})

-- | User profile ID associated with this request.
fagpProfileId :: Lens' FloodlightActivityGroupsPatch' Int64
fagpProfileId
  = lens _fagpProfileId
      (\ s a -> s{_fagpProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
fagpKey :: Lens' FloodlightActivityGroupsPatch' (Maybe Key)
fagpKey = lens _fagpKey (\ s a -> s{_fagpKey = a})

-- | Floodlight activity Group ID.
fagpId :: Lens' FloodlightActivityGroupsPatch' Int64
fagpId = lens _fagpId (\ s a -> s{_fagpId = a})

-- | OAuth 2.0 token for the current user.
fagpOAuthToken :: Lens' FloodlightActivityGroupsPatch' (Maybe OAuthToken)
fagpOAuthToken
  = lens _fagpOAuthToken
      (\ s a -> s{_fagpOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
fagpFields :: Lens' FloodlightActivityGroupsPatch' (Maybe Text)
fagpFields
  = lens _fagpFields (\ s a -> s{_fagpFields = a})

instance GoogleAuth FloodlightActivityGroupsPatch'
         where
        authKey = fagpKey . _Just
        authToken = fagpOAuthToken . _Just

instance GoogleRequest FloodlightActivityGroupsPatch'
         where
        type Rs FloodlightActivityGroupsPatch' =
             FloodlightActivityGroup
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u
          FloodlightActivityGroupsPatch'{..}
          = go _fagpQuotaUser (Just _fagpPrettyPrint)
              _fagpUserIP
              _fagpProfileId
              _fagpKey
              (Just _fagpId)
              _fagpOAuthToken
              _fagpFields
              (Just AltJSON)
              _fagpFloodlightActivityGroup
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy FloodlightActivityGroupsPatchResource)
                      r
                      u