��
��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
p
BatchMatMulV2
x"T
y"T
output"T"
Ttype:
2	"
adj_xbool( "
adj_ybool( 
�
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
$
DisableCopyOnRead
resource�
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
.
Identity

input"T
output"T"	
Ttype
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype�
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
�
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	�
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
d
Shape

input"T&
output"out_type��out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
�
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.12.02v2.12.0-rc1-12-g0db597d0d758��	
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
~
Adam/v/dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/v/dense_1/bias
w
'Adam/v/dense_1/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_1/bias*
_output_shapes
:*
dtype0
~
Adam/m/dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/m/dense_1/bias
w
'Adam/m/dense_1/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_1/bias*
_output_shapes
:*
dtype0
�
Adam/v/dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*&
shared_nameAdam/v/dense_1/kernel
�
)Adam/v/dense_1/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_1/kernel*
_output_shapes
:	�*
dtype0
�
Adam/m/dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*&
shared_nameAdam/m/dense_1/kernel
�
)Adam/m/dense_1/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_1/kernel*
_output_shapes
:	�*
dtype0
{
Adam/v/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*"
shared_nameAdam/v/dense/bias
t
%Adam/v/dense/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense/bias*
_output_shapes	
:�*
dtype0
{
Adam/m/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*"
shared_nameAdam/m/dense/bias
t
%Adam/m/dense/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense/bias*
_output_shapes	
:�*
dtype0
�
Adam/v/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*$
shared_nameAdam/v/dense/kernel
|
'Adam/v/dense/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense/kernel*
_output_shapes
:	�*
dtype0
�
Adam/m/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*$
shared_nameAdam/m/dense/kernel
|
'Adam/m/dense/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense/kernel*
_output_shapes
:	�*
dtype0
�
!Adam/v/movie_embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�2*2
shared_name#!Adam/v/movie_embedding/embeddings
�
5Adam/v/movie_embedding/embeddings/Read/ReadVariableOpReadVariableOp!Adam/v/movie_embedding/embeddings*
_output_shapes
:	�2*
dtype0
�
!Adam/m/movie_embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�2*2
shared_name#!Adam/m/movie_embedding/embeddings
�
5Adam/m/movie_embedding/embeddings/Read/ReadVariableOpReadVariableOp!Adam/m/movie_embedding/embeddings*
_output_shapes
:	�2*
dtype0
�
 Adam/v/user_embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�2*1
shared_name" Adam/v/user_embedding/embeddings
�
4Adam/v/user_embedding/embeddings/Read/ReadVariableOpReadVariableOp Adam/v/user_embedding/embeddings*
_output_shapes
:	�2*
dtype0
�
 Adam/m/user_embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�2*1
shared_name" Adam/m/user_embedding/embeddings
�
4Adam/m/user_embedding/embeddings/Read/ReadVariableOpReadVariableOp Adam/m/user_embedding/embeddings*
_output_shapes
:	�2*
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
f
	iterationVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:*
dtype0
y
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*
shared_namedense_1/kernel
r
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes
:	�*
dtype0
m

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_name
dense/bias
f
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes	
:�*
dtype0
u
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*
shared_namedense/kernel
n
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes
:	�*
dtype0
�
movie_embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�2*+
shared_namemovie_embedding/embeddings
�
.movie_embedding/embeddings/Read/ReadVariableOpReadVariableOpmovie_embedding/embeddings*
_output_shapes
:	�2*
dtype0
�
user_embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�2**
shared_nameuser_embedding/embeddings
�
-user_embedding/embeddings/Read/ReadVariableOpReadVariableOpuser_embedding/embeddings*
_output_shapes
:	�2*
dtype0
x
serving_default_moviePlaceholder*'
_output_shapes
:���������*
dtype0*
shape:���������
w
serving_default_userPlaceholder*'
_output_shapes
:���������*
dtype0*
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_movieserving_default_usermovie_embedding/embeddingsuser_embedding/embeddingsdense/kernel
dense/biasdense_1/kerneldense_1/bias*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *,
f'R%
#__inference_signature_wrapper_52073

NoOpNoOp
�B
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�B
value�BB�B B�B
�
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer-6
layer-7
	layer_with_weights-2
	layer-8

layer_with_weights-3

layer-9
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
* 
* 
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

embeddings*
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses
!
embeddings*
�
"	variables
#trainable_variables
$regularization_losses
%	keras_api
&__call__
*'&call_and_return_all_conditional_losses* 
�
(	variables
)trainable_variables
*regularization_losses
+	keras_api
,__call__
*-&call_and_return_all_conditional_losses* 
�
.	variables
/trainable_variables
0regularization_losses
1	keras_api
2__call__
*3&call_and_return_all_conditional_losses* 
�
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses
:_random_generator* 
�
;	variables
<trainable_variables
=regularization_losses
>	keras_api
?__call__
*@&call_and_return_all_conditional_losses

Akernel
Bbias*
�
C	variables
Dtrainable_variables
Eregularization_losses
F	keras_api
G__call__
*H&call_and_return_all_conditional_losses

Ikernel
Jbias*
.
0
!1
A2
B3
I4
J5*
.
0
!1
A2
B3
I4
J5*

K0
L1
M2
N3* 
�
Onon_trainable_variables

Players
Qmetrics
Rlayer_regularization_losses
Slayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
Ttrace_0
Utrace_1
Vtrace_2
Wtrace_3* 
6
Xtrace_0
Ytrace_1
Ztrace_2
[trace_3* 
* 
�
\
_variables
]_iterations
^_learning_rate
__index_dict
`
_momentums
a_velocities
b_update_step_xla*

cserving_default* 

0*

0*
	
K0* 
�
dnon_trainable_variables

elayers
fmetrics
glayer_regularization_losses
hlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

itrace_0* 

jtrace_0* 
mg
VARIABLE_VALUEuser_embedding/embeddings:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUE*

!0*

!0*
	
L0* 
�
knon_trainable_variables

llayers
mmetrics
nlayer_regularization_losses
olayer_metrics
	variables
trainable_variables
regularization_losses
__call__
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses*

ptrace_0* 

qtrace_0* 
nh
VARIABLE_VALUEmovie_embedding/embeddings:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
rnon_trainable_variables

slayers
tmetrics
ulayer_regularization_losses
vlayer_metrics
"	variables
#trainable_variables
$regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses* 

wtrace_0* 

xtrace_0* 
* 
* 
* 
�
ynon_trainable_variables

zlayers
{metrics
|layer_regularization_losses
}layer_metrics
(	variables
)trainable_variables
*regularization_losses
,__call__
*-&call_and_return_all_conditional_losses
&-"call_and_return_conditional_losses* 

~trace_0* 

trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
.	variables
/trainable_variables
0regularization_losses
2__call__
*3&call_and_return_all_conditional_losses
&3"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 

A0
B1*

A0
B1*
	
M0* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
;	variables
<trainable_variables
=regularization_losses
?__call__
*@&call_and_return_all_conditional_losses
&@"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
\V
VARIABLE_VALUEdense/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
dense/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

I0
J1*

I0
J1*
	
N0* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
C	variables
Dtrainable_variables
Eregularization_losses
G__call__
*H&call_and_return_all_conditional_losses
&H"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
^X
VARIABLE_VALUEdense_1/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_1/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*

�trace_0* 

�trace_0* 

�trace_0* 

�trace_0* 
* 
J
0
1
2
3
4
5
6
7
	8

9*

�0
�1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
n
]0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
4
�0
�1
�2
�3
�4
�5*
4
�0
�1
�2
�3
�4
�5*
* 
* 
* 
* 
* 
	
K0* 
* 
* 
* 
* 
* 
* 
	
L0* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
	
M0* 
* 
* 
* 
* 
* 
* 
	
N0* 
* 
* 
* 
* 
* 
* 
* 
<
�	variables
�	keras_api

�total

�count*
M
�	variables
�	keras_api

�total

�count
�
_fn_kwargs*
ke
VARIABLE_VALUE Adam/m/user_embedding/embeddings1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUE Adam/v/user_embedding/embeddings1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUE!Adam/m/movie_embedding/embeddings1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUE!Adam/v/movie_embedding/embeddings1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/m/dense/kernel1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/v/dense/kernel1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEAdam/m/dense/bias1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEAdam/v/dense/bias1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/dense_1/kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/dense_1/kernel2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/dense_1/bias2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/dense_1/bias2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameuser_embedding/embeddingsmovie_embedding/embeddingsdense/kernel
dense/biasdense_1/kerneldense_1/bias	iterationlearning_rate Adam/m/user_embedding/embeddings Adam/v/user_embedding/embeddings!Adam/m/movie_embedding/embeddings!Adam/v/movie_embedding/embeddingsAdam/m/dense/kernelAdam/v/dense/kernelAdam/m/dense/biasAdam/v/dense/biasAdam/m/dense_1/kernelAdam/v/dense_1/kernelAdam/m/dense_1/biasAdam/v/dense_1/biastotal_1count_1totalcountConst*%
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *'
f"R 
__inference__traced_save_52602
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameuser_embedding/embeddingsmovie_embedding/embeddingsdense/kernel
dense/biasdense_1/kerneldense_1/bias	iterationlearning_rate Adam/m/user_embedding/embeddings Adam/v/user_embedding/embeddings!Adam/m/movie_embedding/embeddings!Adam/v/movie_embedding/embeddingsAdam/m/dense/kernelAdam/v/dense/kernelAdam/m/dense/biasAdam/v/dense/biasAdam/m/dense_1/kernelAdam/v/dense_1/kernelAdam/m/dense_1/biasAdam/v/dense_1/biastotal_1count_1totalcount*$
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� **
f%R#
!__inference__traced_restore_52684��
�
�
__inference_loss_fn_2_52425J
7dense_kernel_regularizer_l2loss_readvariableop_resource:	�
identity��.dense/kernel/Regularizer/L2Loss/ReadVariableOp�
.dense/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp7dense_kernel_regularizer_l2loss_readvariableop_resource*
_output_shapes
:	�*
dtype0�
dense/kernel/Regularizer/L2LossL2Loss6dense/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: c
dense/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;�
dense/kernel/Regularizer/mulMul'dense/kernel/Regularizer/mul/x:output:0(dense/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: ^
IdentityIdentity dense/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: w
NoOpNoOp/^dense/kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2`
.dense/kernel/Regularizer/L2Loss/ReadVariableOp.dense/kernel/Regularizer/L2Loss/ReadVariableOp
�
�
B__inference_dense_1_layer_call_and_return_conditional_losses_52398

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�0dense_1/kernel/Regularizer/L2Loss/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
0dense_1/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
!dense_1/kernel/Regularizer/L2LossL2Loss8dense_1/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: e
 dense_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;�
dense_1/kernel/Regularizer/mulMul)dense_1/kernel/Regularizer/mul/x:output:0*dense_1/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp1^dense_1/kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2d
0dense_1/kernel/Regularizer/L2Loss/ReadVariableOp0dense_1/kernel/Regularizer/L2Loss/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
@__inference_dense_layer_call_and_return_conditional_losses_51725

inputs1
matmul_readvariableop_resource:	�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�.dense/kernel/Regularizer/L2Loss/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:�����������
.dense/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
dense/kernel/Regularizer/L2LossL2Loss6dense/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: c
dense/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;�
dense/kernel/Regularizer/mulMul'dense/kernel/Regularizer/mul/x:output:0(dense/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp/^dense/kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2`
.dense/kernel/Regularizer/L2Loss/ReadVariableOp.dense/kernel/Regularizer/L2Loss/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�	
h
>__inference_dot_layer_call_and_return_conditional_losses_51694

inputs
inputs_1
identityP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :o

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*+
_output_shapes
:���������2R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :u
ExpandDims_1
ExpandDimsinputs_1ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:���������2y
MatMulBatchMatMulV2ExpandDims:output:0ExpandDims_1:output:0*
T0*+
_output_shapes
:���������R
ShapeShapeMatMul:output:0*
T0*
_output_shapes
::��l
SqueezeSqueezeMatMul:output:0*
T0*'
_output_shapes
:���������*
squeeze_dims
X
IdentityIdentitySqueeze:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:���������2:���������2:OK
'
_output_shapes
:���������2
 
_user_specified_nameinputs:O K
'
_output_shapes
:���������2
 
_user_specified_nameinputs
�

a
B__inference_dropout_layer_call_and_return_conditional_losses_51708

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:���������Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:���������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*'
_output_shapes
:���������a
IdentityIdentitydropout/SelectV2:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
I__inference_user_embedding_layer_call_and_return_conditional_losses_52264

inputs)
embedding_lookup_52254:	�2
identity��embedding_lookup�;user_embedding/embeddings/Regularizer/L2Loss/ReadVariableOp�
embedding_lookupResourceGatherembedding_lookup_52254inputs*
Tindices0*)
_class
loc:@embedding_lookup/52254*+
_output_shapes
:���������2*
dtype0�
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*)
_class
loc:@embedding_lookup/52254*+
_output_shapes
:���������2�
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������2�
;user_embedding/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpembedding_lookup_52254*
_output_shapes
:	�2*
dtype0�
,user_embedding/embeddings/Regularizer/L2LossL2LossCuser_embedding/embeddings/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: p
+user_embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;�
)user_embedding/embeddings/Regularizer/mulMul4user_embedding/embeddings/Regularizer/mul/x:output:05user_embedding/embeddings/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:���������2�
NoOpNoOp^embedding_lookup<^user_embedding/embeddings/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: 2$
embedding_lookupembedding_lookup2z
;user_embedding/embeddings/Regularizer/L2Loss/ReadVariableOp;user_embedding/embeddings/Regularizer/L2Loss/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
%__inference_model_layer_call_fn_51933
user	
movie
unknown:	�2
	unknown_0:	�2
	unknown_1:	�
	unknown_2:	�
	unknown_3:	�
	unknown_4:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallusermovieunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_51918o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:���������:���������: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:NJ
