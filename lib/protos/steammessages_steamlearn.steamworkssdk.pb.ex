defmodule ESteamLearnDataType do
  @moduledoc false

  use Protobuf, enum: true, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :STEAMLEARN_DATATYPE_INVALID, 0
  field :STEAMLEARN_DATATYPE_INT32, 1
  field :STEAMLEARN_DATATYPE_FLOAT32, 2
  field :STEAMLEARN_DATATYPE_BOOL, 3
  field :STEAMLEARN_DATATYPE_STRING, 4
  field :STEAMLEARN_DATATYPE_OBJECT, 5
end

defmodule ESteammLearnRegisterDataSourceResult do
  @moduledoc false

  use Protobuf, enum: true, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :STEAMLEARN_REGISTER_DATA_SOURCE_RESULT_ERROR, 0
  field :STEAMLEARN_REGISTER_DATA_SOURCE_RESULT_SUCCESS_CREATED, 1
  field :STEAMLEARN_REGISTER_DATA_SOURCE_RESULT_SUCCESS_FOUND, 2
  field :STEAMLEARN_REGISTER_DATA_SOURCE_RESULT_ERROR_GENERIC, 3
  field :STEAMLEARN_REGISTER_DATA_SOURCE_RESULT_ERROR_INVALID_NAME, 4
  field :STEAMLEARN_REGISTER_DATA_SOURCE_RESULT_ERROR_INVALID_VERSION, 5
  field :STEAMLEARN_REGISTER_DATA_SOURCE_RESULT_ERROR_DATA_CHANGED, 6
  field :STEAMLEARN_REGISTER_DATA_SOURCE_RESULT_ERROR_DATA_INVALID, 7
  field :STEAMLEARN_REGISTER_DATA_SOURCE_RESULT_ERROR_FORBIDDEN, 8
  field :STEAMLEARN_REGISTER_DATA_SOURCE_RESULT_ERROR_INVALID_TIMESTAMP, 9
  field :STEAMLEARN_REGISTER_DATA_SOURCE_RESULT_DISABLED, 10
end

defmodule ESteamLearnCacheDataResult do
  @moduledoc false

  use Protobuf, enum: true, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :STEAMLEARN_CACHE_DATA_ERROR, 0
  field :STEAMLEARN_CACHE_DATA_SUCCESS, 1
  field :STEAMLEARN_CACHE_DATA_ERROR_UNKNOWN_DATA_SOURCE, 2
  field :STEAMLEARN_CACHE_DATA_ERROR_UNCACHED_DATA_SOURCE, 3
  field :STEAMLEARN_CACHE_DATA_ERROR_INVALID_KEYS, 4
  field :STEAMLEARN_CACHE_DATA_ERROR_FORBIDDEN, 5
  field :STEAMLEARN_CACHE_DATA_ERROR_INVALID_TIMESTAMP, 6
  field :STEAMLEARN_CACHE_DATA_DISABLED, 7
end

defmodule ESteamLearnSnapshotProjectResult do
  @moduledoc false

  use Protobuf, enum: true, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :STEAMLEARN_SNAPSHOT_PROJECT_ERROR, 0
  field :STEAMLEARN_SNAPSHOT_PROJECT_SUCCESS_STORED, 1
  field :STEAMLEARN_SNAPSHOT_PROJECT_SUCCESS_QUEUED, 2
  field :STEAMLEARN_SNAPSHOT_PROJECT_ERROR_INVALID_PROJECT_ID, 3
  field :STEAMLEARN_SNAPSHOT_PROJECT_ERROR_UNKNOWN_DATA_SOURCE, 4
  field :STEAMLEARN_SNAPSHOT_PROJECT_ERROR_INVALID_DATA_SOURCE_KEY, 5
  field :STEAMLEARN_SNAPSHOT_PROJECT_ERROR_MISSING_CACHE_DURATION, 6
  field :STEAMLEARN_SNAPSHOT_PROJECT_ERROR_NO_PUBLISHED_CONFIG, 7
  field :STEAMLEARN_SNAPSHOT_PROJECT_ERROR_FORBIDDEN, 8
  field :STEAMLEARN_SNAPSHOT_PROJECT_ERROR_INVALID_TIMESTAMP, 9
  field :STEAMLEARN_SNAPSHOT_PROJECT_ERROR_INTERNAL_DATA_SOURCE_ERROR, 10
  field :STEAMLEARN_SNAPSHOT_PROJECT_DISABLED, 11
  field :STEAMLEARN_SNAPSHOT_PROJECT_ERROR_INVALID_PUBLISHED_VERSION, 12
