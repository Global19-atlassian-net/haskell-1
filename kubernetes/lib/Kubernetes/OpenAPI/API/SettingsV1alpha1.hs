{-
   Kubernetes

   No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

   OpenAPI Version: 3.0.1
   Kubernetes API version: v1.13.4
   Generated by OpenAPI Generator (https://openapi-generator.tech)
-}

{-|
Module : Kubernetes.OpenAPI.API.SettingsV1alpha1
-}

{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MonoLocalBinds #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Kubernetes.OpenAPI.API.SettingsV1alpha1 where

import Kubernetes.OpenAPI.Core
import Kubernetes.OpenAPI.MimeTypes
import Kubernetes.OpenAPI.Model as M

import qualified Data.Aeson as A
import qualified Data.ByteString as B
import qualified Data.ByteString.Lazy as BL
import qualified Data.Data as P (Typeable, TypeRep, typeOf, typeRep)
import qualified Data.Foldable as P
import qualified Data.Map as Map
import qualified Data.Maybe as P
import qualified Data.Proxy as P (Proxy(..))
import qualified Data.Set as Set
import qualified Data.String as P
import qualified Data.Text as T
import qualified Data.Text.Encoding as T
import qualified Data.Text.Lazy as TL
import qualified Data.Text.Lazy.Encoding as TL
import qualified Data.Time as TI
import qualified Network.HTTP.Client.MultipartFormData as NH
import qualified Network.HTTP.Media as ME
import qualified Network.HTTP.Types as NH
import qualified Web.FormUrlEncoded as WH
import qualified Web.HttpApiData as WH

import Data.Text (Text)
import GHC.Base ((<|>))

import Prelude ((==),(/=),($), (.),(<$>),(<*>),(>>=),Maybe(..),Bool(..),Char,Double,FilePath,Float,Int,Integer,String,fmap,undefined,mempty,maybe,pure,Monad,Applicative,Functor)
import qualified Prelude as P

-- * Operations


-- ** SettingsV1alpha1

-- *** createNamespacedPodPreset

-- | @POST \/apis\/settings.k8s.io\/v1alpha1\/namespaces\/{namespace}\/podpresets@
-- 
-- create a PodPreset
-- 
-- AuthMethod: 'AuthApiKeyBearerToken'
-- 
createNamespacedPodPreset 
  :: (Consumes CreateNamespacedPodPreset contentType, MimeRender contentType V1alpha1PodPreset)
  => ContentType contentType -- ^ request content-type ('MimeType')
  -> Accept accept -- ^ request accept ('MimeType')
  -> V1alpha1PodPreset -- ^ "body"
  -> Namespace -- ^ "namespace" -  object name and auth scope, such as for teams and projects
  -> KubernetesRequest CreateNamespacedPodPreset contentType V1alpha1PodPreset accept
createNamespacedPodPreset _  _ body (Namespace namespace) =
  _mkRequest "POST" ["/apis/settings.k8s.io/v1alpha1/namespaces/",toPath namespace,"/podpresets"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyBearerToken)
    `setBodyParam` body

data CreateNamespacedPodPreset 
instance HasBodyParam CreateNamespacedPodPreset V1alpha1PodPreset 

-- | /Optional Param/ "includeUninitialized" - If true, partially initialized resources are included in the response.
instance HasOptionalParam CreateNamespacedPodPreset IncludeUninitialized where
  applyOptionalParam req (IncludeUninitialized xs) =
    req `setQuery` toQuery ("includeUninitialized", Just xs)

-- | /Optional Param/ "pretty" - If 'true', then the output is pretty printed.
instance HasOptionalParam CreateNamespacedPodPreset Pretty where
  applyOptionalParam req (Pretty xs) =
    req `setQuery` toQuery ("pretty", Just xs)

-- | /Optional Param/ "dryRun" - When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed
instance HasOptionalParam CreateNamespacedPodPreset DryRun where
  applyOptionalParam req (DryRun xs) =
    req `setQuery` toQuery ("dryRun", Just xs)
    
-- | @*/*@
instance MimeType mtype => Consumes CreateNamespacedPodPreset mtype

-- | @application/json@
instance Produces CreateNamespacedPodPreset MimeJSON
-- | @application/vnd.kubernetes.protobuf@
instance Produces CreateNamespacedPodPreset MimeVndKubernetesProtobuf
-- | @application/yaml@
instance Produces CreateNamespacedPodPreset MimeYaml


-- *** deleteCollectionNamespacedPodPreset

-- | @DELETE \/apis\/settings.k8s.io\/v1alpha1\/namespaces\/{namespace}\/podpresets@
-- 
-- delete collection of PodPreset
-- 
-- AuthMethod: 'AuthApiKeyBearerToken'
-- 
deleteCollectionNamespacedPodPreset 
  :: Accept accept -- ^ request accept ('MimeType')
  -> Namespace -- ^ "namespace" -  object name and auth scope, such as for teams and projects
  -> KubernetesRequest DeleteCollectionNamespacedPodPreset MimeNoContent V1Status accept
deleteCollectionNamespacedPodPreset  _ (Namespace namespace) =
  _mkRequest "DELETE" ["/apis/settings.k8s.io/v1alpha1/namespaces/",toPath namespace,"/podpresets"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyBearerToken)

data DeleteCollectionNamespacedPodPreset  

-- | /Optional Param/ "includeUninitialized" - If true, partially initialized resources are included in the response.
instance HasOptionalParam DeleteCollectionNamespacedPodPreset IncludeUninitialized where
  applyOptionalParam req (IncludeUninitialized xs) =
    req `setQuery` toQuery ("includeUninitialized", Just xs)

-- | /Optional Param/ "pretty" - If 'true', then the output is pretty printed.
instance HasOptionalParam DeleteCollectionNamespacedPodPreset Pretty where
  applyOptionalParam req (Pretty xs) =
    req `setQuery` toQuery ("pretty", Just xs)

-- | /Optional Param/ "continue" - The continue option should be set when retrieving more results from the server. Since this value is server defined, clients may only use the continue value from a previous query result with identical query parameters (except for the value of continue) and the server may reject a continue value it does not recognize. If the specified continue value is no longer valid whether due to expiration (generally five to fifteen minutes) or a configuration change on the server, the server will respond with a 410 ResourceExpired error together with a continue token. If the client needs a consistent list, it must restart their list without the continue field. Otherwise, the client may send another list request with the token received with the 410 error, the server will respond with a list starting from the next key, but from the latest snapshot, which is inconsistent from the previous list results - objects that are created, modified, or deleted after the first list request will be included in the response, as long as their keys are after the \"next key\".  This field is not supported when watch is true. Clients may start a watch from the last resourceVersion value returned by the server and not miss any modifications.
instance HasOptionalParam DeleteCollectionNamespacedPodPreset Continue where
  applyOptionalParam req (Continue xs) =
    req `setQuery` toQuery ("continue", Just xs)

-- | /Optional Param/ "fieldSelector" - A selector to restrict the list of returned objects by their fields. Defaults to everything.
instance HasOptionalParam DeleteCollectionNamespacedPodPreset FieldSelector where
  applyOptionalParam req (FieldSelector xs) =
    req `setQuery` toQuery ("fieldSelector", Just xs)

-- | /Optional Param/ "labelSelector" - A selector to restrict the list of returned objects by their labels. Defaults to everything.
instance HasOptionalParam DeleteCollectionNamespacedPodPreset LabelSelector where
  applyOptionalParam req (LabelSelector xs) =
    req `setQuery` toQuery ("labelSelector", Just xs)

-- | /Optional Param/ "limit" - limit is a maximum number of responses to return for a list call. If more items exist, the server will set the `continue` field on the list metadata to a value that can be used with the same initial query to retrieve the next set of results. Setting a limit may return fewer than the requested amount of items (up to zero items) in the event all requested objects are filtered out and clients should only use the presence of the continue field to determine whether more results are available. Servers may choose not to support the limit argument and will return all of the available results. If limit is specified and the continue field is empty, clients may assume that no more results are available. This field is not supported if watch is true.  The server guarantees that the objects returned when using continue will be identical to issuing a single list call without a limit - that is, no objects created, modified, or deleted after the first request is issued will be included in any subsequent continued requests. This is sometimes referred to as a consistent snapshot, and ensures that a client that is using limit to receive smaller chunks of a very large result can ensure they see all possible objects. If objects are updated during a chunked list the version of the object that was present at the time the first list result was calculated is returned.
instance HasOptionalParam DeleteCollectionNamespacedPodPreset Limit where
  applyOptionalParam req (Limit xs) =
    req `setQuery` toQuery ("limit", Just xs)

-- | /Optional Param/ "resourceVersion" - When specified with a watch call, shows changes that occur after that particular version of a resource. Defaults to changes from the beginning of history. When specified for list: - if unset, then the result is returned from remote storage based on quorum-read flag; - if it's 0, then we simply return what we currently have in cache, no guarantee; - if set to non zero, then the result is at least as fresh as given rv.
instance HasOptionalParam DeleteCollectionNamespacedPodPreset ResourceVersion where
  applyOptionalParam req (ResourceVersion xs) =
    req `setQuery` toQuery ("resourceVersion", Just xs)

-- | /Optional Param/ "timeoutSeconds" - Timeout for the list/watch call. This limits the duration of the call, regardless of any activity or inactivity.
instance HasOptionalParam DeleteCollectionNamespacedPodPreset TimeoutSeconds where
  applyOptionalParam req (TimeoutSeconds xs) =
    req `setQuery` toQuery ("timeoutSeconds", Just xs)

-- | /Optional Param/ "watch" - Watch for changes to the described resources and return them as a stream of add, update, and remove notifications. Specify resourceVersion.
instance HasOptionalParam DeleteCollectionNamespacedPodPreset Watch where
  applyOptionalParam req (Watch xs) =
    req `setQuery` toQuery ("watch", Just xs)
-- | @application/json@
instance Produces DeleteCollectionNamespacedPodPreset MimeJSON
-- | @application/vnd.kubernetes.protobuf@
instance Produces DeleteCollectionNamespacedPodPreset MimeVndKubernetesProtobuf
-- | @application/yaml@
instance Produces DeleteCollectionNamespacedPodPreset MimeYaml


-- *** deleteNamespacedPodPreset

-- | @DELETE \/apis\/settings.k8s.io\/v1alpha1\/namespaces\/{namespace}\/podpresets\/{name}@
-- 
-- delete a PodPreset
-- 
-- AuthMethod: 'AuthApiKeyBearerToken'
-- 
deleteNamespacedPodPreset 
  :: (Consumes DeleteNamespacedPodPreset contentType)
  => ContentType contentType -- ^ request content-type ('MimeType')
  -> Accept accept -- ^ request accept ('MimeType')
  -> Name -- ^ "name" -  name of the PodPreset
  -> Namespace -- ^ "namespace" -  object name and auth scope, such as for teams and projects
  -> KubernetesRequest DeleteNamespacedPodPreset contentType V1Status accept
deleteNamespacedPodPreset _  _ (Name name) (Namespace namespace) =
  _mkRequest "DELETE" ["/apis/settings.k8s.io/v1alpha1/namespaces/",toPath namespace,"/podpresets/",toPath name]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyBearerToken)

data DeleteNamespacedPodPreset 
instance HasBodyParam DeleteNamespacedPodPreset V1DeleteOptions 

-- | /Optional Param/ "pretty" - If 'true', then the output is pretty printed.
instance HasOptionalParam DeleteNamespacedPodPreset Pretty where
  applyOptionalParam req (Pretty xs) =
    req `setQuery` toQuery ("pretty", Just xs)

-- | /Optional Param/ "dryRun" - When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed
instance HasOptionalParam DeleteNamespacedPodPreset DryRun where
  applyOptionalParam req (DryRun xs) =
    req `setQuery` toQuery ("dryRun", Just xs)

-- | /Optional Param/ "gracePeriodSeconds" - The duration in seconds before the object should be deleted. Value must be non-negative integer. The value zero indicates delete immediately. If this value is nil, the default grace period for the specified type will be used. Defaults to a per object value if not specified. zero means delete immediately.
instance HasOptionalParam DeleteNamespacedPodPreset GracePeriodSeconds where
  applyOptionalParam req (GracePeriodSeconds xs) =
    req `setQuery` toQuery ("gracePeriodSeconds", Just xs)

-- | /Optional Param/ "orphanDependents" - Deprecated: please use the PropagationPolicy, this field will be deprecated in 1.7. Should the dependent objects be orphaned. If true/false, the \"orphan\" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.
instance HasOptionalParam DeleteNamespacedPodPreset OrphanDependents where
  applyOptionalParam req (OrphanDependents xs) =
    req `setQuery` toQuery ("orphanDependents", Just xs)

-- | /Optional Param/ "propagationPolicy" - Whether and how garbage collection will be performed. Either this field or OrphanDependents may be set, but not both. The default policy is decided by the existing finalizer set in the metadata.finalizers and the resource-specific default policy. Acceptable values are: 'Orphan' - orphan the dependents; 'Background' - allow the garbage collector to delete the dependents in the background; 'Foreground' - a cascading policy that deletes all dependents in the foreground.
instance HasOptionalParam DeleteNamespacedPodPreset PropagationPolicy where
  applyOptionalParam req (PropagationPolicy xs) =
    req `setQuery` toQuery ("propagationPolicy", Just xs)
    
-- | @*/*@
instance MimeType mtype => Consumes DeleteNamespacedPodPreset mtype

-- | @application/json@
instance Produces DeleteNamespacedPodPreset MimeJSON
-- | @application/vnd.kubernetes.protobuf@
instance Produces DeleteNamespacedPodPreset MimeVndKubernetesProtobuf
-- | @application/yaml@
instance Produces DeleteNamespacedPodPreset MimeYaml


-- *** getAPIResources

-- | @GET \/apis\/settings.k8s.io\/v1alpha1\/@
-- 
-- get available resources
-- 
-- AuthMethod: 'AuthApiKeyBearerToken'
-- 
getAPIResources 
  :: Accept accept -- ^ request accept ('MimeType')
  -> KubernetesRequest GetAPIResources MimeNoContent V1APIResourceList accept
getAPIResources  _ =
  _mkRequest "GET" ["/apis/settings.k8s.io/v1alpha1/"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyBearerToken)

data GetAPIResources  
-- | @application/json@
instance Produces GetAPIResources MimeJSON
-- | @application/vnd.kubernetes.protobuf@
instance Produces GetAPIResources MimeVndKubernetesProtobuf
-- | @application/yaml@
instance Produces GetAPIResources MimeYaml


-- *** listNamespacedPodPreset

-- | @GET \/apis\/settings.k8s.io\/v1alpha1\/namespaces\/{namespace}\/podpresets@
-- 
-- list or watch objects of kind PodPreset
-- 
-- AuthMethod: 'AuthApiKeyBearerToken'
-- 
listNamespacedPodPreset 
  :: Accept accept -- ^ request accept ('MimeType')
  -> Namespace -- ^ "namespace" -  object name and auth scope, such as for teams and projects
  -> KubernetesRequest ListNamespacedPodPreset MimeNoContent V1alpha1PodPresetList accept
listNamespacedPodPreset  _ (Namespace namespace) =
  _mkRequest "GET" ["/apis/settings.k8s.io/v1alpha1/namespaces/",toPath namespace,"/podpresets"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyBearerToken)

data ListNamespacedPodPreset  

-- | /Optional Param/ "includeUninitialized" - If true, partially initialized resources are included in the response.
instance HasOptionalParam ListNamespacedPodPreset IncludeUninitialized where
  applyOptionalParam req (IncludeUninitialized xs) =
    req `setQuery` toQuery ("includeUninitialized", Just xs)

-- | /Optional Param/ "pretty" - If 'true', then the output is pretty printed.
instance HasOptionalParam ListNamespacedPodPreset Pretty where
  applyOptionalParam req (Pretty xs) =
    req `setQuery` toQuery ("pretty", Just xs)

-- | /Optional Param/ "continue" - The continue option should be set when retrieving more results from the server. Since this value is server defined, clients may only use the continue value from a previous query result with identical query parameters (except for the value of continue) and the server may reject a continue value it does not recognize. If the specified continue value is no longer valid whether due to expiration (generally five to fifteen minutes) or a configuration change on the server, the server will respond with a 410 ResourceExpired error together with a continue token. If the client needs a consistent list, it must restart their list without the continue field. Otherwise, the client may send another list request with the token received with the 410 error, the server will respond with a list starting from the next key, but from the latest snapshot, which is inconsistent from the previous list results - objects that are created, modified, or deleted after the first list request will be included in the response, as long as their keys are after the \"next key\".  This field is not supported when watch is true. Clients may start a watch from the last resourceVersion value returned by the server and not miss any modifications.
instance HasOptionalParam ListNamespacedPodPreset Continue where
  applyOptionalParam req (Continue xs) =
    req `setQuery` toQuery ("continue", Just xs)

-- | /Optional Param/ "fieldSelector" - A selector to restrict the list of returned objects by their fields. Defaults to everything.
instance HasOptionalParam ListNamespacedPodPreset FieldSelector where
  applyOptionalParam req (FieldSelector xs) =
    req `setQuery` toQuery ("fieldSelector", Just xs)

-- | /Optional Param/ "labelSelector" - A selector to restrict the list of returned objects by their labels. Defaults to everything.
instance HasOptionalParam ListNamespacedPodPreset LabelSelector where
  applyOptionalParam req (LabelSelector xs) =
    req `setQuery` toQuery ("labelSelector", Just xs)

-- | /Optional Param/ "limit" - limit is a maximum number of responses to return for a list call. If more items exist, the server will set the `continue` field on the list metadata to a value that can be used with the same initial query to retrieve the next set of results. Setting a limit may return fewer than the requested amount of items (up to zero items) in the event all requested objects are filtered out and clients should only use the presence of the continue field to determine whether more results are available. Servers may choose not to support the limit argument and will return all of the available results. If limit is specified and the continue field is empty, clients may assume that no more results are available. This field is not supported if watch is true.  The server guarantees that the objects returned when using continue will be identical to issuing a single list call without a limit - that is, no objects created, modified, or deleted after the first request is issued will be included in any subsequent continued requests. This is sometimes referred to as a consistent snapshot, and ensures that a client that is using limit to receive smaller chunks of a very large result can ensure they see all possible objects. If objects are updated during a chunked list the version of the object that was present at the time the first list result was calculated is returned.
instance HasOptionalParam ListNamespacedPodPreset Limit where
  applyOptionalParam req (Limit xs) =
    req `setQuery` toQuery ("limit", Just xs)

-- | /Optional Param/ "resourceVersion" - When specified with a watch call, shows changes that occur after that particular version of a resource. Defaults to changes from the beginning of history. When specified for list: - if unset, then the result is returned from remote storage based on quorum-read flag; - if it's 0, then we simply return what we currently have in cache, no guarantee; - if set to non zero, then the result is at least as fresh as given rv.
instance HasOptionalParam ListNamespacedPodPreset ResourceVersion where
  applyOptionalParam req (ResourceVersion xs) =
    req `setQuery` toQuery ("resourceVersion", Just xs)

-- | /Optional Param/ "timeoutSeconds" - Timeout for the list/watch call. This limits the duration of the call, regardless of any activity or inactivity.
instance HasOptionalParam ListNamespacedPodPreset TimeoutSeconds where
  applyOptionalParam req (TimeoutSeconds xs) =
    req `setQuery` toQuery ("timeoutSeconds", Just xs)

-- | /Optional Param/ "watch" - Watch for changes to the described resources and return them as a stream of add, update, and remove notifications. Specify resourceVersion.
instance HasOptionalParam ListNamespacedPodPreset Watch where
  applyOptionalParam req (Watch xs) =
    req `setQuery` toQuery ("watch", Just xs)
-- | @application/json@
instance Produces ListNamespacedPodPreset MimeJSON
-- | @application/json;stream=watch@
instance Produces ListNamespacedPodPreset MimeJsonstreamwatch
-- | @application/vnd.kubernetes.protobuf@
instance Produces ListNamespacedPodPreset MimeVndKubernetesProtobuf
-- | @application/vnd.kubernetes.protobuf;stream=watch@
instance Produces ListNamespacedPodPreset MimeVndKubernetesProtobufstreamwatch
-- | @application/yaml@
instance Produces ListNamespacedPodPreset MimeYaml


-- *** listPodPresetForAllNamespaces

-- | @GET \/apis\/settings.k8s.io\/v1alpha1\/podpresets@
-- 
-- list or watch objects of kind PodPreset
-- 
-- AuthMethod: 'AuthApiKeyBearerToken'
-- 
listPodPresetForAllNamespaces 
  :: Accept accept -- ^ request accept ('MimeType')
  -> KubernetesRequest ListPodPresetForAllNamespaces MimeNoContent V1alpha1PodPresetList accept
listPodPresetForAllNamespaces  _ =
  _mkRequest "GET" ["/apis/settings.k8s.io/v1alpha1/podpresets"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyBearerToken)

data ListPodPresetForAllNamespaces  

-- | /Optional Param/ "continue" - The continue option should be set when retrieving more results from the server. Since this value is server defined, clients may only use the continue value from a previous query result with identical query parameters (except for the value of continue) and the server may reject a continue value it does not recognize. If the specified continue value is no longer valid whether due to expiration (generally five to fifteen minutes) or a configuration change on the server, the server will respond with a 410 ResourceExpired error together with a continue token. If the client needs a consistent list, it must restart their list without the continue field. Otherwise, the client may send another list request with the token received with the 410 error, the server will respond with a list starting from the next key, but from the latest snapshot, which is inconsistent from the previous list results - objects that are created, modified, or deleted after the first list request will be included in the response, as long as their keys are after the \"next key\".  This field is not supported when watch is true. Clients may start a watch from the last resourceVersion value returned by the server and not miss any modifications.
instance HasOptionalParam ListPodPresetForAllNamespaces Continue where
  applyOptionalParam req (Continue xs) =
    req `setQuery` toQuery ("continue", Just xs)

-- | /Optional Param/ "fieldSelector" - A selector to restrict the list of returned objects by their fields. Defaults to everything.
instance HasOptionalParam ListPodPresetForAllNamespaces FieldSelector where
  applyOptionalParam req (FieldSelector xs) =
    req `setQuery` toQuery ("fieldSelector", Just xs)

-- | /Optional Param/ "includeUninitialized" - If true, partially initialized resources are included in the response.
instance HasOptionalParam ListPodPresetForAllNamespaces IncludeUninitialized where
  applyOptionalParam req (IncludeUninitialized xs) =
    req `setQuery` toQuery ("includeUninitialized", Just xs)

-- | /Optional Param/ "labelSelector" - A selector to restrict the list of returned objects by their labels. Defaults to everything.
instance HasOptionalParam ListPodPresetForAllNamespaces LabelSelector where
  applyOptionalParam req (LabelSelector xs) =
    req `setQuery` toQuery ("labelSelector", Just xs)

-- | /Optional Param/ "limit" - limit is a maximum number of responses to return for a list call. If more items exist, the server will set the `continue` field on the list metadata to a value that can be used with the same initial query to retrieve the next set of results. Setting a limit may return fewer than the requested amount of items (up to zero items) in the event all requested objects are filtered out and clients should only use the presence of the continue field to determine whether more results are available. Servers may choose not to support the limit argument and will return all of the available results. If limit is specified and the continue field is empty, clients may assume that no more results are available. This field is not supported if watch is true.  The server guarantees that the objects returned when using continue will be identical to issuing a single list call without a limit - that is, no objects created, modified, or deleted after the first request is issued will be included in any subsequent continued requests. This is sometimes referred to as a consistent snapshot, and ensures that a client that is using limit to receive smaller chunks of a very large result can ensure they see all possible objects. If objects are updated during a chunked list the version of the object that was present at the time the first list result was calculated is returned.
instance HasOptionalParam ListPodPresetForAllNamespaces Limit where
  applyOptionalParam req (Limit xs) =
    req `setQuery` toQuery ("limit", Just xs)

-- | /Optional Param/ "pretty" - If 'true', then the output is pretty printed.
instance HasOptionalParam ListPodPresetForAllNamespaces Pretty where
  applyOptionalParam req (Pretty xs) =
    req `setQuery` toQuery ("pretty", Just xs)

-- | /Optional Param/ "resourceVersion" - When specified with a watch call, shows changes that occur after that particular version of a resource. Defaults to changes from the beginning of history. When specified for list: - if unset, then the result is returned from remote storage based on quorum-read flag; - if it's 0, then we simply return what we currently have in cache, no guarantee; - if set to non zero, then the result is at least as fresh as given rv.
instance HasOptionalParam ListPodPresetForAllNamespaces ResourceVersion where
  applyOptionalParam req (ResourceVersion xs) =
    req `setQuery` toQuery ("resourceVersion", Just xs)

-- | /Optional Param/ "timeoutSeconds" - Timeout for the list/watch call. This limits the duration of the call, regardless of any activity or inactivity.
instance HasOptionalParam ListPodPresetForAllNamespaces TimeoutSeconds where
  applyOptionalParam req (TimeoutSeconds xs) =
    req `setQuery` toQuery ("timeoutSeconds", Just xs)

-- | /Optional Param/ "watch" - Watch for changes to the described resources and return them as a stream of add, update, and remove notifications. Specify resourceVersion.
instance HasOptionalParam ListPodPresetForAllNamespaces Watch where
  applyOptionalParam req (Watch xs) =
    req `setQuery` toQuery ("watch", Just xs)
-- | @application/json@
instance Produces ListPodPresetForAllNamespaces MimeJSON
-- | @application/json;stream=watch@
instance Produces ListPodPresetForAllNamespaces MimeJsonstreamwatch
-- | @application/vnd.kubernetes.protobuf@
instance Produces ListPodPresetForAllNamespaces MimeVndKubernetesProtobuf
-- | @application/vnd.kubernetes.protobuf;stream=watch@
instance Produces ListPodPresetForAllNamespaces MimeVndKubernetesProtobufstreamwatch
-- | @application/yaml@
instance Produces ListPodPresetForAllNamespaces MimeYaml


-- *** patchNamespacedPodPreset

-- | @PATCH \/apis\/settings.k8s.io\/v1alpha1\/namespaces\/{namespace}\/podpresets\/{name}@
-- 
-- partially update the specified PodPreset
-- 
-- AuthMethod: 'AuthApiKeyBearerToken'
-- 
patchNamespacedPodPreset 
  :: (Consumes PatchNamespacedPodPreset contentType, MimeRender contentType Body)
  => ContentType contentType -- ^ request content-type ('MimeType')
  -> Accept accept -- ^ request accept ('MimeType')
  -> Body -- ^ "body"
  -> Name -- ^ "name" -  name of the PodPreset
  -> Namespace -- ^ "namespace" -  object name and auth scope, such as for teams and projects
  -> KubernetesRequest PatchNamespacedPodPreset contentType V1alpha1PodPreset accept
patchNamespacedPodPreset _  _ body (Name name) (Namespace namespace) =
  _mkRequest "PATCH" ["/apis/settings.k8s.io/v1alpha1/namespaces/",toPath namespace,"/podpresets/",toPath name]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyBearerToken)
    `setBodyParam` body

data PatchNamespacedPodPreset 
instance HasBodyParam PatchNamespacedPodPreset Body 

-- | /Optional Param/ "pretty" - If 'true', then the output is pretty printed.
instance HasOptionalParam PatchNamespacedPodPreset Pretty where
  applyOptionalParam req (Pretty xs) =
    req `setQuery` toQuery ("pretty", Just xs)

-- | /Optional Param/ "dryRun" - When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed
instance HasOptionalParam PatchNamespacedPodPreset DryRun where
  applyOptionalParam req (DryRun xs) =
    req `setQuery` toQuery ("dryRun", Just xs)

-- | @application/json-patch+json@
instance Consumes PatchNamespacedPodPreset MimeJsonPatchjson
-- | @application/merge-patch+json@
instance Consumes PatchNamespacedPodPreset MimeMergePatchjson
-- | @application/strategic-merge-patch+json@
instance Consumes PatchNamespacedPodPreset MimeStrategicMergePatchjson

-- | @application/json@
instance Produces PatchNamespacedPodPreset MimeJSON
-- | @application/vnd.kubernetes.protobuf@
instance Produces PatchNamespacedPodPreset MimeVndKubernetesProtobuf
-- | @application/yaml@
instance Produces PatchNamespacedPodPreset MimeYaml


-- *** readNamespacedPodPreset

-- | @GET \/apis\/settings.k8s.io\/v1alpha1\/namespaces\/{namespace}\/podpresets\/{name}@
-- 
-- read the specified PodPreset
-- 
-- AuthMethod: 'AuthApiKeyBearerToken'
-- 
readNamespacedPodPreset 
  :: Accept accept -- ^ request accept ('MimeType')
  -> Name -- ^ "name" -  name of the PodPreset
  -> Namespace -- ^ "namespace" -  object name and auth scope, such as for teams and projects
  -> KubernetesRequest ReadNamespacedPodPreset MimeNoContent V1alpha1PodPreset accept
readNamespacedPodPreset  _ (Name name) (Namespace namespace) =
  _mkRequest "GET" ["/apis/settings.k8s.io/v1alpha1/namespaces/",toPath namespace,"/podpresets/",toPath name]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyBearerToken)