'
_output_shapes
:���������

_user_specified_namemovie:M I
'
_output_shapes
:���������

_user_specified_nameuser
�	
�
%__inference_model_layer_call_fn_52125
inputs_0
inputs_1
unknown:	�2
	unknown_0:	�2
	unknown_1:	�
	unknown_2:	�
	unknown_3:	�
	unknown_4:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_51918o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:���������:���������: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs_1:Q M
'
_output_shapes
:���������
"
_user_specified_name
inputs_0
�D
�
@__inference_model_layer_call_and_return_conditional_losses_52244
inputs_0
inputs_19
&movie_embedding_embedding_lookup_52192:	�28
%user_embedding_embedding_lookup_52197:	�27
$dense_matmul_readvariableop_resource:	�4
%dense_biasadd_readvariableop_resource:	�9
&dense_1_matmul_readvariableop_resource:	�5
'dense_1_biasadd_readvariableop_resource:
identity��dense/BiasAdd/ReadVariableOp�dense/MatMul/ReadVariableOp�.dense/kernel/Regularizer/L2Loss/ReadVariableOp�dense_1/BiasAdd/ReadVariableOp�dense_1/MatMul/ReadVariableOp�0dense_1/kernel/Regularizer/L2Loss/ReadVariableOp� movie_embedding/embedding_lookup�<movie_embedding/embeddings/Regularizer/L2Loss/ReadVariableOp�user_embedding/embedding_lookup�;user_embedding/embeddings/Regularizer/L2Loss/ReadVariableOp�
 movie_embedding/embedding_lookupResourceGather&movie_embedding_embedding_lookup_52192inputs_1*