end

defmodule ESteamLearnGetHMACKeysResult do
  @moduledoc false

  use Protobuf, enum: true, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :STEAMLEARN_GET_HMAC_KEYS_SUCCESS, 0
end

defmodule ESteamLearnInferenceResult do
  @moduledoc false

  use Protobuf, enum: true, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :STEAMLEARN_INFERENCE_ERROR, 0
  field :STEAMLEARN_INFERENCE_SUCCESS, 1
  field :STEAMLEARN_INFERENCE_ERROR_INVALID_PROJECT_ID, 2
  field :STEAMLEARN_INFERENCE_ERROR_MISSING_CACHED_SCHEMA_DATA, 3
  field :STEAMLEARN_INFERENCE_ERROR_NO_PUBLISHED_CONFIG, 4
  field :STEAMLEARN_INFERENCE_ERROR_FORBIDDEN, 5
  field :STEAMLEARN_INFERENCE_ERROR_INVALID_TIMESTAMP, 6
  field :STEAMLEARN_INFERENCE_ERROR_INVALID_PUBLISHED_VERSION, 7
  field :STEAMLEARN_INFERENCE_ERROR_NO_FETCH_ID_FOUND, 8
  field :STEAMLEARN_INFERENCE_ERROR_TOO_BUSY, 9
end

defmodule ESteamLearnInferenceMetadataResult do
  @moduledoc false

  use Protobuf, enum: true, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :STEAMLEARN_INFERENCE_METADATA_ERROR, 0
  field :STEAMLEARN_INFERENCE_METADATA_SUCCESS, 1
  field :STEAMLEARN_INFERENCE_METADATA_ERROR_INVALID_PROJECT_ID, 2
  field :STEAMLEARN_INFERENCE_METADATA_ERROR_NO_PUBLISHED_CONFIG, 3
  field :STEAMLEARN_INFERENCE_METADATA_ERROR_FORBIDDEN, 4
  field :STEAMLEARN_INFERENCE_METADATA_ERROR_INVALID_TIMESTAMP, 5
  field :STEAMLEARN_INFERENCE_METADATA_ERROR_INVALID_PUBLISHED_VERSION, 6
  field :STEAMLEARN_INFERENCE_METADATA_ERROR_NO_FETCH_ID_FOUND, 7
end

defmodule CMsgSteamLearnDataSourceDescObject do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :elements, 1, repeated: true, type: CMsgSteamLearnDataSourceDescElement
end

defmodule CMsgSteamLearnDataSourceDescElement do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :name, 1, optional: true, type: :string

  field :data_type, 2,
    optional: true,
    type: ESteamLearnDataType,
    default: :STEAMLEARN_DATATYPE_INVALID,
    enum: true

  field :object, 3, optional: true, type: CMsgSteamLearnDataSourceDescObject
  field :count, 4, optional: true, type: :uint32
end

defmodule CMsgSteamLearnDataSource do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :id, 1, optional: true, type: :uint32
  field :name, 2, optional: true, type: :string
  field :version, 3, optional: true, type: :uint32
  field :source_description, 4, optional: true, type: :string
  field :structure, 5, optional: true, type: CMsgSteamLearnDataSourceDescObject
  field :structure_crc, 6, optional: true, type: :uint32
  field :cache_duration_seconds, 7, optional: true, type: :uint32
end

