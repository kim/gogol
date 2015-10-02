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
-- Module      : Network.Google.Resource.Analytics.Management.Goals.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing view (profile). This method supports patch
-- semantics.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementGoalsPatch@.
module Network.Google.Resource.Analytics.Management.Goals.Patch
    (
    -- * REST Resource
      ManagementGoalsPatchResource

    -- * Creating a Request
    , managementGoalsPatch'
    , ManagementGoalsPatch'

    -- * Request Lenses
    , mgpQuotaUser
    , mgpPrettyPrint
    , mgpWebPropertyId
    , mgpGoalId
    , mgpUserIP
    , mgpProfileId
    , mgpAccountId
    , mgpKey
    , mgpGoal
    , mgpOAuthToken
    , mgpFields
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementGoalsPatch@ which the
-- 'ManagementGoalsPatch'' request conforms to.
type ManagementGoalsPatchResource =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               "profiles" :>
                 Capture "profileId" Text :>
                   "goals" :>
                     Capture "goalId" Text :>
                       QueryParam "quotaUser" Text :>
                         QueryParam "prettyPrint" Bool :>
                           QueryParam "userIp" Text :>
                             QueryParam "key" Key :>
                               QueryParam "oauth_token" OAuthToken :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" AltJSON :>
                                     ReqBody '[JSON] Goal :> Patch '[JSON] Goal

-- | Updates an existing view (profile). This method supports patch
-- semantics.
--
-- /See:/ 'managementGoalsPatch'' smart constructor.
data ManagementGoalsPatch' = ManagementGoalsPatch'
    { _mgpQuotaUser     :: !(Maybe Text)
    , _mgpPrettyPrint   :: !Bool
    , _mgpWebPropertyId :: !Text
    , _mgpGoalId        :: !Text
    , _mgpUserIP        :: !(Maybe Text)
    , _mgpProfileId     :: !Text
    , _mgpAccountId     :: !Text
    , _mgpKey           :: !(Maybe Key)
    , _mgpGoal          :: !Goal
    , _mgpOAuthToken    :: !(Maybe OAuthToken)
    , _mgpFields        :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementGoalsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mgpQuotaUser'
--
-- * 'mgpPrettyPrint'
--
-- * 'mgpWebPropertyId'
--
-- * 'mgpGoalId'
--
-- * 'mgpUserIP'
--
-- * 'mgpProfileId'
--
-- * 'mgpAccountId'
--
-- * 'mgpKey'
--
-- * 'mgpGoal'
--
-- * 'mgpOAuthToken'
--
-- * 'mgpFields'
managementGoalsPatch'
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'goalId'
    -> Text -- ^ 'profileId'
    -> Text -- ^ 'accountId'
    -> Goal -- ^ 'Goal'
    -> ManagementGoalsPatch'
managementGoalsPatch' pMgpWebPropertyId_ pMgpGoalId_ pMgpProfileId_ pMgpAccountId_ pMgpGoal_ =
    ManagementGoalsPatch'
    { _mgpQuotaUser = Nothing
    , _mgpPrettyPrint = False
    , _mgpWebPropertyId = pMgpWebPropertyId_
    , _mgpGoalId = pMgpGoalId_
    , _mgpUserIP = Nothing
    , _mgpProfileId = pMgpProfileId_
    , _mgpAccountId = pMgpAccountId_
    , _mgpKey = Nothing
    , _mgpGoal = pMgpGoal_
    , _mgpOAuthToken = Nothing
    , _mgpFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mgpQuotaUser :: Lens' ManagementGoalsPatch' (Maybe Text)
mgpQuotaUser
  = lens _mgpQuotaUser (\ s a -> s{_mgpQuotaUser = a})

-- | Returns response with indentations and line breaks.
mgpPrettyPrint :: Lens' ManagementGoalsPatch' Bool
mgpPrettyPrint
  = lens _mgpPrettyPrint
      (\ s a -> s{_mgpPrettyPrint = a})

-- | Web property ID to update the goal.
mgpWebPropertyId :: Lens' ManagementGoalsPatch' Text
mgpWebPropertyId
  = lens _mgpWebPropertyId
      (\ s a -> s{_mgpWebPropertyId = a})

-- | Index of the goal to be updated.
mgpGoalId :: Lens' ManagementGoalsPatch' Text
mgpGoalId
  = lens _mgpGoalId (\ s a -> s{_mgpGoalId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mgpUserIP :: Lens' ManagementGoalsPatch' (Maybe Text)
mgpUserIP
  = lens _mgpUserIP (\ s a -> s{_mgpUserIP = a})

-- | View (Profile) ID to update the goal.
mgpProfileId :: Lens' ManagementGoalsPatch' Text
mgpProfileId
  = lens _mgpProfileId (\ s a -> s{_mgpProfileId = a})

-- | Account ID to update the goal.
mgpAccountId :: Lens' ManagementGoalsPatch' Text
mgpAccountId
  = lens _mgpAccountId (\ s a -> s{_mgpAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mgpKey :: Lens' ManagementGoalsPatch' (Maybe Key)
mgpKey = lens _mgpKey (\ s a -> s{_mgpKey = a})

-- | Multipart request metadata.
mgpGoal :: Lens' ManagementGoalsPatch' Goal
mgpGoal = lens _mgpGoal (\ s a -> s{_mgpGoal = a})

-- | OAuth 2.0 token for the current user.
mgpOAuthToken :: Lens' ManagementGoalsPatch' (Maybe OAuthToken)
mgpOAuthToken
  = lens _mgpOAuthToken
      (\ s a -> s{_mgpOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
mgpFields :: Lens' ManagementGoalsPatch' (Maybe Text)
mgpFields
  = lens _mgpFields (\ s a -> s{_mgpFields = a})

instance GoogleAuth ManagementGoalsPatch' where
        authKey = mgpKey . _Just
        authToken = mgpOAuthToken . _Just

instance GoogleRequest ManagementGoalsPatch' where
        type Rs ManagementGoalsPatch' = Goal
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u ManagementGoalsPatch'{..}
          = go _mgpQuotaUser (Just _mgpPrettyPrint)
              _mgpWebPropertyId
              _mgpGoalId
              _mgpUserIP
              _mgpProfileId
              _mgpAccountId
              _mgpKey
              _mgpOAuthToken
              _mgpFields
              (Just AltJSON)
              _mgpGoal
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ManagementGoalsPatchResource)
                      r
                      u