Tindices0*9
_class/
-+loc:@movie_embedding/embedding_lookup/52192*+
_output_shapes
:���������2*
dtype0�
)movie_embedding/embedding_lookup/IdentityIdentity)movie_embedding/embedding_lookup:output:0*
T0*9
_class/
-+loc:@movie_embedding/embedding_lookup/52192*+
_output_shapes
:���������2�
+movie_embedding/embedding_lookup/Identity_1Identity2movie_embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������2�
user_embedding/embedding_lookupResourceGather%user_embedding_embedding_lookup_52197inputs_0*
Tindices0*8
_class.
,*loc:@user_embedding/embedding_lookup/52197*+
_output_shapes
:���������2*
dtype0�
(user_embedding/embedding_lookup/IdentityIdentity(user_embedding/embedding_lookup:output:0*
T0*8
_class.
,*loc:@user_embedding/embedding_lookup/52197*+
_output_shapes
:���������2�
*user_embedding/embedding_lookup/Identity_1Identity1user_embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������2^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"����2   �
flatten/ReshapeReshape3user_embedding/embedding_lookup/Identity_1:output:0flatten/Const:output:0*
T0*'
_output_shapes
:���������2`
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"����2   �
flatten_1/ReshapeReshape4movie_embedding/embedding_lookup/Identity_1:output:0flatten_1/Const:output:0*
T0*'
_output_shapes
:���������2T
dot/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :�
dot/ExpandDims
ExpandDimsflatten/Reshape:output:0dot/ExpandDims/dim:output:0*
T0*+
_output_shapes
:���������2V
dot/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :�
dot/ExpandDims_1
ExpandDimsflatten_1/Reshape:output:0dot/ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:���������2�

dot/MatMulBatchMatMulV2dot/ExpandDims:output:0dot/ExpandDims_1:output:0*
T0*+
_output_shapes
:���������Z
	dot/ShapeShapedot/MatMul:output:0*
T0*
_output_shapes
::��t
dot/SqueezeSqueezedot/MatMul:output:0*
T0*'
_output_shapes
:���������*
squeeze_dims
d
dropout/IdentityIdentitydot/Squeeze:output:0*
T0*'
_output_shapes
:����������
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
dense/MatMulMatMuldropout/Identity:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������]

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
;user_embedding/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOp%user_embedding_embedding_lookup_52197*
_output_shapes
:	�2*
dtype0�
,user_embedding/embeddings/Regularizer/L2LossL2LossCuser_embedding/embeddings/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: p
+user_embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;�
)user_embedding/embeddings/Regularizer/mulMul4user_embedding/embeddings/Regularizer/mul/x:output:05user_embedding/embeddings/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
<movie_embedding/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOp&movie_embedding_embedding_lookup_52192*
_output_shapes
:	�2*
dtype0�
-movie_embedding/embeddings/Regularizer/L2LossL2LossDmovie_embedding/embeddings/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: q
,movie_embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;�
*movie_embedding/embeddings/Regularizer/mulMul5movie_embedding/embeddings/Regularizer/mul/x:output:06movie_embedding/embeddings/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
.dense/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
dense/kernel/Regularizer/L2LossL2Loss6dense/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: c
dense/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;�
dense/kernel/Regularizer/mulMul'dense/kernel/Regularizer/mul/x:output:0(dense/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
0dense_1/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
!dense_1/kernel/Regularizer/L2LossL2Loss8dense_1/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: e
 dense_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;�
dense_1/kernel/Regularizer/mulMul)dense_1/kernel/Regularizer/mul/x:output:0*dense_1/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: g
IdentityIdentitydense_1/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp/^dense/kernel/Regularizer/L2Loss/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp1^dense_1/kernel/Regularizer/L2Loss/ReadVariableOp!^movie_embedding/embedding_lookup=^movie_embedding/embeddings/Regularizer/L2Loss/ReadVariableOp ^user_embedding/embedding_lookup<^user_embedding/embeddings/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:���������:���������: : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2`
.dense/kernel/Regularizer/L2Loss/ReadVariableOp.dense/kernel/Regularizer/L2Loss/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2d
0dense_1/kernel/Regularizer/L2Loss/ReadVariableOp0dense_1/kernel/Regularizer/L2Loss/ReadVariableOp2D
 movie_embedding/embedding_lookup movie_embedding/embedding_lookup2|
<movie_embedding/embeddings/Regularizer/L2Loss/ReadVariableOp<movie_embedding/embeddings/Regularizer/L2Loss/ReadVariableOp2B
user_embedding/embedding_lookupuser_embedding/embedding_lookup2z
;user_embedding/embeddings/Regularizer/L2Loss/ReadVariableOp;user_embedding/embeddings/Regularizer/L2Loss/ReadVariableOp:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs_1:Q M
'
_output_shapes
:���������
"
_user_specified_name
inputs_0
�;
�
@__inference_model_layer_call_and_return_conditional_losses_51768
user	
movie(
movie_embedding_51646:	�2'
user_embedding_51663:	�2
dense_51726:	�
dense_51728:	� 
dense_1_51746:	�
dense_1_51748:
identity��dense/StatefulPartitionedCall�.dense/kernel/Regularizer/L2Loss/ReadVariableOp�dense_1/StatefulPartitionedCall�0dense_1/kernel/Regularizer/L2Loss/ReadVariableOp�dropout/StatefulPartitionedCall�'movie_embedding/StatefulPartitionedCall�<movie_embedding/embeddings/Regularizer/L2Loss/ReadVariableOp�&user_embedding/StatefulPartitionedCall�;user_embedding/embeddings/Regularizer/L2Loss/ReadVariableOp�
'movie_embedding/StatefulPartitionedCallStatefulPartitionedCallmoviemovie_embedding_51646*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������2*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_movie_embedding_layer_call_and_return_conditional_losses_51645�
&user_embedding/StatefulPartitionedCallStatefulPartitionedCalluseruser_embedding_51663*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������2*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_user_embedding_layer_call_and_return_conditional_losses_51662�
flatten/PartitionedCallPartitionedCall/user_embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_51672�
flatten_1/PartitionedCallPartitionedCall0movie_embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_flatten_1_layer_call_and_return_conditional_losses_51680�
dot/PartitionedCallPartitionedCall flatten/PartitionedCall:output:0"flatten_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *G
fBR@
>__inference_dot_layer_call_and_return_conditional_losses_51694�
dropout/StatefulPartitionedCallStatefulPartitionedCalldot/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_51708�
dense/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0dense_51726dense_51728*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_51725�
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_51746dense_1_51748*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_51745�
;user_embedding/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpuser_embedding_51663*
_output_shapes
:	�2*
dtype0�
,user_embedding/embeddings/Regularizer/L2LossL2LossCuser_embedding/embeddings/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: p
+user_embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;�
)user_embedding/embeddings/Regularizer/mulMul4user_embedding/embeddings/Regularizer/mul/x:output:05user_embedding/embeddings/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
<movie_embedding/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpmovie_embedding_51646*
_output_shapes
:	�2*
dtype0�
-movie_embedding/embeddings/Regularizer/L2LossL2LossDmovie_embedding/embeddings/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: q
,movie_embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;�
*movie_embedding/embeddings/Regularizer/mulMul5movie_embedding/embeddings/Regularizer/mul/x:output:06movie_embedding/embeddings/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: {
.dense/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpdense_51726*
_output_shapes
:	�*
dtype0�
dense/kernel/Regularizer/L2LossL2Loss6dense/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: c
dense/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;�
dense/kernel/Regularizer/mulMul'dense/kernel/Regularizer/mul/x:output:0(dense/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: 
0dense_1/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpdense_1_51746*
_output_shapes
:	�*
dtype0�
!dense_1/kernel/Regularizer/L2LossL2Loss8dense_1/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: e
 dense_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;�
dense_1/kernel/Regularizer/mulMul)dense_1/kernel/Regularizer/mul/x:output:0*dense_1/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^dense/StatefulPartitionedCall/^dense/kernel/Regularizer/L2Loss/ReadVariableOp ^dense_1/StatefulPartitionedCall1^dense_1/kernel/Regularizer/L2Loss/ReadVariableOp ^dropout/StatefulPartitionedCall(^movie_embedding/StatefulPartitionedCall=^movie_embedding/embeddings/Regularizer/L2Loss/ReadVariableOp'^user_embedding/StatefulPartitionedCall<^user_embedding/embeddings/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:���������:���������: : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2`
.dense/kernel/Regularizer/L2Loss/ReadVariableOp.dense/kernel/Regularizer/L2Loss/ReadVariableOp2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2d
0dense_1/kernel/Regularizer/L2Loss/ReadVariableOp0dense_1/kernel/Regularizer/L2Loss/ReadVariableOp2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2R
'movie_embedding/StatefulPartitionedCall'movie_embedding/StatefulPartitionedCall2|
<movie_embedding/embeddings/Regularizer/L2Loss/ReadVariableOp<movie_embedding/embeddings/Regularizer/L2Loss/ReadVariableOp2P
&user_embedding/StatefulPartitionedCall&user_embedding/StatefulPartitionedCall2z
;user_embedding/embeddings/Regularizer/L2Loss/ReadVariableOp;user_embedding/embeddings/Regularizer/L2Loss/ReadVariableOp:NJ
'
_output_shapes
:���������

_user_specified_namemovie:M I
'
_output_shapes
:���������

_user_specified_nameuser
�
�
@__inference_dense_layer_call_and_return_conditional_losses_52375

inputs1
matmul_readvariableop_resource:	�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�.dense/kernel/Regularizer/L2Loss/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:�����������
.dense/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
dense/kernel/Regularizer/L2LossL2Loss6dense/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: c
dense/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;�
dense/kernel/Regularizer/mulMul'dense/kernel/Regularizer/mul/x:output:0(dense/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp/^dense/kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2`
.dense/kernel/Regularizer/L2Loss/ReadVariableOp.dense/kernel/Regularizer/L2Loss/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�:
�
@__inference_model_layer_call_and_return_conditional_losses_51814
user	
movie(
movie_embedding_51772:	�2'
user_embedding_51775:	�2
dense_51787:	�
dense_51789:	� 
dense_1_51792:	�
dense_1_51794:
identity��dense/StatefulPartitionedCall�.dense/kernel/Regularizer/L2Loss/ReadVariableOp�dense_1/StatefulPartitionedCall�0dense_1/kernel/Regularizer/L2Loss/ReadVariableOp�'movie_embedding/StatefulPartitionedCall�<movie_embedding/embeddings/Regularizer/L2Loss/ReadVariableOp�&user_embedding/StatefulPartitionedCall�;user_embedding/embeddings/Regularizer/L2Loss/ReadVariableOp�
'movie_embedding/StatefulPartitionedCallStatefulPartitionedCallmoviemovie_embedding_51772*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������2*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_movie_embedding_layer_call_and_return_conditional_losses_51645�
&user_embedding/StatefulPartitionedCallStatefulPartitionedCalluseruser_embedding_51775*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������2*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_user_embedding_layer_call_and_return_conditional_losses_51662�
flatten/PartitionedCallPartitionedCall/user_embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_51672�
flatten_1/PartitionedCallPartitionedCall0movie_embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_flatten_1_layer_call_and_return_conditional_losses_51680�
dot/PartitionedCallPartitionedCall flatten/PartitionedCall:output:0"flatten_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *G
fBR@
>__inference_dot_layer_call_and_return_conditional_losses_51694�
dropout/PartitionedCallPartitionedCalldot/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_51785�
dense/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0dense_51787dense_51789*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_51725�
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_51792dense_1_51794*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_51745�
;user_embedding/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpuser_embedding_51775*
_output_shapes
:	�2*
dtype0�
,user_embedding/embeddings/Regularizer/L2LossL2LossCuser_embedding/embeddings/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: p
+user_embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;�
)user_embedding/embeddings/Regularizer/mulMul4user_embedding/embeddings/Regularizer/mul/x:output:05user_embedding/embeddings/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
<movie_embedding/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpmovie_embedding_51772*
_output_shapes
:	�2*
dtype0�
-movie_embedding/embeddings/Regularizer/L2LossL2LossDmovie_embedding/embeddings/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: q
,movie_embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;�
*movie_embedding/embeddings/Regularizer/mulMul5movie_embedding/embeddings/Regularizer/mul/x:output:06movie_embedding/embeddings/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: {
.dense/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpdense_51787*
_output_shapes
:	�*
dtype0�
dense/kernel/Regularizer/L2LossL2Loss6dense/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: c
dense/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;�
dense/kernel/Regularizer/mulMul'dense/kernel/Regularizer/mul/x:output:0(dense/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: 
0dense_1/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpdense_1_51792*
_output_shapes
:	�*
dtype0�
!dense_1/kernel/Regularizer/L2LossL2Loss8dense_1/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: e
 dense_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;�
dense_1/kernel/Regularizer/mulMul)dense_1/kernel/Regularizer/mul/x:output:0*dense_1/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^dense/StatefulPartitionedCall/^dense/kernel/Regularizer/L2Loss/ReadVariableOp ^dense_1/StatefulPartitionedCall1^dense_1/kernel/Regularizer/L2Loss/ReadVariableOp(^movie_embedding/StatefulPartitionedCall=^movie_embedding/embeddings/Regularizer/L2Loss/ReadVariableOp'^user_embedding/StatefulPartitionedCall<^user_embedding/embeddings/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:���������:���������: : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2`
.dense/kernel/Regularizer/L2Loss/ReadVariableOp.dense/kernel/Regularizer/L2Loss/ReadVariableOp2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2d
0dense_1/kernel/Regularizer/L2Loss/ReadVariableOp0dense_1/kernel/Regularizer/L2Loss/ReadVariableOp2R
'movie_embedding/StatefulPartitionedCall'movie_embedding/StatefulPartitionedCall2|
<movie_embedding/embeddings/Regularizer/L2Loss/ReadVariableOp<movie_embedding/embeddings/Regularizer/L2Loss/ReadVariableOp2P
&user_embedding/StatefulPartitionedCall&user_embedding/StatefulPartitionedCall2z
;user_embedding/embeddings/Regularizer/L2Loss/ReadVariableOp;user_embedding/embeddings/Regularizer/L2Loss/ReadVariableOp:NJ
'
_output_shapes
:���������

_user_specified_namemovie:M I
'
_output_shapes
:���������

_user_specified_nameuser
�
O
#__inference_dot_layer_call_fn_52312
inputs_0
inputs_1
identity�
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *G
fBR@
>__inference_dot_layer_call_and_return_conditional_losses_51694`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:���������2:���������2:QM
'
_output_shapes
:���������2
"
_user_specified_name
inputs_1:Q M
'
_output_shapes
:���������2
"
_user_specified_name
inputs_0
�
E
)__inference_flatten_1_layer_call_fn_52300

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_flatten_1_layer_call_and_return_conditional_losses_51680`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������2:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�

�
__inference_loss_fn_1_52416X
Emovie_embedding_embeddings_regularizer_l2loss_readvariableop_resource:	�2
identity��<movie_embedding/embeddings/Regularizer/L2Loss/ReadVariableOp�
<movie_embedding/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpEmovie_embedding_embeddings_regularizer_l2loss_readvariableop_resource*
_output_shapes
:	�2*
dtype0�
-movie_embedding/embeddings/Regularizer/L2LossL2LossDmovie_embedding/embeddings/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: q
,movie_embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;�
*movie_embedding/embeddings/Regularizer/mulMul5movie_embedding/embeddings/Regularizer/mul/x:output:06movie_embedding/embeddings/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: l
IdentityIdentity.movie_embedding/embeddings/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp=^movie_embedding/embeddings/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2|
<movie_embedding/embeddings/Regularizer/L2Loss/ReadVariableOp<movie_embedding/embeddings/Regularizer/L2Loss/ReadVariableOp
�
�
'__inference_dense_1_layer_call_fn_52384

inputs
unknown:	�
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_51745o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
__inference_loss_fn_0_52407W
Duser_embedding_embeddings_regularizer_l2loss_readvariableop_resource:	�2
identity��;user_embedding/embeddings/Regularizer/L2Loss/ReadVariableOp�
;user_embedding/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpDuser_embedding_embeddings_regularizer_l2loss_readvariableop_resource*
_output_shapes
:	�2*
dtype0�
,user_embedding/embeddings/Regularizer/L2LossL2LossCuser_embedding/embeddings/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: p
+user_embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;�
)user_embedding/embeddings/Regularizer/mulMul4user_embedding/embeddings/Regularizer/mul/x:output:05user_embedding/embeddings/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: k
IdentityIdentity-user_embedding/embeddings/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp<^user_embedding/embeddings/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2z
;user_embedding/embeddings/Regularizer/L2Loss/ReadVariableOp;user_embedding/embeddings/Regularizer/L2Loss/ReadVariableOp
�g
�
!__inference__traced_restore_52684
file_prefix=
*assignvariableop_user_embedding_embeddings:	�2@
-assignvariableop_1_movie_embedding_embeddings:	�22
assignvariableop_2_dense_kernel:	�,
assignvariableop_3_dense_bias:	�4
!assignvariableop_4_dense_1_kernel:	�-
assignvariableop_5_dense_1_bias:&
assignvariableop_6_iteration:	 *
 assignvariableop_7_learning_rate: F
3assignvariableop_8_adam_m_user_embedding_embeddings:	�2F
3assignvariableop_9_adam_v_user_embedding_embeddings:	�2H
5assignvariableop_10_adam_m_movie_embedding_embeddings:	�2H
5assignvariableop_11_adam_v_movie_embedding_embeddings:	�2:
'assignvariableop_12_adam_m_dense_kernel:	�:
'assignvariableop_13_adam_v_dense_kernel:	�4
%assignvariableop_14_adam_m_dense_bias:	�4
%assignvariableop_15_adam_v_dense_bias:	�<
)assignvariableop_16_adam_m_dense_1_kernel:	�<
)assignvariableop_17_adam_v_dense_1_kernel:	�5
'assignvariableop_18_adam_m_dense_1_bias:5
'assignvariableop_19_adam_v_dense_1_bias:%
assignvariableop_20_total_1: %
assignvariableop_21_count_1: #
assignvariableop_22_total: #
assignvariableop_23_count: 
identity_25��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�

value�
B�
B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*E
value<B:B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*x
_output_shapesf
d:::::::::::::::::::::::::*'
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp*assignvariableop_user_embedding_embeddingsIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp-assignvariableop_1_movie_embedding_embeddingsIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOpassignvariableop_2_dense_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOpassignvariableop_3_dense_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp!assignvariableop_4_dense_1_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOpassignvariableop_5_dense_1_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_6AssignVariableOpassignvariableop_6_iterationIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp assignvariableop_7_learning_rateIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp3assignvariableop_8_adam_m_user_embedding_embeddingsIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp3assignvariableop_9_adam_v_user_embedding_embeddingsIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp5assignvariableop_10_adam_m_movie_embedding_embeddingsIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp5assignvariableop_11_adam_v_movie_embedding_embeddingsIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp'assignvariableop_12_adam_m_dense_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp'assignvariableop_13_adam_v_dense_kernelIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp%assignvariableop_14_adam_m_dense_biasIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp%assignvariableop_15_adam_v_dense_biasIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp)assignvariableop_16_adam_m_dense_1_kernelIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp)assignvariableop_17_adam_v_dense_1_kernelIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp'assignvariableop_18_adam_m_dense_1_biasIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp'assignvariableop_19_adam_v_dense_1_biasIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOpassignvariableop_20_total_1Identity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOpassignvariableop_21_count_1Identity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOpassignvariableop_22_totalIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOpassignvariableop_23_countIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_24Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_25IdentityIdentity_24:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_25Identity_25:output:0*E
_input_shapes4
2: : : : : : : : : : : : : : : : : : : : : : : : : 2*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92$
AssignVariableOpAssignVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
�
J__inference_movie_embedding_layer_call_and_return_conditional_losses_51645