defmodule CMsgSteamLearnDataObject do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :elements, 1, repeated: true, type: CMsgSteamLearnDataElement
end

defmodule CMsgSteamLearnDataElement do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :name, 1, optional: true, type: :string
  field :data_int32s, 20, repeated: true, type: :int32
  field :data_floats, 21, repeated: true, type: :float
  field :data_bools, 22, repeated: true, type: :bool
  field :data_strings, 23, repeated: true, type: :string
  field :data_objects, 24, repeated: true, type: CMsgSteamLearnDataObject
end

defmodule CMsgSteamLearnData do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :data_source_id, 1, optional: true, type: :uint32
  field :keys, 2, repeated: true, type: :uint64
  field :data_object, 3, optional: true, type: CMsgSteamLearnDataObject
end

defmodule CMsgSteamLearnDataList do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :data, 1, repeated: true, type: CMsgSteamLearnData
end

defmodule CMsgSteamLearn_AccessData do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :publisher_id, 1, optional: true, type: :uint32
  field :timestamp, 2, optional: true, type: :uint32
  field :random_value, 3, optional: true, type: :uint64
end

defmodule CMsgSteamLearn_RegisterDataSource_Request do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :access_token, 1, optional: true, type: :string
  field :access_data, 2, optional: true, type: CMsgSteamLearn_AccessData
  field :data_source, 3, optional: true, type: CMsgSteamLearnDataSource
end

defmodule CMsgSteamLearn_RegisterDataSource_Response do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :result, 1,
    optional: true,
    type: ESteammLearnRegisterDataSourceResult,
    default: :STEAMLEARN_REGISTER_DATA_SOURCE_RESULT_ERROR,
    enum: true

  field :data_source, 2, optional: true, type: CMsgSteamLearnDataSource
end

defmodule CMsgSteamLearn_CacheData_Request do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :access_token, 1, optional: true, type: :string
  field :access_data, 2, optional: true, type: CMsgSteamLearn_AccessData
  field :data, 3, optional: true, type: CMsgSteamLearnData
end

defmodule CMsgSteamLearn_CacheData_Response do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :cache_data_result, 1,
    optional: true,
    type: ESteamLearnCacheDataResult,
    default: :STEAMLEARN_CACHE_DATA_ERROR,
    enum: true
end

defmodule CMsgSteamLearn_SnapshotProject_Request do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :access_token, 1, optional: true, type: :string
  field :access_data, 2, optional: true, type: CMsgSteamLearn_AccessData
  field :project_id, 3, optional: true, type: :uint32
  field :published_version, 7, optional: true, type: :uint32
  field :keys, 4, repeated: true, type: :uint64
  field :data, 5, repeated: true, type: CMsgSteamLearnData
  field :pending_data_limit_seconds, 6, optional: true, type: :uint32
end

defmodule CMsgSteamLearn_SnapshotProject_Response do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :snapshot_result, 1,
    optional: true,
    type: ESteamLearnSnapshotProjectResult,
    default: :STEAMLEARN_SNAPSHOT_PROJECT_ERROR,
    enum: true
end

defmodule CMsgSteamLearn_BatchOperation_Request do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :cache_data_requests, 1, repeated: true, type: CMsgSteamLearn_CacheData_Request
  field :snapshot_requests, 2, repeated: true, type: CMsgSteamLearn_SnapshotProject_Request
end

defmodule CMsgSteamLearn_BatchOperation_Response do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :cache_data_responses, 1, repeated: true, type: CMsgSteamLearn_CacheData_Response
  field :snapshot_responses, 2, repeated: true, type: CMsgSteamLearn_SnapshotProject_Response
end

defmodule CMsgSteamLearnHMACKeys.CacheDataKeys do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :data_source_id, 1, optional: true, type: :uint32
  field :version, 3, optional: true, type: :uint32
  field :key, 2, optional: true, type: :string
end