data ReadNamespacedPodPreset  

-- | /Optional Param/ "pretty" - If 'true', then the output is pretty printed.
instance HasOptionalParam ReadNamespacedPodPreset Pretty where
  applyOptionalParam req (Pretty xs) =
    req `setQuery` toQuery ("pretty", Just xs)

-- | /Optional Param/ "exact" - Should the export be exact.  Exact export maintains cluster-specific fields like 'Namespace'.
instance HasOptionalParam ReadNamespacedPodPreset Exact where
  applyOptionalParam req (Exact xs) =
    req `setQuery` toQuery ("exact", Just xs)

-- | /Optional Param/ "export" - Should this value be exported.  Export strips fields that a user can not specify.
instance HasOptionalParam ReadNamespacedPodPreset Export where
  applyOptionalParam req (Export xs) =
    req `setQuery` toQuery ("export", Just xs)
-- | @application/json@
instance Produces ReadNamespacedPodPreset MimeJSON
-- | @application/vnd.kubernetes.protobuf@
instance Produces ReadNamespacedPodPreset MimeVndKubernetesProtobuf
-- | @application/yaml@
instance Produces ReadNamespacedPodPreset MimeYaml


-- *** replaceNamespacedPodPreset

-- | @PUT \/apis\/settings.k8s.io\/v1alpha1\/namespaces\/{namespace}\/podpresets\/{name}@
-- 
-- replace the specified PodPreset
-- 
-- AuthMethod: 'AuthApiKeyBearerToken'
-- 
replaceNamespacedPodPreset 
  :: (Consumes ReplaceNamespacedPodPreset contentType, MimeRender contentType V1alpha1PodPreset)
  => ContentType contentType -- ^ request content-type ('MimeType')
  -> Accept accept -- ^ request accept ('MimeType')
  -> V1alpha1PodPreset -- ^ "body"
  -> Name -- ^ "name" -  name of the PodPreset
  -> Namespace -- ^ "namespace" -  object name and auth scope, such as for teams and projects
  -> KubernetesRequest ReplaceNamespacedPodPreset contentType V1alpha1PodPreset accept