inputs)
embedding_lookup_51635:	�2
identity��embedding_lookup�<movie_embedding/embeddings/Regularizer/L2Loss/ReadVariableOp�
embedding_lookupResourceGatherembedding_lookup_51635inputs*
Tindices0*)
_class
loc:@embedding_lookup/51635*+
_output_shapes
:���������2*
dtype0�
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*)
_class
loc:@embedding_lookup/51635*+
_output_shapes
:���������2�
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������2�
<movie_embedding/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpembedding_lookup_51635*
_output_shapes
:	�2*
dtype0�
-movie_embedding/embeddings/Regularizer/L2LossL2LossDmovie_embedding/embeddings/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: q
,movie_embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;�
*movie_embedding/embeddings/Regularizer/mulMul5movie_embedding/embeddings/Regularizer/mul/x:output:06movie_embedding/embeddings/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:���������2�
NoOpNoOp^embedding_lookup=^movie_embedding/embeddings/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: 2$
embedding_lookupembedding_lookup2|
<movie_embedding/embeddings/Regularizer/L2Loss/ReadVariableOp<movie_embedding/embeddings/Regularizer/L2Loss/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
`
D__inference_flatten_1_layer_call_and_return_conditional_losses_51680

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"����2   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:���������2X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:���������2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������2:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�<
�
@__inference_model_layer_call_and_return_conditional_losses_51859

inputs
inputs_1(
movie_embedding_51822:	�2'
user_embedding_51825:	�2
dense_51832:	�
dense_51834:	� 
dense_1_51837:	�
dense_1_51839:
identity��dense/StatefulPartitionedCall�.dense/kernel/Regularizer/L2Loss/ReadVariableOp�dense_1/StatefulPartitionedCall�0dense_1/kernel/Regularizer/L2Loss/ReadVariableOp�dropout/StatefulPartitionedCall�'movie_embedding/StatefulPartitionedCall�<movie_embedding/embeddings/Regularizer/L2Loss/ReadVariableOp�&user_embedding/StatefulPartitionedCall�;user_embedding/embeddings/Regularizer/L2Loss/ReadVariableOp�
'movie_embedding/StatefulPartitionedCallStatefulPartitionedCallinputs_1movie_embedding_51822*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������2*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_movie_embedding_layer_call_and_return_conditional_losses_51645�
&user_embedding/StatefulPartitionedCallStatefulPartitionedCallinputsuser_embedding_51825*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������2*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_user_embedding_layer_call_and_return_conditional_losses_51662�
flatten/PartitionedCallPartitionedCall/user_embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_51672�
flatten_1/PartitionedCallPartitionedCall0movie_embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_flatten_1_layer_call_and_return_conditional_losses_51680�
dot/PartitionedCallPartitionedCall flatten/PartitionedCall:output:0"flatten_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *G
fBR@
>__inference_dot_layer_call_and_return_conditional_losses_51694�
dropout/StatefulPartitionedCallStatefulPartitionedCalldot/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_51708�
dense/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0dense_51832dense_51834*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_51725�
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_51837dense_1_51839*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_51745�
;user_embedding/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpuser_embedding_51825*
_output_shapes
:	�2*
dtype0�
,user_embedding/embeddings/Regularizer/L2LossL2LossCuser_embedding/embeddings/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: p
+user_embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;�
)user_embedding/embeddings/Regularizer/mulMul4user_embedding/embeddings/Regularizer/mul/x:output:05user_embedding/embeddings/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
<movie_embedding/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpmovie_embedding_51822*
_output_shapes
:	�2*
dtype0�
-movie_embedding/embeddings/Regularizer/L2LossL2LossDmovie_embedding/embeddings/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: q
,movie_embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;�
*movie_embedding/embeddings/Regularizer/mulMul5movie_embedding/embeddings/Regularizer/mul/x:output:06movie_embedding/embeddings/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: {
.dense/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpdense_51832*
_output_shapes
:	�*
dtype0�
dense/kernel/Regularizer/L2LossL2Loss6dense/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: c
dense/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;�
dense/kernel/Regularizer/mulMul'dense/kernel/Regularizer/mul/x:output:0(dense/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: 
0dense_1/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpdense_1_51837*
_output_shapes
:	�*
dtype0�
!dense_1/kernel/Regularizer/L2LossL2Loss8dense_1/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: e
 dense_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;�
dense_1/kernel/Regularizer/mulMul)dense_1/kernel/Regularizer/mul/x:output:0*dense_1/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^dense/StatefulPartitionedCall/^dense/kernel/Regularizer/L2Loss/ReadVariableOp ^dense_1/StatefulPartitionedCall1^dense_1/kernel/Regularizer/L2Loss/ReadVariableOp ^dropout/StatefulPartitionedCall(^movie_embedding/StatefulPartitionedCall=^movie_embedding/embeddings/Regularizer/L2Loss/ReadVariableOp'^user_embedding/StatefulPartitionedCall<^user_embedding/embeddings/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:���������:���������: : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2`
.dense/kernel/Regularizer/L2Loss/ReadVariableOp.dense/kernel/Regularizer/L2Loss/ReadVariableOp2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2d
0dense_1/kernel/Regularizer/L2Loss/ReadVariableOp0dense_1/kernel/Regularizer/L2Loss/ReadVariableOp2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2R
'movie_embedding/StatefulPartitionedCall'movie_embedding/StatefulPartitionedCall2|
<movie_embedding/embeddings/Regularizer/L2Loss/ReadVariableOp<movie_embedding/embeddings/Regularizer/L2Loss/ReadVariableOp2P
&user_embedding/StatefulPartitionedCall&user_embedding/StatefulPartitionedCall2z
;user_embedding/embeddings/Regularizer/L2Loss/ReadVariableOp;user_embedding/embeddings/Regularizer/L2Loss/ReadVariableOp:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
__inference_loss_fn_3_52434L
9dense_1_kernel_regularizer_l2loss_readvariableop_resource:	�
identity��0dense_1/kernel/Regularizer/L2Loss/ReadVariableOp�
0dense_1/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp9dense_1_kernel_regularizer_l2loss_readvariableop_resource*
_output_shapes
:	�*
dtype0�
!dense_1/kernel/Regularizer/L2LossL2Loss8dense_1/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: e
 dense_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;�
dense_1/kernel/Regularizer/mulMul)dense_1/kernel/Regularizer/mul/x:output:0*dense_1/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: `
IdentityIdentity"dense_1/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: y
NoOpNoOp1^dense_1/kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2d
0dense_1/kernel/Regularizer/L2Loss/ReadVariableOp0dense_1/kernel/Regularizer/L2Loss/ReadVariableOp
�
`
B__inference_dropout_layer_call_and_return_conditional_losses_51785

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:���������[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:���������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
`
B__inference_dropout_layer_call_and_return_conditional_losses_52351

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:���������[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:���������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
^
B__inference_flatten_layer_call_and_return_conditional_losses_52295

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"����2   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:���������2X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:���������2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������2:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�
�
.__inference_user_embedding_layer_call_fn_52251

inputs
unknown:	�2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������2*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_user_embedding_layer_call_and_return_conditional_losses_51662s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
C
'__inference_flatten_layer_call_fn_52289

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_51672`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������2:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
��
�
__inference__traced_save_52602
file_prefixC
0read_disablecopyonread_user_embedding_embeddings:	�2F
3read_1_disablecopyonread_movie_embedding_embeddings:	�28
%read_2_disablecopyonread_dense_kernel:	�2
#read_3_disablecopyonread_dense_bias:	�:
'read_4_disablecopyonread_dense_1_kernel:	�3
%read_5_disablecopyonread_dense_1_bias:,
"read_6_disablecopyonread_iteration:	 0
&read_7_disablecopyonread_learning_rate: L
9read_8_disablecopyonread_adam_m_user_embedding_embeddings:	�2L
9read_9_disablecopyonread_adam_v_user_embedding_embeddings:	�2N
;read_10_disablecopyonread_adam_m_movie_embedding_embeddings:	�2N
;read_11_disablecopyonread_adam_v_movie_embedding_embeddings:	�2@
-read_12_disablecopyonread_adam_m_dense_kernel:	�@
-read_13_disablecopyonread_adam_v_dense_kernel:	�:
+read_14_disablecopyonread_adam_m_dense_bias:	�:
+read_15_disablecopyonread_adam_v_dense_bias:	�B
/read_16_disablecopyonread_adam_m_dense_1_kernel:	�B
/read_17_disablecopyonread_adam_v_dense_1_kernel:	�;
-read_18_disablecopyonread_adam_m_dense_1_bias:;
-read_19_disablecopyonread_adam_v_dense_1_bias:+
!read_20_disablecopyonread_total_1: +
!read_21_disablecopyonread_count_1: )
read_22_disablecopyonread_total: )
read_23_disablecopyonread_count: 
savev2_const
identity_49��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_10/DisableCopyOnRead�Read_10/ReadVariableOp�Read_11/DisableCopyOnRead�Read_11/ReadVariableOp�Read_12/DisableCopyOnRead�Read_12/ReadVariableOp�Read_13/DisableCopyOnRead�Read_13/ReadVariableOp�Read_14/DisableCopyOnRead�Read_14/ReadVariableOp�Read_15/DisableCopyOnRead�Read_15/ReadVariableOp�Read_16/DisableCopyOnRead�Read_16/ReadVariableOp�Read_17/DisableCopyOnRead�Read_17/ReadVariableOp�Read_18/DisableCopyOnRead�Read_18/ReadVariableOp�Read_19/DisableCopyOnRead�Read_19/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_20/DisableCopyOnRead�Read_20/ReadVariableOp�Read_21/DisableCopyOnRead�Read_21/ReadVariableOp�Read_22/DisableCopyOnRead�Read_22/ReadVariableOp�Read_23/DisableCopyOnRead�Read_23/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOp�Read_7/DisableCopyOnRead�Read_7/ReadVariableOp�Read_8/DisableCopyOnRead�Read_8/ReadVariableOp�Read_9/DisableCopyOnRead�Read_9/ReadVariableOpw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �
Read/DisableCopyOnReadDisableCopyOnRead0read_disablecopyonread_user_embedding_embeddings"/device:CPU:0*
_output_shapes
 �
