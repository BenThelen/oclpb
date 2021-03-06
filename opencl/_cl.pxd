# This code was automatically generated by CWrap version 0.0.0

from _cl_platform cimport *
    
cdef extern from "cl_header.h":
    
    enum: 
        CL_SUCCESS
        CL_INVALID_VALUE
        CL_INVALID_BINARY
        CL_INVALID_BUFFER_SIZE
        CL_INVALID_BUILD_OPTIONS
        CL_INVALID_CONTEXT
        CL_INVALID_DEVICE
        CL_INVALID_EVENT
        CL_INVALID_HOST_PTR  
        CL_INVALID_KERNEL_NAME
        CL_INVALID_OPERATION
        CL_INVALID_KERNEL_NAME
        CL_INVALID_COMMAND_QUEUE
        CL_INVALID_CONTEXT
        CL_INVALID_MEM_OBJECT
        CL_INVALID_EVENT_WAIT_LIST
        CL_INVALID_PROPERTY
        CL_INVALID_DEVICE_TYPE
        CL_INVALID_PROGRAM
        CL_INVALID_PROGRAM_EXECUTABLE
        CL_INVALID_PLATFORM
        CL_INVALID_KERNEL
        CL_INVALID_KERNEL_ARGS
        CL_INVALID_WORK_DIMENSION
        CL_INVALID_GLOBAL_WORK_SIZE
        CL_INVALID_GLOBAL_OFFSET
        CL_INVALID_WORK_GROUP_SIZE
        CL_INVALID_WORK_ITEM_SIZE
        CL_INVALID_IMAGE_SIZE
        CL_INVALID_ARG_INDEX
        CL_INVALID_ARG_VALUE
        CL_INVALID_SAMPLER
        CL_INVALID_ARG_SIZE
        CL_INVALID_KERNEL_DEFINITION 
        
        CL_PROFILING_INFO_NOT_AVAILABLE
        
        CL_MISALIGNED_SUB_BUFFER_OFFSET
        CL_MEM_OBJECT_ALLOCATION_FAILURE        
        CL_DEVICE_NOT_AVAILABLE
        CL_COMPILER_NOT_AVAILABLE
        
        CL_BUILD_PROGRAM_FAILURE  
        CL_INVALID_OPERATION
        CL_OUT_OF_HOST_MEMORY
        
        CL_OUT_OF_RESOURCES
        CL_DEVICE_NOT_FOUND
        CL_EXEC_STATUS_ERROR_FOR_EVENTS_IN_WAIT_LIST

    ctypedef int *intptr_t
    
    enum cl_map_flags:
        CL_MAP_READ
        CL_MAP_WRITE
        
    enum cl_platform_info: 
        CL_PLATFORM_PROFILE
        CL_PLATFORM_VERSION
        CL_PLATFORM_NAME
        CL_PLATFORM_VENDOR
        CL_PLATFORM_EXTENSIONS
        
    ctypedef cl_ulong cl_bitfield

    ctypedef cl_bitfield cl_device_type

    cdef cl_device_type \
        CL_DEVICE_TYPE_CPU,\
        CL_DEVICE_TYPE_GPU,\
        CL_DEVICE_TYPE_ACCELERATOR,\
        CL_DEVICE_TYPE_DEFAULT,\
        CL_DEVICE_TYPE_ALL,\
        
    ctypedef enum cl_profiling_info:
        CL_PROFILING_COMMAND_START
        CL_PROFILING_COMMAND_END
        CL_PROFILING_COMMAND_SUBMIT
        CL_PROFILING_COMMAND_QUEUED
        
    
    enum cl_mem_flags:
        CL_MEM_READ_WRITE
        CL_MEM_READ_ONLY
        CL_MEM_WRITE_ONLY
        
        CL_MEM_USE_HOST_PTR
        CL_MEM_ALLOC_HOST_PTR
        CL_MEM_COPY_HOST_PTR
        
    enum cl_device_info:
        CL_DEVICE_TYPE
        CL_DEVICE_VENDOR_ID
        CL_DEVICE_IMAGE_SUPPORT
        CL_DEVICE_NAME
        CL_DEVICE_EXECUTION_CAPABILITIES
        CL_DEVICE_MAX_COMPUTE_UNITS
        CL_DEVICE_MAX_WORK_ITEM_DIMENSIONS
        CL_DEVICE_MAX_WORK_ITEM_SIZES
        CL_DEVICE_MAX_WORK_GROUP_SIZE
        CL_DEVICE_ADDRESS_BITS
        CL_DEVICE_MAX_CLOCK_FREQUENCY
        CL_DEVICE_MAX_MEM_ALLOC_SIZE
        CL_DEVICE_MAX_READ_IMAGE_ARGS
        CL_DEVICE_MAX_WRITE_IMAGE_ARGS

        CL_DEVICE_IMAGE2D_MAX_WIDTH
        CL_DEVICE_IMAGE2D_MAX_HEIGHT

        CL_DEVICE_IMAGE3D_MAX_WIDTH
        CL_DEVICE_IMAGE3D_MAX_HEIGHT
        CL_DEVICE_IMAGE3D_MAX_DEPTH
        CL_DEVICE_MAX_PARAMETER_SIZE
        
        CL_DEVICE_MAX_CONSTANT_BUFFER_SIZE
        
        CL_DEVICE_GLOBAL_MEM_SIZE
        CL_DEVICE_LOCAL_MEM_TYPE
        CL_DEVICE_LOCAL_MEM_SIZE
        CL_DEVICE_HOST_UNIFIED_MEMORY
        
        CL_DEVICE_PROFILING_TIMER_RESOLUTION
        CL_DEVICE_AVAILABLE
        CL_DEVICE_COMPILER_AVAILABLE
        CL_DRIVER_VERSION
        CL_DEVICE_PROFILE
        CL_DEVICE_VERSION
        CL_DEVICE_EXTENSIONS
        
        CL_DEVICE_QUEUE_PROPERTIES
        CL_DEVICE_PLATFORM

    
        
        
    enum cl_program_info:
        CL_PROGRAM_CONTEXT
        CL_PROGRAM_DEVICES
        CL_PROGRAM_NUM_DEVICES
        CL_PROGRAM_REFERENCE_COUNT
        CL_PROGRAM_SOURCE
        CL_PROGRAM_BINARY_SIZES
        CL_PROGRAM_BINARIES
        
    enum cl_context_info:
        CL_CONTEXT_DEVICES
        CL_CONTEXT_NUM_DEVICES
        CL_CONTEXT_PROPERTIES
        CL_CONTEXT_REFERENCE_COUNT
        
    enum cl_device_exec_capabilities:
        CL_EXEC_KERNEL
        CL_EXEC_NATIVE_KERNEL
    
    ctypedef enum cl_command_queue_properties:
        CL_QUEUE_OUT_OF_ORDER_EXEC_MODE_ENABLE
        CL_QUEUE_PROFILING_ENABLE
        
    enum cl_command_queue_info:
        CL_QUEUE_DEVICE
        CL_QUEUE_CONTEXT
        CL_QUEUE_REFERENCE_COUNT
        CL_QUEUE_PROPERTIES

    enum cl_mem_flags:
        CL_MEM_READ_WRITE
        CL_MEM_READ_ONLY
        CL_MEM_WRITE_ONLY
        CL_MEM_COPY_HOST_PTR
        CL_MEM_USE_HOST_PTR
        CL_MEM_ALLOC_HOST_PTR
        
    enum cl_map_flags:
        CL_MAP_READ
        CL_MAP_WRITE

    enum cl_context_properties:
        CL_CONTEXT_PLATFORM
        
    enum cl_mem_info:
        CL_MEM_TYPE
        CL_MEM_FLAGS
        CL_MEM_SIZE
        CL_MEM_REFERENCE_COUNT
        CL_MEM_MAP_COUNT
        CL_MEM_ASSOCIATED_MEMOBJECT
        CL_MEM_CONTEXT
        CL_MEM_OFFSET

    enum cl_kernel_info:
        CL_KERNEL_FUNCTION_NAME
        CL_KERNEL_NUM_ARGS
        CL_KERNEL_REFERENCE_COUNT
        CL_KERNEL_CONTEXT
        CL_KERNEL_PROGRAM
        
    ctypedef enum cl_kernel_work_group_info:
        CL_KERNEL_WORK_GROUP_SIZE
        CL_KERNEL_COMPILE_WORK_GROUP_SIZE
        CL_KERNEL_LOCAL_MEM_SIZE
        CL_KERNEL_PREFERRED_WORK_GROUP_SIZE_MULTIPLE
        CL_KERNEL_PRIVATE_MEM_SIZE

        
    ctypedef enum cl_program_buid_info:
        CL_PROGRAM_BUILD_STATUS
        CL_PROGRAM_BUILD_OPTIONS
        CL_PROGRAM_BUILD_LOG

    
    ctypedef cl_int cl_build_status
    
    cdef cl_build_status CL_BUILD_NONE ,\
        CL_BUILD_ERROR ,\
        CL_BUILD_SUCCESS ,\
        CL_BUILD_IN_PROGRESS
        
    
    
    enum cl_event_info:
        CL_EVENT_COMMAND_EXECUTION_STATUS
        CL_EVENT_COMMAND_QUEUE
        CL_EVENT_CONTEXT
        CL_EVENT_COMMAND_TYPE
        CL_EVENT_REFERENCE_COUNT
        
    enum cl_event_status:
        CL_QUEUED
        CL_SUBMITTED
        CL_RUNNING
        CL_COMPLETE
        
    enum cl_image_info:
        CL_IMAGE_FORMAT
        CL_IMAGE_ELEMENT_SIZE
        CL_IMAGE_ROW_PITCH
        CL_IMAGE_SLICE_PITCH
        CL_IMAGE_WIDTH
        CL_IMAGE_HEIGHT
        CL_IMAGE_DEPTH
        
    ctypedef enum cl_buffer_create_type:
        CL_BUFFER_CREATE_TYPE_REGION
        
    ctypedef size_t cl_mem_object_type
    
    cdef cl_mem_object_type CL_MEM_OBJECT_BUFFER
    cdef cl_mem_object_type CL_MEM_OBJECT_IMAGE2D
    cdef cl_mem_object_type CL_MEM_OBJECT_IMAGE3D
        

    cdef cl_int CL_COMPLETE
        
    
    ctypedef struct cl_buffer_region:
        size_t origin
        size_t size
    
    cdef struct _cl_platform_id:
        pass

    ctypedef _cl_platform_id *cl_platform_id
    

    cdef struct _cl_device_id:
        pass
    
    ctypedef _cl_device_id *cl_device_id


    cdef struct _cl_context:
        pass

    ctypedef _cl_context *cl_context


    cdef struct _cl_command_queue:
        pass

    ctypedef _cl_command_queue *cl_command_queue
    

    cdef struct _cl_mem:
        pass

    ctypedef _cl_mem *cl_mem


    cdef struct _cl_program:
        pass

    ctypedef _cl_program *cl_program

    cdef struct _cl_kernel:
        pass

    ctypedef _cl_kernel *cl_kernel

    cdef struct _cl_event:
        pass

    ctypedef _cl_event *cl_event


    cdef struct _cl_sampler:
        pass

    ctypedef _cl_sampler *cl_sampler

    ctypedef cl_uint cl_bool

    ctypedef cl_uint cl_platform_info

    ctypedef cl_uint cl_device_info

    ctypedef cl_bitfield cl_device_address_info

    ctypedef cl_bitfield cl_device_fp_config

    ctypedef cl_uint cl_device_mem_cache_type

    ctypedef cl_uint cl_device_local_mem_type
    
    cdef cl_device_local_mem_type CL_LOCAL
    cdef cl_device_local_mem_type CL_GLOBAL

    ctypedef cl_bitfield cl_device_exec_capabilities

    ctypedef cl_bitfield cl_command_queue_properties

    ctypedef intptr_t cl_context_properties

    ctypedef cl_uint cl_context_info

    ctypedef cl_uint cl_command_queue_info

    ctypedef cl_uint cl_channel_order

    ctypedef cl_uint cl_channel_type

    ctypedef cl_bitfield cl_mem_flags

    ctypedef cl_uint cl_mem_info

    ctypedef cl_uint cl_image_info

    ctypedef cl_uint cl_addressing_mode

    ctypedef cl_uint cl_filter_mode

    ctypedef cl_uint cl_sampler_info

    ctypedef cl_bitfield cl_map_flags

    ctypedef cl_uint cl_program_info

    ctypedef cl_uint cl_program_build_info

    ctypedef cl_uint cl_kernel_work_group_info

    ctypedef cl_uint cl_event_info

    ctypedef cl_uint cl_command_type

    ctypedef cl_uint cl_profiling_info
    
    ctypedef void* CL_CALLBACK

    cdef struct _cl_image_format:
        cl_channel_order image_channel_order
        cl_channel_type image_channel_data_type

    enum cl_channel_order:
        CL_R
        CL_Rx
        CL_A
        CL_INTENSITY
        CL_LUMINANCE
        CL_RG
        CL_RGx
        CL_RA
        CL_RGB
        CL_RGBx
        CL_RGBA
        CL_ARGB
        CL_BGRA
        
    enum cl_channel_type:
        CL_SNORM_INT8
        CL_SNORM_INT16
        CL_UNORM_INT8
        CL_UNORM_INT16
        CL_UNORM_SHORT_565
        CL_UNORM_SHORT_555
        CL_UNORM_INT_101010
        CL_SIGNED_INT8
        CL_SIGNED_INT16
        CL_SIGNED_INT32
        CL_UNSIGNED_INT8
        CL_UNSIGNED_INT16
        CL_UNSIGNED_INT32
        CL_HALF_FLOAT
        CL_FLOAT

    ctypedef _cl_image_format cl_image_format

    cl_int clGetPlatformIDs(cl_uint, cl_platform_id *, cl_uint *)

    cl_int clGetPlatformInfo(cl_platform_id, cl_platform_info, size_t, void *, size_t *)

    cl_int clGetDeviceIDs(cl_platform_id, cl_device_type, cl_uint, cl_device_id *, cl_uint *)

    cl_int clGetDeviceInfo(cl_device_id, cl_device_info, size_t, void *, size_t *)

    cl_context clCreateContext(cl_context_properties *, cl_uint, cl_device_id *, void*, void *, cl_int *)

    cl_context clCreateContextFromType(cl_context_properties *, cl_device_type, void *, void *, cl_int *)

    cl_int clRetainContext(cl_context)

    cl_int clReleaseContext(cl_context)

    cl_int clGetContextInfo(cl_context, cl_context_info, size_t, void *, size_t *)

    cl_command_queue clCreateCommandQueue(cl_context, cl_device_id, cl_command_queue_properties, cl_int *)

    cl_int clRetainCommandQueue(cl_command_queue)

    cl_int clReleaseCommandQueue(cl_command_queue)

    cl_int clGetCommandQueueInfo(cl_command_queue, cl_command_queue_info, size_t, void *, size_t *)

    cl_int clSetCommandQueueProperty(cl_command_queue, cl_command_queue_properties, cl_bool, cl_command_queue_properties *)

    cl_mem clCreateBuffer(cl_context, cl_mem_flags, size_t, void *, cl_int *)

    cl_mem clCreateImage2D(cl_context, cl_mem_flags, cl_image_format *, size_t, size_t, size_t, void *, cl_int *)

    cl_mem clCreateImage3D(cl_context, cl_mem_flags, cl_image_format *, size_t, size_t, size_t, size_t, size_t, void *, cl_int *)

    cl_int clRetainMemObject(cl_mem)

    cl_int clReleaseMemObject(cl_mem)

    cl_int clGetSupportedImageFormats(cl_context, cl_mem_flags, cl_mem_object_type, cl_uint, cl_image_format *, cl_uint *)

    cl_int clGetMemObjectInfo(cl_mem, cl_mem_info, size_t, void *, size_t *)

    cl_int clGetImageInfo(cl_mem, cl_image_info, size_t, void *, size_t *)

    cl_sampler clCreateSampler(cl_context, cl_bool, cl_addressing_mode, cl_filter_mode, cl_int *)

    cl_int clRetainSampler(cl_sampler)

    cl_int clReleaseSampler(cl_sampler)

    cl_int clGetSamplerInfo(cl_sampler, cl_sampler_info, size_t, void *, size_t *)

    cl_program clCreateProgramWithSource(cl_context, cl_uint, char **, size_t *, cl_int *)

    cl_program clCreateProgramWithBinary(cl_context, cl_uint, cl_device_id *, size_t *, unsigned char **, cl_int *, cl_int *)

    cl_int clRetainProgram(cl_program)

    cl_int clReleaseProgram(cl_program)

    cl_int clBuildProgram(cl_program, cl_uint, cl_device_id *, char *, void (*pfn_notify)(cl_program, void *), void *)

    cl_int clUnloadCompiler()

    cl_int clGetProgramInfo(cl_program, cl_program_info, size_t, void *, size_t *)

    cl_int clGetProgramBuildInfo(cl_program, cl_device_id, cl_program_build_info, size_t, void *, size_t *)

    cl_kernel clCreateKernel(cl_program, char *, cl_int *)

    cl_int clCreateKernelsInProgram(cl_program, cl_uint, cl_kernel *, cl_uint *)

    cl_int clRetainKernel(cl_kernel)

    cl_int clReleaseKernel(cl_kernel)

    cl_int clSetKernelArg(cl_kernel, cl_uint, size_t, void *)

    cl_int clGetKernelInfo(cl_kernel, cl_kernel_info, size_t, void *, size_t *)

    cl_int clGetKernelWorkGroupInfo(cl_kernel, cl_device_id, cl_kernel_work_group_info, size_t, void *, size_t *)

    cl_int clWaitForEvents(cl_uint, cl_event *) nogil

    cl_int clGetEventInfo(cl_event, cl_event_info, size_t, void *, size_t *)

    cl_int clRetainEvent(cl_event)

    cl_int clReleaseEvent(cl_event)

    cl_int clGetEventProfilingInfo(cl_event, cl_profiling_info, size_t, void *, size_t *)

    cl_int clFlush(cl_command_queue) nogil

    cl_int clFinish(cl_command_queue) nogil

    cl_int clEnqueueReadBuffer(cl_command_queue, cl_mem, cl_bool, size_t, size_t, void *, cl_uint, cl_event *, cl_event *)  nogil

    cl_int clEnqueueWriteBuffer(cl_command_queue, cl_mem, cl_bool, size_t, size_t, void *, cl_uint, cl_event *, cl_event *)  nogil

    cl_int clEnqueueCopyBuffer(cl_command_queue, cl_mem, cl_mem, size_t, size_t, size_t, cl_uint, cl_event *, cl_event *) nogil

    cl_int clEnqueueReadImage(cl_command_queue, cl_mem, cl_bool, size_t *, size_t *, size_t, size_t, void *, cl_uint, cl_event *, cl_event *) nogil

    cl_int clEnqueueWriteImage(cl_command_queue, cl_mem, cl_bool, size_t *, size_t *, size_t, size_t, void *, cl_uint, cl_event *, cl_event *) nogil

    cl_int clEnqueueCopyImage(cl_command_queue, cl_mem, cl_mem, size_t *, size_t *, size_t *, cl_uint, cl_event *, cl_event *) nogil

    cl_int clEnqueueCopyImageToBuffer(cl_command_queue, cl_mem, cl_mem, size_t *, size_t *, size_t, cl_uint, cl_event *, cl_event *) nogil

    cl_int clEnqueueCopyBufferToImage(cl_command_queue, cl_mem, cl_mem, size_t, size_t *, size_t *, cl_uint, cl_event *, cl_event *) nogil

    void *clEnqueueMapBuffer(cl_command_queue, cl_mem, cl_bool, cl_map_flags, size_t, size_t, cl_uint, cl_event *, cl_event *, cl_int *) nogil

    void *clEnqueueMapImage(cl_command_queue, cl_mem, cl_bool, cl_map_flags, size_t *, size_t *, size_t *, size_t *, cl_uint, cl_event *, cl_event *, cl_int *) nogil

    cl_int clEnqueueUnmapMemObject(cl_command_queue, cl_mem, void *, cl_uint, cl_event *, cl_event *) nogil

    cl_int clEnqueueNDRangeKernel(cl_command_queue, cl_kernel, cl_uint, size_t *, size_t *, size_t *, cl_uint, cl_event *, cl_event *)

    cl_int clEnqueueTask(cl_command_queue, cl_kernel, cl_uint, cl_event *, cl_event *)

    cl_int clEnqueueNativeKernel(cl_command_queue, void *, void *, size_t, cl_uint, cl_mem *, void **, cl_uint, cl_event *, cl_event *)

    cl_int clEnqueueMarker(cl_command_queue, cl_event *)

    cl_int clEnqueueWaitForEvents(cl_command_queue, cl_uint, cl_event *)

    cl_int clEnqueueBarrier(cl_command_queue) nogil

    void *clGetExtensionFunctionAddress(char *)

    cl_event clCreateUserEvent(cl_context, cl_int *)

    cl_int clSetUserEventStatus(cl_event, cl_int)
    
    cl_int clEnqueueCopyBufferRect(cl_command_queue, cl_mem, cl_mem, size_t[3], size_t[3], size_t[3], size_t, size_t, size_t, size_t, cl_uint, cl_event *, cl_event *)
    
    cl_mem clCreateSubBuffer (cl_mem,  cl_mem_flags, cl_buffer_create_type, void *, cl_int *)
    
    cl_int clSetEventCallback (cl_event, cl_int, CL_CALLBACK, void*)
    
    cl_int clSetMemObjectDestructorCallback(cl_mem, void *, void *)
    