replaceNamespacedPodPreset _  _ body (Name name) (Namespace namespace) =
  _mkRequest "PUT" ["/apis/settings.k8s.io/v1alpha1/namespaces/",toPath namespace,"/podpresets/",toPath name]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyBearerToken)
    `setBodyParam` body

data ReplaceNamespacedPodPreset 
instance HasBodyParam ReplaceNamespacedPodPreset V1alpha1PodPreset 

-- | /Optional Param/ "pretty" - If 'true', then the output is pretty printed.
instance HasOptionalParam ReplaceNamespacedPodPreset Pretty where
  applyOptionalParam req (Pretty xs) =
    req `setQuery` toQuery ("pretty", Just xs)

-- | /Optional Param/ "dryRun" - When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed
instance HasOptionalParam ReplaceNamespacedPodPreset DryRun where
  applyOptionalParam req (DryRun xs) =
    req `setQuery` toQuery ("dryRun", Just xs)
    
-- | @*/*@
instance MimeType mtype => Consumes ReplaceNamespacedPodPreset mtype

-- | @application/json@
instance Produces ReplaceNamespacedPodPreset MimeJSON
-- | @application/vnd.kubernetes.protobuf@
instance Produces ReplaceNamespacedPodPreset MimeVndKubernetesProtobuf
-- | @application/yaml@
instance Produces ReplaceNamespacedPodPreset MimeYaml