Read/ReadVariableOpReadVariableOp0read_disablecopyonread_user_embedding_embeddings^Read/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�2*
dtype0j
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�2b

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*
_output_shapes
:	�2�
Read_1/DisableCopyOnReadDisableCopyOnRead3read_1_disablecopyonread_movie_embedding_embeddings"/device:CPU:0*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp3read_1_disablecopyonread_movie_embedding_embeddings^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�2*
dtype0n

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�2d

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
:	�2y
Read_2/DisableCopyOnReadDisableCopyOnRead%read_2_disablecopyonread_dense_kernel"/device:CPU:0*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp%read_2_disablecopyonread_dense_kernel^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0n

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�d

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes
:	�w
Read_3/DisableCopyOnReadDisableCopyOnRead#read_3_disablecopyonread_dense_bias"/device:CPU:0*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOp#read_3_disablecopyonread_dense_bias^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0j

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�`

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes	
:�{
Read_4/DisableCopyOnReadDisableCopyOnRead'read_4_disablecopyonread_dense_1_kernel"/device:CPU:0*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp'read_4_disablecopyonread_dense_1_kernel^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0n

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�d

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes
:	�y
Read_5/DisableCopyOnReadDisableCopyOnRead%read_5_disablecopyonread_dense_1_bias"/device:CPU:0*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOp%read_5_disablecopyonread_dense_1_bias^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
:v
Read_6/DisableCopyOnReadDisableCopyOnRead"read_6_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOp"read_6_disablecopyonread_iteration^Read_6/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	f
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0	*
_output_shapes
: z
Read_7/DisableCopyOnReadDisableCopyOnRead&read_7_disablecopyonread_learning_rate"/device:CPU:0*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOp&read_7_disablecopyonread_learning_rate^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0f
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_8/DisableCopyOnReadDisableCopyOnRead9read_8_disablecopyonread_adam_m_user_embedding_embeddings"/device:CPU:0*
_output_shapes
 �
Read_8/ReadVariableOpReadVariableOp9read_8_disablecopyonread_adam_m_user_embedding_embeddings^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�2*
dtype0o
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�2f
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes
:	�2�
Read_9/DisableCopyOnReadDisableCopyOnRead9read_9_disablecopyonread_adam_v_user_embedding_embeddings"/device:CPU:0*
_output_shapes
 �
Read_9/ReadVariableOpReadVariableOp9read_9_disablecopyonread_adam_v_user_embedding_embeddings^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�2*
dtype0o
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�2f
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
:	�2�
Read_10/DisableCopyOnReadDisableCopyOnRead;read_10_disablecopyonread_adam_m_movie_embedding_embeddings"/device:CPU:0*
_output_shapes
 �
Read_10/ReadVariableOpReadVariableOp;read_10_disablecopyonread_adam_m_movie_embedding_embeddings^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�2*
dtype0p
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�2f
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes
:	�2�
Read_11/DisableCopyOnReadDisableCopyOnRead;read_11_disablecopyonread_adam_v_movie_embedding_embeddings"/device:CPU:0*
_output_shapes
 �
Read_11/ReadVariableOpReadVariableOp;read_11_disablecopyonread_adam_v_movie_embedding_embeddings^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�2*
dtype0p
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�2f
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes
:	�2�
Read_12/DisableCopyOnReadDisableCopyOnRead-read_12_disablecopyonread_adam_m_dense_kernel"/device:CPU:0*
_output_shapes
 �
Read_12/ReadVariableOpReadVariableOp-read_12_disablecopyonread_adam_m_dense_kernel^Read_12/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0p
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�f
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*
_output_shapes
:	��
Read_13/DisableCopyOnReadDisableCopyOnRead-read_13_disablecopyonread_adam_v_dense_kernel"/device:CPU:0*
_output_shapes
 �
Read_13/ReadVariableOpReadVariableOp-read_13_disablecopyonread_adam_v_dense_kernel^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0p
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�f
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes
:	��
Read_14/DisableCopyOnReadDisableCopyOnRead+read_14_disablecopyonread_adam_m_dense_bias"/device:CPU:0*
_output_shapes
 �
Read_14/ReadVariableOpReadVariableOp+read_14_disablecopyonread_adam_m_dense_bias^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_15/DisableCopyOnReadDisableCopyOnRead+read_15_disablecopyonread_adam_v_dense_bias"/device:CPU:0*
_output_shapes
 �
Read_15/ReadVariableOpReadVariableOp+read_15_disablecopyonread_adam_v_dense_bias^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_16/DisableCopyOnReadDisableCopyOnRead/read_16_disablecopyonread_adam_m_dense_1_kernel"/device:CPU:0*
_output_shapes
 �
Read_16/ReadVariableOpReadVariableOp/read_16_disablecopyonread_adam_m_dense_1_kernel^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0p
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�f
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes
:	��
Read_17/DisableCopyOnReadDisableCopyOnRead/read_17_disablecopyonread_adam_v_dense_1_kernel"/device:CPU:0*
_output_shapes
 �
Read_17/ReadVariableOpReadVariableOp/read_17_disablecopyonread_adam_v_dense_1_kernel^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0p
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�f
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes
:	��
Read_18/DisableCopyOnReadDisableCopyOnRead-read_18_disablecopyonread_adam_m_dense_1_bias"/device:CPU:0*
_output_shapes
 �
Read_18/ReadVariableOpReadVariableOp-read_18_disablecopyonread_adam_m_dense_1_bias^Read_18/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_19/DisableCopyOnReadDisableCopyOnRead-read_19_disablecopyonread_adam_v_dense_1_bias"/device:CPU:0*
_output_shapes
 �
Read_19/ReadVariableOpReadVariableOp-read_19_disablecopyonread_adam_v_dense_1_bias^Read_19/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes
:v
Read_20/DisableCopyOnReadDisableCopyOnRead!read_20_disablecopyonread_total_1"/device:CPU:0*
_output_shapes
 �
Read_20/ReadVariableOpReadVariableOp!read_20_disablecopyonread_total_1^Read_20/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_21/DisableCopyOnReadDisableCopyOnRead!read_21_disablecopyonread_count_1"/device:CPU:0*
_output_shapes
 �
Read_21/ReadVariableOpReadVariableOp!read_21_disablecopyonread_count_1^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_22/DisableCopyOnReadDisableCopyOnReadread_22_disablecopyonread_total"/device:CPU:0*
_output_shapes
 �
Read_22/ReadVariableOpReadVariableOpread_22_disablecopyonread_total^Read_22/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_23/DisableCopyOnReadDisableCopyOnReadread_23_disablecopyonread_count"/device:CPU:0*
_output_shapes
 �
Read_23/ReadVariableOpReadVariableOpread_23_disablecopyonread_count^Read_23/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�

value�
B�
B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*E
value<B:B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *'
dtypes
2	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_48Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_49IdentityIdentity_48:output:0^NoOp*
T0*
_output_shapes
: �

NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "#
identity_49Identity_49:output:0*G
_input_shapes6
4: : : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:

_output_shapes
: :C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
�
/__inference_movie_embedding_layer_call_fn_52271

inputs
unknown:	�2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������2*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_movie_embedding_layer_call_and_return_conditional_losses_51645s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�/
�
 __inference__wrapped_model_51627
user	
movie?
,model_movie_embedding_embedding_lookup_51591:	�2>
+model_user_embedding_embedding_lookup_51596:	�2=
*model_dense_matmul_readvariableop_resource:	�:
+model_dense_biasadd_readvariableop_resource:	�?
,model_dense_1_matmul_readvariableop_resource:	�;
-model_dense_1_biasadd_readvariableop_resource:
identity��"model/dense/BiasAdd/ReadVariableOp�!model/dense/MatMul/ReadVariableOp�$model/dense_1/BiasAdd/ReadVariableOp�#model/dense_1/MatMul/ReadVariableOp�&model/movie_embedding/embedding_lookup�%model/user_embedding/embedding_lookup�
&model/movie_embedding/embedding_lookupResourceGather,model_movie_embedding_embedding_lookup_51591movie*
Tindices0*?
_class5
31loc:@model/movie_embedding/embedding_lookup/51591*+
_output_shapes
:���������2*
dtype0�
/model/movie_embedding/embedding_lookup/IdentityIdentity/model/movie_embedding/embedding_lookup:output:0*
T0*?
_class5
31loc:@model/movie_embedding/embedding_lookup/51591*+
_output_shapes
:���������2�
1model/movie_embedding/embedding_lookup/Identity_1Identity8model/movie_embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������2�
%model/user_embedding/embedding_lookupResourceGather+model_user_embedding_embedding_lookup_51596user*
Tindices0*>
_class4
20loc:@model/user_embedding/embedding_lookup/51596*+
_output_shapes
:���������2*
dtype0�
.model/user_embedding/embedding_lookup/IdentityIdentity.model/user_embedding/embedding_lookup:output:0*
T0*>
_class4
20loc:@model/user_embedding/embedding_lookup/51596*+
_output_shapes
:���������2�
0model/user_embedding/embedding_lookup/Identity_1Identity7model/user_embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������2d
model/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"����2   �
model/flatten/ReshapeReshape9model/user_embedding/embedding_lookup/Identity_1:output:0model/flatten/Const:output:0*
T0*'
_output_shapes
:���������2f
model/flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"����2   �
model/flatten_1/ReshapeReshape:model/movie_embedding/embedding_lookup/Identity_1:output:0model/flatten_1/Const:output:0*
T0*'
_output_shapes
:���������2Z
model/dot/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :�
model/dot/ExpandDims
ExpandDimsmodel/flatten/Reshape:output:0!model/dot/ExpandDims/dim:output:0*
T0*+
_output_shapes
:���������2\
model/dot/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :�
model/dot/ExpandDims_1
ExpandDims model/flatten_1/Reshape:output:0#model/dot/ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:���������2�
model/dot/MatMulBatchMatMulV2model/dot/ExpandDims:output:0model/dot/ExpandDims_1:output:0*
T0*+
_output_shapes
:���������f
model/dot/ShapeShapemodel/dot/MatMul:output:0*
T0*
_output_shapes
::���
model/dot/SqueezeSqueezemodel/dot/MatMul:output:0*
T0*'
_output_shapes
:���������*
squeeze_dims
p
model/dropout/IdentityIdentitymodel/dot/Squeeze:output:0*
T0*'
_output_shapes
:����������
!model/dense/MatMul/ReadVariableOpReadVariableOp*model_dense_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
model/dense/MatMulMatMulmodel/dropout/Identity:output:0)model/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
"model/dense/BiasAdd/ReadVariableOpReadVariableOp+model_dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
model/dense/BiasAddBiasAddmodel/dense/MatMul:product:0*model/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������i
model/dense/ReluRelumodel/dense/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
#model/dense_1/MatMul/ReadVariableOpReadVariableOp,model_dense_1_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
model/dense_1/MatMulMatMulmodel/dense/Relu:activations:0+model/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
$model/dense_1/BiasAdd/ReadVariableOpReadVariableOp-model_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model/dense_1/BiasAddBiasAddmodel/dense_1/MatMul:product:0,model/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������m
IdentityIdentitymodel/dense_1/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp#^model/dense/BiasAdd/ReadVariableOp"^model/dense/MatMul/ReadVariableOp%^model/dense_1/BiasAdd/ReadVariableOp$^model/dense_1/MatMul/ReadVariableOp'^model/movie_embedding/embedding_lookup&^model/user_embedding/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:���������:���������: : : : : : 2H
"model/dense/BiasAdd/ReadVariableOp"model/dense/BiasAdd/ReadVariableOp2F
!model/dense/MatMul/ReadVariableOp!model/dense/MatMul/ReadVariableOp2L
$model/dense_1/BiasAdd/ReadVariableOp$model/dense_1/BiasAdd/ReadVariableOp2J
#model/dense_1/MatMul/ReadVariableOp#model/dense_1/MatMul/ReadVariableOp2P
&model/movie_embedding/embedding_lookup&model/movie_embedding/embedding_lookup2N
%model/user_embedding/embedding_lookup%model/user_embedding/embedding_lookup:NJ
'
_output_shapes
:���������

_user_specified_namemovie:M I
'
_output_shapes
:���������

_user_specified_nameuser
�L
�
@__inference_model_layer_call_and_return_conditional_losses_52188
inputs_0
inputs_19
&movie_embedding_embedding_lookup_52129:	�28
%user_embedding_embedding_lookup_52134:	�27
$dense_matmul_readvariableop_resource:	�4
%dense_biasadd_readvariableop_resource:	�9
&dense_1_matmul_readvariableop_resource:	�5
'dense_1_biasadd_readvariableop_resource:
identity��dense/BiasAdd/ReadVariableOp�dense/MatMul/ReadVariableOp�.dense/kernel/Regularizer/L2Loss/ReadVariableOp�dense_1/BiasAdd/ReadVariableOp�dense_1/MatMul/ReadVariableOp�0dense_1/kernel/Regularizer/L2Loss/ReadVariableOp� movie_embedding/embedding_lookup�<movie_embedding/embeddings/Regularizer/L2Loss/ReadVariableOp�user_embedding/embedding_lookup�;user_embedding/embeddings/Regularizer/L2Loss/ReadVariableOp�
 movie_embedding/embedding_lookupResourceGather&movie_embedding_embedding_lookup_52129inputs_1*
Tindices0*9
_class/
-+loc:@movie_embedding/embedding_lookup/52129*+
_output_shapes
:���������2*
dtype0�
)movie_embedding/embedding_lookup/IdentityIdentity)movie_embedding/embedding_lookup:output:0*
T0*9
_class/
-+loc:@movie_embedding/embedding_lookup/52129*+
_output_shapes
:���������2�
+movie_embedding/embedding_lookup/Identity_1Identity2movie_embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������2�
user_embedding/embedding_lookupResourceGather%user_embedding_embedding_lookup_52134inputs_0*
Tindices0*8
_class.
,*loc:@user_embedding/embedding_lookup/52134*+
_output_shapes
:���������2*
dtype0�
(user_embedding/embedding_lookup/IdentityIdentity(user_embedding/embedding_lookup:output:0*
T0*8
_class.
,*loc:@user_embedding/embedding_lookup/52134*+
_output_shapes
:���������2�
*user_embedding/embedding_lookup/Identity_1Identity1user_embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������2^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"����2   �
flatten/ReshapeReshape3user_embedding/embedding_lookup/Identity_1:output:0flatten/Const:output:0*
T0*'
_output_shapes
:���������2`
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"����2   �
flatten_1/ReshapeReshape4movie_embedding/embedding_lookup/Identity_1:output:0flatten_1/Const:output:0*
T0*'
_output_shapes
:���������2T
dot/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :�
dot/ExpandDims
ExpandDimsflatten/Reshape:output:0dot/ExpandDims/dim:output:0*
T0*+
_output_shapes
:���������2V
dot/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :�
dot/ExpandDims_1
ExpandDimsflatten_1/Reshape:output:0dot/ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:���������2�

dot/MatMulBatchMatMulV2dot/ExpandDims:output:0dot/ExpandDims_1:output:0*
T0*+
_output_shapes
:���������Z
	dot/ShapeShapedot/MatMul:output:0*
T0*
_output_shapes
::��t
dot/SqueezeSqueezedot/MatMul:output:0*
T0*'
_output_shapes
:���������*
squeeze_dims
Z
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
dropout/dropout/MulMuldot/Squeeze:output:0dropout/dropout/Const:output:0*
T0*'
_output_shapes
:���������g
dropout/dropout/ShapeShapedot/Squeeze:output:0*
T0*
_output_shapes
::���
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*'
_output_shapes
:���������*
dtype0c
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������\
dropout/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/dropout/SelectV2SelectV2 dropout/dropout/GreaterEqual:z:0dropout/dropout/Mul:z:0 dropout/dropout/Const_1:output:0*
T0*'
_output_shapes
:����������
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
dense/MatMulMatMul!dropout/dropout/SelectV2:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������]

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
;user_embedding/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOp%user_embedding_embedding_lookup_52134*
_output_shapes
:	�2*
dtype0�
,user_embedding/embeddings/Regularizer/L2LossL2LossCuser_embedding/embeddings/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: p
+user_embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;�
)user_embedding/embeddings/Regularizer/mulMul4user_embedding/embeddings/Regularizer/mul/x:output:05user_embedding/embeddings/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
<movie_embedding/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOp&movie_embedding_embedding_lookup_52129*
_output_shapes
:	�2*
dtype0�
-movie_embedding/embeddings/Regularizer/L2LossL2LossDmovie_embedding/embeddings/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: q
,movie_embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;�
*movie_embedding/embeddings/Regularizer/mulMul5movie_embedding/embeddings/Regularizer/mul/x:output:06movie_embedding/embeddings/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
.dense/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
dense/kernel/Regularizer/L2LossL2Loss6dense/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: c
dense/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;�
dense/kernel/Regularizer/mulMul'dense/kernel/Regularizer/mul/x:output:0(dense/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
0dense_1/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
!dense_1/kernel/Regularizer/L2LossL2Loss8dense_1/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: e
 dense_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;�
dense_1/kernel/Regularizer/mulMul)dense_1/kernel/Regularizer/mul/x:output:0*dense_1/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: g
IdentityIdentitydense_1/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp/^dense/kernel/Regularizer/L2Loss/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp1^dense_1/kernel/Regularizer/L2Loss/ReadVariableOp!^movie_embedding/embedding_lookup=^movie_embedding/embeddings/Regularizer/L2Loss/ReadVariableOp ^user_embedding/embedding_lookup<^user_embedding/embeddings/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:���������:���������: : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2`
.dense/kernel/Regularizer/L2Loss/ReadVariableOp.dense/kernel/Regularizer/L2Loss/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2d
0dense_1/kernel/Regularizer/L2Loss/ReadVariableOp0dense_1/kernel/Regularizer/L2Loss/ReadVariableOp2D
 movie_embedding/embedding_lookup movie_embedding/embedding_lookup2|
<movie_embedding/embeddings/Regularizer/L2Loss/ReadVariableOp<movie_embedding/embeddings/Regularizer/L2Loss/ReadVariableOp2B
user_embedding/embedding_lookupuser_embedding/embedding_lookup2z
;user_embedding/embeddings/Regularizer/L2Loss/ReadVariableOp;user_embedding/embeddings/Regularizer/L2Loss/ReadVariableOp:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs_1:Q M
'
_output_shapes
:���������
"
_user_specified_name
inputs_0
�
`
'__inference_dropout_layer_call_fn_52329

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_51708o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

a
B__inference_dropout_layer_call_and_return_conditional_losses_52346

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:���������Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:���������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*'
_output_shapes
:���������a
IdentityIdentitydropout/SelectV2:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
#__inference_signature_wrapper_52073	
movie
user
unknown:	�2
	unknown_0:	�2
	unknown_1:	�
	unknown_2:	�
	unknown_3:	�
	unknown_4:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallusermovieunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *)
f$R"
 __inference__wrapped_model_51627o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:���������:���������: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:MI
'
_output_shapes
:���������

_user_specified_nameuser:N J
'
_output_shapes
:���������

_user_specified_namemovie
�
�
J__inference_movie_embedding_layer_call_and_return_conditional_losses_52284

inputs)
embedding_lookup_52274:	�2
identity��embedding_lookup�<movie_embedding/embeddings/Regularizer/L2Loss/ReadVariableOp�
embedding_lookupResourceGatherembedding_lookup_52274inputs*
Tindices0*)
_class
loc:@embedding_lookup/52274*+
_output_shapes
:���������2*
dtype0�
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*)
_class
loc:@embedding_lookup/52274*+
_output_shapes
:���������2�
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������2�
<movie_embedding/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpembedding_lookup_52274*
_output_shapes
:	�2*
dtype0�
-movie_embedding/embeddings/Regularizer/L2LossL2LossDmovie_embedding/embeddings/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: q
,movie_embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;�
*movie_embedding/embeddings/Regularizer/mulMul5movie_embedding/embeddings/Regularizer/mul/x:output:06movie_embedding/embeddings/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:���������2�
NoOpNoOp^embedding_lookup=^movie_embedding/embeddings/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: 2$
embedding_lookupembedding_lookup2|
<movie_embedding/embeddings/Regularizer/L2Loss/ReadVariableOp<movie_embedding/embeddings/Regularizer/L2Loss/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
B__inference_dense_1_layer_call_and_return_conditional_losses_51745

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�0dense_1/kernel/Regularizer/L2Loss/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
0dense_1/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
!dense_1/kernel/Regularizer/L2LossL2Loss8dense_1/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: e
 dense_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;�
dense_1/kernel/Regularizer/mulMul)dense_1/kernel/Regularizer/mul/x:output:0*dense_1/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp1^dense_1/kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2d
0dense_1/kernel/Regularizer/L2Loss/ReadVariableOp0dense_1/kernel/Regularizer/L2Loss/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
%__inference_dense_layer_call_fn_52360

inputs
unknown:	�
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_51725p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
C
'__inference_dropout_layer_call_fn_52334

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_51785`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�	
j
>__inference_dot_layer_call_and_return_conditional_losses_52324
inputs_0
inputs_1
identityP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :q

ExpandDims
ExpandDimsinputs_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:���������2R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :u
ExpandDims_1
ExpandDimsinputs_1ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:���������2y
MatMulBatchMatMulV2ExpandDims:output:0ExpandDims_1:output:0*
T0*+
_output_shapes
:���������R
ShapeShapeMatMul:output:0*
T0*
_output_shapes
::��l
SqueezeSqueezeMatMul:output:0*
T0*'
_output_shapes
:���������*
squeeze_dims
X
IdentityIdentitySqueeze:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:���������2:���������2:QM
'
_output_shapes
:���������2
"
_user_specified_name
inputs_1:Q M
'
_output_shapes
:���������2
"
_user_specified_name
inputs_0
�
^
B__inference_flatten_layer_call_and_return_conditional_losses_51672

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"����2   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:���������2X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:���������2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������2:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�
`
D__inference_flatten_1_layer_call_and_return_conditional_losses_52306

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"����2   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:���������2X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:���������2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������2:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�
�
I__inference_user_embedding_layer_call_and_return_conditional_losses_51662

inputs)
embedding_lookup_51652:	�2
identity��embedding_lookup�;user_embedding/embeddings/Regularizer/L2Loss/ReadVariableOp�
embedding_lookupResourceGatherembedding_lookup_51652inputs*
Tindices0*)
_class
loc:@embedding_lookup/51652*+
_output_shapes
:���������2*
dtype0�
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*)
_class
loc:@embedding_lookup/51652*+
_output_shapes
:���������2�
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������2�
;user_embedding/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpembedding_lookup_51652*
_output_shapes
:	�2*
dtype0�
,user_embedding/embeddings/Regularizer/L2LossL2LossCuser_embedding/embeddings/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: p
+user_embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;�
)user_embedding/embeddings/Regularizer/mulMul4user_embedding/embeddings/Regularizer/mul/x:output:05user_embedding/embeddings/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:���������2�
NoOpNoOp^embedding_lookup<^user_embedding/embeddings/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: 2$
embedding_lookupembedding_lookup2z
;user_embedding/embeddings/Regularizer/L2Loss/ReadVariableOp;user_embedding/embeddings/Regularizer/L2Loss/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
%__inference_model_layer_call_fn_51874
user	
movie
unknown:	�2
	unknown_0:	�2
	unknown_1:	�
	unknown_2:	�
	unknown_3:	�
	unknown_4:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallusermovieunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_51859o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:���������:���������: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:NJ
'
_output_shapes
:���������

_user_specified_namemovie:M I
'
_output_shapes
:���������

_user_specified_nameuser
�	
�
%__inference_model_layer_call_fn_52107
inputs_0
inputs_1
unknown:	�2
	unknown_0:	�2
	unknown_1:	�
	unknown_2:	�
	unknown_3:	�
	unknown_4:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_51859o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:���������:���������: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs_1:Q M
'
_output_shapes
:���������
"
_user_specified_name
inputs_0
�:
�
@__inference_model_layer_call_and_return_conditional_losses_51918