defmodule CMsgSteamLearnHMACKeys.SnapshotProjectKeys do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :project_id, 1, optional: true, type: :uint32
  field :published_version, 3, optional: true, type: :uint32
  field :key, 2, optional: true, type: :string
end

defmodule CMsgSteamLearnHMACKeys do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :register_data_source_key, 1, optional: true, type: :string
  field :cache_data_keys, 2, repeated: true, type: CMsgSteamLearnHMACKeys.CacheDataKeys

  field :snapshot_project_keys, 3,
    repeated: true,
    type: CMsgSteamLearnHMACKeys.SnapshotProjectKeys
end

defmodule CMsgSteamLearn_GetHMACKeys_Request do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :appid, 1, optional: true, type: :uint32
end

defmodule CMsgSteamLearn_GetHMACKeys_Response do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :result, 1,
    optional: true,
    type: ESteamLearnGetHMACKeysResult,
    default: :STEAMLEARN_GET_HMAC_KEYS_SUCCESS,
    enum: true

  field :keys, 2, optional: true, type: CMsgSteamLearnHMACKeys
end

defmodule CMsgSteamLearn_Inference_Request do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :access_token, 1, optional: true, type: :string
  field :access_data, 2, optional: true, type: CMsgSteamLearn_AccessData
  field :project_id, 3, optional: true, type: :uint32
  field :published_version, 4, optional: true, type: :uint32
  field :override_train_id, 5, optional: true, type: :uint32
  field :data, 6, optional: true, type: CMsgSteamLearnDataList
  field :additional_data, 7, repeated: true, type: :float
end

defmodule CMsgSteamLearn_InferenceMetadata_Request do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :access_token, 1, optional: true, type: :string
  field :access_data, 2, optional: true, type: CMsgSteamLearn_AccessData
  field :project_id, 3, optional: true, type: :uint32
  field :published_version, 4, optional: true, type: :uint32
  field :override_train_id, 5, optional: true, type: :uint32
end

defmodule CMsgSteamLearn_InferenceMetadataBackend_Request do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :project_id, 1, optional: true, type: :uint32
  field :fetch_id, 2, optional: true, type: :uint32
end

defmodule CMsgSteamLearn_InferenceMetadata_Response.RowRange do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :min_row, 1, optional: true, type: :uint64
  field :max_row, 2, optional: true, type: :uint64
end

defmodule CMsgSteamLearn_InferenceMetadata_Response.Range do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :data_element_path, 1, optional: true, type: :string
  field :min_value, 2, optional: true, type: :float
  field :max_value, 3, optional: true, type: :float
end

defmodule CMsgSteamLearn_InferenceMetadata_Response.StdDev do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :data_element_path, 1, optional: true, type: :string
  field :mean, 2, optional: true, type: :float
  field :std_dev, 3, optional: true, type: :float
end

defmodule CMsgSteamLearn_InferenceMetadata_Response.CompactTable.Entry do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :value, 1, optional: true, type: :uint32
  field :mapping, 2, optional: true, type: :uint32
  field :count, 3, optional: true, type: :uint64
end

defmodule CMsgSteamLearn_InferenceMetadata_Response.CompactTable.MapValuesEntry do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :key, 1, optional: true, type: :uint32

  field :value, 2,
    optional: true,
    type: CMsgSteamLearn_InferenceMetadata_Response.CompactTable.Entry
end

defmodule CMsgSteamLearn_InferenceMetadata_Response.CompactTable.MapMappingsEntry do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :key, 1, optional: true, type: :uint32

  field :value, 2,
    optional: true,
    type: CMsgSteamLearn_InferenceMetadata_Response.CompactTable.Entry
end

defmodule CMsgSteamLearn_InferenceMetadata_Response.CompactTable do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :name, 1, optional: true, type: :string

  field :map_values, 2,
    repeated: true,
    type: CMsgSteamLearn_InferenceMetadata_Response.CompactTable.MapValuesEntry

  field :map_mappings, 3,
    repeated: true,
    type: CMsgSteamLearn_InferenceMetadata_Response.CompactTable.MapMappingsEntry