inputs
inputs_1(
movie_embedding_51881:	�2'
user_embedding_51884:	�2
dense_51891:	�
dense_51893:	� 
dense_1_51896:	�
dense_1_51898:
identity��dense/StatefulPartitionedCall�.dense/kernel/Regularizer/L2Loss/ReadVariableOp�dense_1/StatefulPartitionedCall�0dense_1/kernel/Regularizer/L2Loss/ReadVariableOp�'movie_embedding/StatefulPartitionedCall�<movie_embedding/embeddings/Regularizer/L2Loss/ReadVariableOp�&user_embedding/StatefulPartitionedCall�;user_embedding/embeddings/Regularizer/L2Loss/ReadVariableOp�
'movie_embedding/StatefulPartitionedCallStatefulPartitionedCallinputs_1movie_embedding_51881*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������2*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_movie_embedding_layer_call_and_return_conditional_losses_51645�
&user_embedding/StatefulPartitionedCallStatefulPartitionedCallinputsuser_embedding_51884*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������2*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_user_embedding_layer_call_and_return_conditional_losses_51662�
flatten/PartitionedCallPartitionedCall/user_embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_51672�
flatten_1/PartitionedCallPartitionedCall0movie_embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_flatten_1_layer_call_and_return_conditional_losses_51680�
dot/PartitionedCallPartitionedCall flatten/PartitionedCall:output:0"flatten_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *G
fBR@
>__inference_dot_layer_call_and_return_conditional_losses_51694�
dropout/PartitionedCallPartitionedCalldot/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_51785�
dense/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0dense_51891dense_51893*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_51725�
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_51896dense_1_51898*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_51745�
;user_embedding/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpuser_embedding_51884*
_output_shapes
:	�2*
dtype0�
,user_embedding/embeddings/Regularizer/L2LossL2LossCuser_embedding/embeddings/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: p
+user_embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;�
)user_embedding/embeddings/Regularizer/mulMul4user_embedding/embeddings/Regularizer/mul/x:output:05user_embedding/embeddings/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
<movie_embedding/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpmovie_embedding_51881*
_output_shapes
:	�2*
dtype0�
-movie_embedding/embeddings/Regularizer/L2LossL2LossDmovie_embedding/embeddings/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: q
,movie_embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;�
*movie_embedding/embeddings/Regularizer/mulMul5movie_embedding/embeddings/Regularizer/mul/x:output:06movie_embedding/embeddings/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: {
.dense/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpdense_51891*
_output_shapes
:	�*
dtype0�
dense/kernel/Regularizer/L2LossL2Loss6dense/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: c
dense/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;�
dense/kernel/Regularizer/mulMul'dense/kernel/Regularizer/mul/x:output:0(dense/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: 
0dense_1/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpdense_1_51896*
_output_shapes
:	�*
dtype0�
!dense_1/kernel/Regularizer/L2LossL2Loss8dense_1/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: e
 dense_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;�
dense_1/kernel/Regularizer/mulMul)dense_1/kernel/Regularizer/mul/x:output:0*dense_1/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^dense/StatefulPartitionedCall/^dense/kernel/Regularizer/L2Loss/ReadVariableOp ^dense_1/StatefulPartitionedCall1^dense_1/kernel/Regularizer/L2Loss/ReadVariableOp(^movie_embedding/StatefulPartitionedCall=^movie_embedding/embeddings/Regularizer/L2Loss/ReadVariableOp'^user_embedding/StatefulPartitionedCall<^user_embedding/embeddings/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:���������:���������: : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2`
.dense/kernel/Regularizer/L2Loss/ReadVariableOp.dense/kernel/Regularizer/L2Loss/ReadVariableOp2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2d
0dense_1/kernel/Regularizer/L2Loss/ReadVariableOp0dense_1/kernel/Regularizer/L2Loss/ReadVariableOp2R
'movie_embedding/StatefulPartitionedCall'movie_embedding/StatefulPartitionedCall2|
<movie_embedding/embeddings/Regularizer/L2Loss/ReadVariableOp<movie_embedding/embeddings/Regularizer/L2Loss/ReadVariableOp2P
&user_embedding/StatefulPartitionedCall&user_embedding/StatefulPartitionedCall2z
;user_embedding/embeddings/Regularizer/L2Loss/ReadVariableOp;user_embedding/embeddings/Regularizer/L2Loss/ReadVariableOp:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs"�
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
7
movie.
serving_default_movie:0���������
5
user-
serving_default_user:0���������;
dense_10
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
�
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer-6
layer-7
	layer_with_weights-2
	layer-8

layer_with_weights-3

layer-9
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_network
"
_tf_keras_input_layer
"
_tf_keras_input_layer
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

embeddings"
_tf_keras_layer
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses
!
embeddings"
_tf_keras_layer
�
"	variables
#trainable_variables
$regularization_losses
%	keras_api
&__call__
*'&call_and_return_all_conditional_losses"
_tf_keras_layer
�
(	variables
)trainable_variables
*regularization_losses
+	keras_api
,__call__
*-&call_and_return_all_conditional_losses"
_tf_keras_layer
�
.	variables
/trainable_variables
0regularization_losses
1	keras_api
2__call__
*3&call_and_return_all_conditional_losses"
_tf_keras_layer
�
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses
:_random_generator"
_tf_keras_layer
�
;	variables
<trainable_variables
=regularization_losses
>	keras_api
?__call__
*@&call_and_return_all_conditional_losses

Akernel
Bbias"
_tf_keras_layer
�
C	variables
Dtrainable_variables
Eregularization_losses
F	keras_api
G__call__
*H&call_and_return_all_conditional_losses

Ikernel
Jbias"
_tf_keras_layer
J
0
!1
A2
B3
I4
J5"
trackable_list_wrapper
J
0
!1
A2
B3
I4
J5"
trackable_list_wrapper
<
K0
L1
M2
N3"
trackable_list_wrapper
�
Onon_trainable_variables

Players
Qmetrics
Rlayer_regularization_losses
Slayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
Ttrace_0
Utrace_1
Vtrace_2
Wtrace_32�
%__inference_model_layer_call_fn_51874
%__inference_model_layer_call_fn_51933
%__inference_model_layer_call_fn_52107
%__inference_model_layer_call_fn_52125�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zTtrace_0zUtrace_1zVtrace_2zWtrace_3
�
Xtrace_0
Ytrace_1
Ztrace_2
[trace_32�
@__inference_model_layer_call_and_return_conditional_losses_51768
@__inference_model_layer_call_and_return_conditional_losses_51814
@__inference_model_layer_call_and_return_conditional_losses_52188
@__inference_model_layer_call_and_return_conditional_losses_52244�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zXtrace_0zYtrace_1zZtrace_2z[trace_3
�B�
 __inference__wrapped_model_51627usermovie"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
\
_variables
]_iterations
^_learning_rate
__index_dict
`
_momentums
a_velocities
b_update_step_xla"
experimentalOptimizer
,
cserving_default"
signature_map
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
'
K0"
trackable_list_wrapper
�
dnon_trainable_variables

elayers
fmetrics
glayer_regularization_losses
hlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
itrace_02�
.__inference_user_embedding_layer_call_fn_52251�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zitrace_0
�
jtrace_02�
I__inference_user_embedding_layer_call_and_return_conditional_losses_52264�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zjtrace_0
,:*	�22user_embedding/embeddings
'
!0"
trackable_list_wrapper
'
!0"
trackable_list_wrapper
'
L0"
trackable_list_wrapper
�
knon_trainable_variables

llayers
mmetrics
nlayer_regularization_losses
olayer_metrics
	variables
trainable_variables
regularization_losses
__call__
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses"
_generic_user_object
�
ptrace_02�
/__inference_movie_embedding_layer_call_fn_52271�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zptrace_0
�
qtrace_02�
J__inference_movie_embedding_layer_call_and_return_conditional_losses_52284�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zqtrace_0
-:+	�22movie_embedding/embeddings
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
rnon_trainable_variables

slayers
tmetrics
ulayer_regularization_losses
vlayer_metrics
"	variables
#trainable_variables
$regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses"
_generic_user_object
�
wtrace_02�
'__inference_flatten_layer_call_fn_52289�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zwtrace_0
�
xtrace_02�
B__inference_flatten_layer_call_and_return_conditional_losses_52295�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zxtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
ynon_trainable_variables

zlayers
{metrics
|layer_regularization_losses
}layer_metrics
(	variables
)trainable_variables
*regularization_losses
,__call__
*-&call_and_return_all_conditional_losses
&-"call_and_return_conditional_losses"
_generic_user_object
�
~trace_02�
)__inference_flatten_1_layer_call_fn_52300�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z~trace_0
�
trace_02�
D__inference_flatten_1_layer_call_and_return_conditional_losses_52306�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 ztrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
.	variables
/trainable_variables
0regularization_losses
2__call__
*3&call_and_return_all_conditional_losses
&3"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
#__inference_dot_layer_call_fn_52312�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
>__inference_dot_layer_call_and_return_conditional_losses_52324�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
'__inference_dropout_layer_call_fn_52329
'__inference_dropout_layer_call_fn_52334�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
B__inference_dropout_layer_call_and_return_conditional_losses_52346
B__inference_dropout_layer_call_and_return_conditional_losses_52351�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
"
_generic_user_object
.
A0
B1"
trackable_list_wrapper
.
A0
B1"
trackable_list_wrapper
'
M0"
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
;	variables
<trainable_variables
=regularization_losses
?__call__
*@&call_and_return_all_conditional_losses
&@"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
%__inference_dense_layer_call_fn_52360�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
@__inference_dense_layer_call_and_return_conditional_losses_52375�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
:	�2dense/kernel
:�2
dense/bias
.
I0
J1"
trackable_list_wrapper
.
I0
J1"
trackable_list_wrapper
'
N0"
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
C	variables
Dtrainable_variables
Eregularization_losses
G__call__
*H&call_and_return_all_conditional_losses
&H"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
'__inference_dense_1_layer_call_fn_52384�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
B__inference_dense_1_layer_call_and_return_conditional_losses_52398�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
!:	�2dense_1/kernel
:2dense_1/bias
�
�trace_02�
__inference_loss_fn_0_52407�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
�
�trace_02�
__inference_loss_fn_1_52416�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
�
�trace_02�
__inference_loss_fn_2_52425�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
�
�trace_02�
__inference_loss_fn_3_52434�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
 "
trackable_list_wrapper
f
0
1
2
3
4
5
6
7
	8

9"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
%__inference_model_layer_call_fn_51874usermovie"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
%__inference_model_layer_call_fn_51933usermovie"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
%__inference_model_layer_call_fn_52107inputs_0inputs_1"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
%__inference_model_layer_call_fn_52125inputs_0inputs_1"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
@__inference_model_layer_call_and_return_conditional_losses_51768usermovie"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
@__inference_model_layer_call_and_return_conditional_losses_51814usermovie"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
@__inference_model_layer_call_and_return_conditional_losses_52188inputs_0inputs_1"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
@__inference_model_layer_call_and_return_conditional_losses_52244inputs_0inputs_1"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
]0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
P
�0
�1
�2
�3
�4
�5"
trackable_list_wrapper
P
�0
�1
�2
�3
�4
�5"
trackable_list_wrapper
�2��
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
�B�
#__inference_signature_wrapper_52073movieuser"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
K0"
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
.__inference_user_embedding_layer_call_fn_52251inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
I__inference_user_embedding_layer_call_and_return_conditional_losses_52264inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
L0"
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
/__inference_movie_embedding_layer_call_fn_52271inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
J__inference_movie_embedding_layer_call_and_return_conditional_losses_52284inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
'__inference_flatten_layer_call_fn_52289inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
B__inference_flatten_layer_call_and_return_conditional_losses_52295inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
)__inference_flatten_1_layer_call_fn_52300inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_flatten_1_layer_call_and_return_conditional_losses_52306inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
#__inference_dot_layer_call_fn_52312inputs_0inputs_1"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
>__inference_dot_layer_call_and_return_conditional_losses_52324inputs_0inputs_1"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
'__inference_dropout_layer_call_fn_52329inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
'__inference_dropout_layer_call_fn_52334inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
B__inference_dropout_layer_call_and_return_conditional_losses_52346inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
B__inference_dropout_layer_call_and_return_conditional_losses_52351inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
M0"
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
%__inference_dense_layer_call_fn_52360inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
@__inference_dense_layer_call_and_return_conditional_losses_52375inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
N0"
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
'__inference_dense_1_layer_call_fn_52384inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
B__inference_dense_1_layer_call_and_return_conditional_losses_52398inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
__inference_loss_fn_0_52407"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
__inference_loss_fn_1_52416"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
__inference_loss_fn_2_52425"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
__inference_loss_fn_3_52434"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
R
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
c
�	variables
�	keras_api

�total

�count
�
_fn_kwargs"
_tf_keras_metric
1:/	�22 Adam/m/user_embedding/embeddings
1:/	�22 Adam/v/user_embedding/embeddings
2:0	�22!Adam/m/movie_embedding/embeddings
2:0	�22!Adam/v/movie_embedding/embeddings
$:"	�2Adam/m/dense/kernel
$:"	�2Adam/v/dense/kernel
:�2Adam/m/dense/bias
:�2Adam/v/dense/bias
&:$	�2Adam/m/dense_1/kernel
&:$	�2Adam/v/dense_1/kernel
:2Adam/m/dense_1/bias
:2Adam/v/dense_1/bias
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper�
 __inference__wrapped_model_51627�!ABIJS�P
I�F
D�A
�
user���������
�
movie���������
� "1�.
,
dense_1!�
dense_1����������
B__inference_dense_1_layer_call_and_return_conditional_losses_52398dIJ0�-
&�#
!�
inputs����������
� ",�)
"�
tensor_0���������
� �
'__inference_dense_1_layer_call_fn_52384YIJ0�-
&�#
!�
inputs����������
� "!�
unknown����������
@__inference_dense_layer_call_and_return_conditional_losses_52375dAB/�,
%�"
 �
inputs���������
� "-�*
#� 
tensor_0����������
� �
%__inference_dense_layer_call_fn_52360YAB/�,
%�"
 �
inputs���������
� ""�
unknown�����������
>__inference_dot_layer_call_and_return_conditional_losses_52324�Z�W
P�M
K�H
"�
inputs_0���������2
"�
inputs_1���������2
� ",�)
"�
tensor_0���������
� �
#__inference_dot_layer_call_fn_52312Z�W
P�M
K�H
"�
inputs_0���������2
"�
inputs_1���������2
� "!�
unknown����������
B__inference_dropout_layer_call_and_return_conditional_losses_52346c3�0
)�&
 �
inputs���������
p
� ",�)
"�
tensor_0���������
� �
B__inference_dropout_layer_call_and_return_conditional_losses_52351c3�0
)�&
 �
inputs���������
p 
� ",�)
"�
tensor_0���������
� �
'__inference_dropout_layer_call_fn_52329X3�0
)�&
 �
inputs���������
p
� "!�
unknown����������
'__inference_dropout_layer_call_fn_52334X3�0
)�&
 �
inputs���������
p 
� "!�
unknown����������
D__inference_flatten_1_layer_call_and_return_conditional_losses_52306c3�0
)�&
$�!
inputs���������2
� ",�)
"�
tensor_0���������2
� �
)__inference_flatten_1_layer_call_fn_52300X3�0
)�&
$�!
inputs���������2
� "!�
unknown���������2�
B__inference_flatten_layer_call_and_return_conditional_losses_52295c3�0
)�&
$�!
inputs���������2
� ",�)
"�
tensor_0���������2
� �
'__inference_flatten_layer_call_fn_52289X3�0
)�&
$�!
inputs���������2
� "!�
unknown���������2C
__inference_loss_fn_0_52407$�

� 
� "�
unknown C
__inference_loss_fn_1_52416$!�

� 
� "�
unknown C
__inference_loss_fn_2_52425$A�

� 
� "�
unknown C
__inference_loss_fn_3_52434$I�

� 
� "�
unknown �
@__inference_model_layer_call_and_return_conditional_losses_51768�!ABIJ[�X
Q�N
D�A
�
user���������
�
movie���������
p

 
� ",�)
"�
tensor_0���������
� �
@__inference_model_layer_call_and_return_conditional_losses_51814�!ABIJ[�X
Q�N
D�A
�
user���������
�
movie���������
p 

 
� ",�)
"�
tensor_0���������
� �
@__inference_model_layer_call_and_return_conditional_losses_52188�!ABIJb�_
X�U
K�H
"�
inputs_0���������
"�
inputs_1���������
p

 
� ",�)
"�
tensor_0���������
� �
@__inference_model_layer_call_and_return_conditional_losses_52244�!ABIJb�_
X�U
K�H
"�
inputs_0���������
"�
inputs_1���������
p 

 
� ",�)
"�
tensor_0���������
� �
%__inference_model_layer_call_fn_51874�!ABIJ[�X
Q�N
D�A
�
user���������
�
movie���������
p

 
� "!�
unknown����������
%__inference_model_layer_call_fn_51933�!ABIJ[�X
Q�N
D�A
�
user���������
�
movie���������
p 

 
� "!�
unknown����������
%__inference_model_layer_call_fn_52107�!ABIJb�_
X�U
K�H
"�
inputs_0���������
"�
inputs_1���������
p

 
� "!�
unknown����������
%__inference_model_layer_call_fn_52125�!ABIJb�_
X�U
K�H
"�
inputs_0���������
"�
inputs_1���������
p 

 
� "!�
unknown����������
J__inference_movie_embedding_layer_call_and_return_conditional_losses_52284f!/�,
%�"
 �
inputs���������
� "0�-
&�#
tensor_0���������2
� �
/__inference_movie_embedding_layer_call_fn_52271[!/�,
%�"
 �
inputs���������
� "%�"
unknown���������2�
#__inference_signature_wrapper_52073�!ABIJ_�\
� 
U�R
(
movie�
movie���������
&
user�
user���������"1�.
,
dense_1!�
dense_1����������
I__inference_user_embedding_layer_call_and_return_conditional_losses_52264f/�,
%�"
 �
inputs���������
� "0�-
&�#
tensor_0���������2
� �
.__inference_user_embedding_layer_call_fn_52251[/�,
%�"
 �
inputs���������
� "%�"
unknown���������2