end

defmodule CMsgSteamLearn_InferenceMetadata_Response.KMeans.Cluster do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :x, 1, optional: true, type: :float
  field :y, 2, optional: true, type: :float
  field :radius, 3, optional: true, type: :float
  field :radius_75pct, 4, optional: true, type: :float
  field :radius_50pct, 5, optional: true, type: :float
  field :radius_25pct, 6, optional: true, type: :float
end

defmodule CMsgSteamLearn_InferenceMetadata_Response.KMeans do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :name, 1, optional: true, type: :string

  field :clusters, 2,
    repeated: true,
    type: CMsgSteamLearn_InferenceMetadata_Response.KMeans.Cluster
end

defmodule CMsgSteamLearn_InferenceMetadata_Response.SnapshotHistogram do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :min_value, 1, optional: true, type: :float
  field :max_value, 2, optional: true, type: :float
  field :num_buckets, 3, optional: true, type: :uint32
  field :bucket_counts, 4, repeated: true, type: :uint32
end

defmodule CMsgSteamLearn_InferenceMetadata_Response do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :inference_metadata_result, 1,
    optional: true,
    type: ESteamLearnInferenceMetadataResult,
    default: :STEAMLEARN_INFERENCE_METADATA_ERROR,
    enum: true

  field :row_range, 2, optional: true, type: CMsgSteamLearn_InferenceMetadata_Response.RowRange
  field :ranges, 3, repeated: true, type: CMsgSteamLearn_InferenceMetadata_Response.Range
  field :std_devs, 4, repeated: true, type: CMsgSteamLearn_InferenceMetadata_Response.StdDev

  field :compact_tables, 5,
    repeated: true,
    type: CMsgSteamLearn_InferenceMetadata_Response.CompactTable

  field :kmeans, 6, repeated: true, type: CMsgSteamLearn_InferenceMetadata_Response.KMeans

  field :snapshot_histogram, 7,
    optional: true,
    type: CMsgSteamLearn_InferenceMetadata_Response.SnapshotHistogram
end

defmodule CMsgSteamLearn_InferenceBackend_Response.BinaryCrossEntropyOutput do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :value, 1, optional: true, type: :float
end

defmodule CMsgSteamLearn_InferenceBackend_Response.MutliBinaryCrossEntropyOutput do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :weight, 1, repeated: true, type: :float
  field :value, 2, repeated: true, type: :float
end

defmodule CMsgSteamLearn_InferenceBackend_Response.CategoricalCrossEntropyOutput do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :weight, 1, repeated: true, type: :float
  field :value, 2, repeated: true, type: :float
end

defmodule CMsgSteamLearn_InferenceBackend_Response.Output do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  oneof :ResponseType, 0

  field :binary_crossentropy, 1,
    optional: true,
    type: CMsgSteamLearn_InferenceBackend_Response.BinaryCrossEntropyOutput,
    oneof: 0

  field :categorical_crossentropy, 2,
    optional: true,
    type: CMsgSteamLearn_InferenceBackend_Response.CategoricalCrossEntropyOutput,
    oneof: 0

  field :multi_binary_crossentropy, 3,
    optional: true,
    type: CMsgSteamLearn_InferenceBackend_Response.MutliBinaryCrossEntropyOutput,
    oneof: 0
end

defmodule CMsgSteamLearn_InferenceBackend_Response do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :outputs, 1, repeated: true, type: CMsgSteamLearn_InferenceBackend_Response.Output
end

defmodule CMsgSteamLearn_Inference_Response do
  @moduledoc false

  use Protobuf, syntax: :proto2, protoc_gen_elixir_version: "0.12.0"

  field :inference_result, 1,
    optional: true,
    type: ESteamLearnInferenceResult,
    default: :STEAMLEARN_INFERENCE_ERROR,
    enum: true

  field :backend_response, 2, optional: true, type: CMsgSteamLearn_InferenceBackend_Response
end