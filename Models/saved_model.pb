??
?-?,
:
Add
x"T
y"T
z"T"
Ttype:
2	
?
ArgMax

input"T
	dimension"Tidx
output"output_type" 
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
E
AssignAddVariableOp
resource
value"dtype"
dtypetype?
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
~
BiasAddGrad
out_backprop"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
?
Conv2D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

?
Conv2DBackpropFilter

input"T
filter_sizes
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

?
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

8
DivNoNan
x"T
y"T
z"T"
Ttype:	
2
B
Equal
x"T
y"T
z
"
Ttype:
2	
?
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
?

LogSoftmax
logits"T

logsoftmax"T"
Ttype:
2
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
?
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
?
MaxPoolGrad

orig_input"T
orig_output"T	
grad"T
output"T"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW"
Ttype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
=
Mul
x"T
y"T
z"T"
Ttype:
2	?
.
Neg
x"T
y"T"
Ttype:

2	
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
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
6
Pow
x"T
y"T
z"T"
Ttype:

2	
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	?
@
ReadVariableOp
resource
value"dtype"
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
V
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
?
ResourceApplyAdam
var
m
v
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T" 
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( ?
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
e
ShapeN
input"T*N
output"out_type*N"
Nint(0"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
9
Softmax
logits"T
softmax"T"
Ttype:
2
j
SoftmaxCrossEntropyWithLogits
features"T
labels"T	
loss"T
backprop"T"
Ttype:
2
?
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	
?
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape?
9
VarIsInitializedOp
resource
is_initialized
?
&
	ZerosLike
x"T
y"T"	
Ttype"serve*1.14.02v1.14.0-rc1-22-gaf24dc91b5??
\
keras_learning_phase/inputConst*
value	B
 Z *
dtype0
*
_output_shapes
: 
|
keras_learning_phasePlaceholderWithDefaultkeras_learning_phase/input*
dtype0
*
_output_shapes
: *
shape: 
?
conv2d_6_inputPlaceholder*
dtype0*/
_output_shapes
:?????????@@*$
shape:?????????@@
?
0conv2d_6/kernel/Initializer/random_uniform/shapeConst*"
_class
loc:@conv2d_6/kernel*%
valueB"             *
dtype0*
_output_shapes
:
?
.conv2d_6/kernel/Initializer/random_uniform/minConst*"
_class
loc:@conv2d_6/kernel*
valueB
 *OS?*
dtype0*
_output_shapes
: 
?
.conv2d_6/kernel/Initializer/random_uniform/maxConst*"
_class
loc:@conv2d_6/kernel*
valueB
 *OS>*
dtype0*
_output_shapes
: 
?
8conv2d_6/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_6/kernel/Initializer/random_uniform/shape*

seed *
T0*"
_class
loc:@conv2d_6/kernel*
seed2 *
dtype0*&
_output_shapes
: 
?
.conv2d_6/kernel/Initializer/random_uniform/subSub.conv2d_6/kernel/Initializer/random_uniform/max.conv2d_6/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*"
_class
loc:@conv2d_6/kernel
?
.conv2d_6/kernel/Initializer/random_uniform/mulMul8conv2d_6/kernel/Initializer/random_uniform/RandomUniform.conv2d_6/kernel/Initializer/random_uniform/sub*&
_output_shapes
: *
T0*"
_class
loc:@conv2d_6/kernel
?
*conv2d_6/kernel/Initializer/random_uniformAdd.conv2d_6/kernel/Initializer/random_uniform/mul.conv2d_6/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_6/kernel*&
_output_shapes
: 
?
conv2d_6/kernelVarHandleOp*
shape: *
dtype0*
_output_shapes
: * 
shared_nameconv2d_6/kernel*"
_class
loc:@conv2d_6/kernel*
	container 
o
0conv2d_6/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_6/kernel*
_output_shapes
: 
?
conv2d_6/kernel/AssignAssignVariableOpconv2d_6/kernel*conv2d_6/kernel/Initializer/random_uniform*"
_class
loc:@conv2d_6/kernel*
dtype0
?
#conv2d_6/kernel/Read/ReadVariableOpReadVariableOpconv2d_6/kernel*"
_class
loc:@conv2d_6/kernel*
dtype0*&
_output_shapes
: 
?
conv2d_6/bias/Initializer/zerosConst* 
_class
loc:@conv2d_6/bias*
valueB *    *
dtype0*
_output_shapes
: 
?
conv2d_6/biasVarHandleOp*
shared_nameconv2d_6/bias* 
_class
loc:@conv2d_6/bias*
	container *
shape: *
dtype0*
_output_shapes
: 
k
.conv2d_6/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_6/bias*
_output_shapes
: 
?
conv2d_6/bias/AssignAssignVariableOpconv2d_6/biasconv2d_6/bias/Initializer/zeros*
dtype0* 
_class
loc:@conv2d_6/bias
?
!conv2d_6/bias/Read/ReadVariableOpReadVariableOpconv2d_6/bias* 
_class
loc:@conv2d_6/bias*
dtype0*
_output_shapes
: 
g
conv2d_6/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
v
conv2d_6/Conv2D/ReadVariableOpReadVariableOpconv2d_6/kernel*
dtype0*&
_output_shapes
: 
?
conv2d_6/Conv2DConv2Dconv2d_6_inputconv2d_6/Conv2D/ReadVariableOp*
	dilations
*
T0*
data_formatNHWC*
strides
*
explicit_paddings
 *
use_cudnn_on_gpu(*
paddingVALID*/
_output_shapes
:?????????>> 
i
conv2d_6/BiasAdd/ReadVariableOpReadVariableOpconv2d_6/bias*
dtype0*
_output_shapes
: 
?
conv2d_6/BiasAddBiasAddconv2d_6/Conv2Dconv2d_6/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*/
_output_shapes
:?????????>> 
a
conv2d_6/ReluReluconv2d_6/BiasAdd*
T0*/
_output_shapes
:?????????>> 
?
max_pooling2d_6/MaxPoolMaxPoolconv2d_6/Relu*
T0*
strides
*
data_formatNHWC*
ksize
*
paddingVALID*/
_output_shapes
:????????? 
?
0conv2d_7/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*"
_class
loc:@conv2d_7/kernel*%
valueB"              
?
.conv2d_7/kernel/Initializer/random_uniform/minConst*"
_class
loc:@conv2d_7/kernel*
valueB
 *?ѽ*
dtype0*
_output_shapes
: 
?
.conv2d_7/kernel/Initializer/random_uniform/maxConst*"
_class
loc:@conv2d_7/kernel*
valueB
 *??=*
dtype0*
_output_shapes
: 
?
8conv2d_7/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_7/kernel/Initializer/random_uniform/shape*
dtype0*&
_output_shapes
:  *

seed *
T0*"
_class
loc:@conv2d_7/kernel*
seed2 
?
.conv2d_7/kernel/Initializer/random_uniform/subSub.conv2d_7/kernel/Initializer/random_uniform/max.conv2d_7/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_7/kernel*
_output_shapes
: 
?
.conv2d_7/kernel/Initializer/random_uniform/mulMul8conv2d_7/kernel/Initializer/random_uniform/RandomUniform.conv2d_7/kernel/Initializer/random_uniform/sub*&
_output_shapes
:  *
T0*"
_class
loc:@conv2d_7/kernel
?
*conv2d_7/kernel/Initializer/random_uniformAdd.conv2d_7/kernel/Initializer/random_uniform/mul.conv2d_7/kernel/Initializer/random_uniform/min*&
_output_shapes
:  *
T0*"
_class
loc:@conv2d_7/kernel
?
conv2d_7/kernelVarHandleOp* 
shared_nameconv2d_7/kernel*"
_class
loc:@conv2d_7/kernel*
	container *
shape:  *
dtype0*
_output_shapes
: 
o
0conv2d_7/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_7/kernel*
_output_shapes
: 
?
conv2d_7/kernel/AssignAssignVariableOpconv2d_7/kernel*conv2d_7/kernel/Initializer/random_uniform*"
_class
loc:@conv2d_7/kernel*
dtype0
?
#conv2d_7/kernel/Read/ReadVariableOpReadVariableOpconv2d_7/kernel*"
_class
loc:@conv2d_7/kernel*
dtype0*&
_output_shapes
:  
?
conv2d_7/bias/Initializer/zerosConst*
dtype0*
_output_shapes
: * 
_class
loc:@conv2d_7/bias*
valueB *    
?
conv2d_7/biasVarHandleOp*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_nameconv2d_7/bias* 
_class
loc:@conv2d_7/bias
k
.conv2d_7/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_7/bias*
_output_shapes
: 
?
conv2d_7/bias/AssignAssignVariableOpconv2d_7/biasconv2d_7/bias/Initializer/zeros* 
_class
loc:@conv2d_7/bias*
dtype0
?
!conv2d_7/bias/Read/ReadVariableOpReadVariableOpconv2d_7/bias* 
_class
loc:@conv2d_7/bias*
dtype0*
_output_shapes
: 
g
conv2d_7/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
v
conv2d_7/Conv2D/ReadVariableOpReadVariableOpconv2d_7/kernel*
dtype0*&
_output_shapes
:  
?
conv2d_7/Conv2DConv2Dmax_pooling2d_6/MaxPoolconv2d_7/Conv2D/ReadVariableOp*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
explicit_paddings
 *
paddingVALID*/
_output_shapes
:????????? *
	dilations

i
conv2d_7/BiasAdd/ReadVariableOpReadVariableOpconv2d_7/bias*
dtype0*
_output_shapes
: 
?
conv2d_7/BiasAddBiasAddconv2d_7/Conv2Dconv2d_7/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*/
_output_shapes
:????????? 
a
conv2d_7/ReluReluconv2d_7/BiasAdd*/
_output_shapes
:????????? *
T0
?
max_pooling2d_7/MaxPoolMaxPoolconv2d_7/Relu*
data_formatNHWC*
strides
*
ksize
*
paddingVALID*/
_output_shapes
:????????? *
T0
f
flatten_3/ShapeShapemax_pooling2d_7/MaxPool*
T0*
out_type0*
_output_shapes
:
g
flatten_3/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 
i
flatten_3/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
i
flatten_3/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
flatten_3/strided_sliceStridedSliceflatten_3/Shapeflatten_3/strided_slice/stackflatten_3/strided_slice/stack_1flatten_3/strided_slice/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask
d
flatten_3/Reshape/shape/1Const*
dtype0*
_output_shapes
: *
valueB :
?????????
?
flatten_3/Reshape/shapePackflatten_3/strided_sliceflatten_3/Reshape/shape/1*
T0*

axis *
N*
_output_shapes
:
?
flatten_3/ReshapeReshapemax_pooling2d_7/MaxPoolflatten_3/Reshape/shape*
T0*
Tshape0*(
_output_shapes
:??????????1
?
/dense_6/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*!
_class
loc:@dense_6/kernel*
valueB"?  ?   
?
-dense_6/kernel/Initializer/random_uniform/minConst*!
_class
loc:@dense_6/kernel*
valueB
 *????*
dtype0*
_output_shapes
: 
?
-dense_6/kernel/Initializer/random_uniform/maxConst*!
_class
loc:@dense_6/kernel*
valueB
 *???<*
dtype0*
_output_shapes
: 
?
7dense_6/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_6/kernel/Initializer/random_uniform/shape*
dtype0* 
_output_shapes
:
?1?*

seed *
T0*!
_class
loc:@dense_6/kernel*
seed2 
?
-dense_6/kernel/Initializer/random_uniform/subSub-dense_6/kernel/Initializer/random_uniform/max-dense_6/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*!
_class
loc:@dense_6/kernel
?
-dense_6/kernel/Initializer/random_uniform/mulMul7dense_6/kernel/Initializer/random_uniform/RandomUniform-dense_6/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@dense_6/kernel* 
_output_shapes
:
?1?
?
)dense_6/kernel/Initializer/random_uniformAdd-dense_6/kernel/Initializer/random_uniform/mul-dense_6/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_6/kernel* 
_output_shapes
:
?1?
?
dense_6/kernelVarHandleOp*
shared_namedense_6/kernel*!
_class
loc:@dense_6/kernel*
	container *
shape:
?1?*
dtype0*
_output_shapes
: 
m
/dense_6/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_6/kernel*
_output_shapes
: 
?
dense_6/kernel/AssignAssignVariableOpdense_6/kernel)dense_6/kernel/Initializer/random_uniform*!
_class
loc:@dense_6/kernel*
dtype0
?
"dense_6/kernel/Read/ReadVariableOpReadVariableOpdense_6/kernel*
dtype0* 
_output_shapes
:
?1?*!
_class
loc:@dense_6/kernel
?
dense_6/bias/Initializer/zerosConst*
_class
loc:@dense_6/bias*
valueB?*    *
dtype0*
_output_shapes	
:?
?
dense_6/biasVarHandleOp*
dtype0*
_output_shapes
: *
shared_namedense_6/bias*
_class
loc:@dense_6/bias*
	container *
shape:?
i
-dense_6/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_6/bias*
_output_shapes
: 
?
dense_6/bias/AssignAssignVariableOpdense_6/biasdense_6/bias/Initializer/zeros*
_class
loc:@dense_6/bias*
dtype0
?
 dense_6/bias/Read/ReadVariableOpReadVariableOpdense_6/bias*
_class
loc:@dense_6/bias*
dtype0*
_output_shapes	
:?
n
dense_6/MatMul/ReadVariableOpReadVariableOpdense_6/kernel*
dtype0* 
_output_shapes
:
?1?
?
dense_6/MatMulMatMulflatten_3/Reshapedense_6/MatMul/ReadVariableOp*
transpose_a( *(
_output_shapes
:??????????*
transpose_b( *
T0
h
dense_6/BiasAdd/ReadVariableOpReadVariableOpdense_6/bias*
dtype0*
_output_shapes	
:?
?
dense_6/BiasAddBiasAdddense_6/MatMuldense_6/BiasAdd/ReadVariableOp*
data_formatNHWC*(
_output_shapes
:??????????*
T0
X
dense_6/ReluReludense_6/BiasAdd*
T0*(
_output_shapes
:??????????
?
/dense_7/kernel/Initializer/random_uniform/shapeConst*!
_class
loc:@dense_7/kernel*
valueB"?      *
dtype0*
_output_shapes
:
?
-dense_7/kernel/Initializer/random_uniform/minConst*!
_class
loc:@dense_7/kernel*
valueB
 *??[?*
dtype0*
_output_shapes
: 
?
-dense_7/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *!
_class
loc:@dense_7/kernel*
valueB
 *??[>
?
7dense_7/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_7/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes
:	?*

seed *
T0*!
_class
loc:@dense_7/kernel*
seed2 
?
-dense_7/kernel/Initializer/random_uniform/subSub-dense_7/kernel/Initializer/random_uniform/max-dense_7/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_7/kernel*
_output_shapes
: 
?
-dense_7/kernel/Initializer/random_uniform/mulMul7dense_7/kernel/Initializer/random_uniform/RandomUniform-dense_7/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@dense_7/kernel*
_output_shapes
:	?
?
)dense_7/kernel/Initializer/random_uniformAdd-dense_7/kernel/Initializer/random_uniform/mul-dense_7/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_7/kernel*
_output_shapes
:	?
?
dense_7/kernelVarHandleOp*
dtype0*
_output_shapes
: *
shared_namedense_7/kernel*!
_class
loc:@dense_7/kernel*
	container *
shape:	?
m
/dense_7/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_7/kernel*
_output_shapes
: 
?
dense_7/kernel/AssignAssignVariableOpdense_7/kernel)dense_7/kernel/Initializer/random_uniform*!
_class
loc:@dense_7/kernel*
dtype0
?
"dense_7/kernel/Read/ReadVariableOpReadVariableOpdense_7/kernel*
dtype0*
_output_shapes
:	?*!
_class
loc:@dense_7/kernel
?
dense_7/bias/Initializer/zerosConst*
_class
loc:@dense_7/bias*
valueB*    *
dtype0*
_output_shapes
:
?
dense_7/biasVarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: *
shared_namedense_7/bias*
_class
loc:@dense_7/bias
i
-dense_7/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_7/bias*
_output_shapes
: 
?
dense_7/bias/AssignAssignVariableOpdense_7/biasdense_7/bias/Initializer/zeros*
_class
loc:@dense_7/bias*
dtype0
?
 dense_7/bias/Read/ReadVariableOpReadVariableOpdense_7/bias*
_class
loc:@dense_7/bias*
dtype0*
_output_shapes
:
m
dense_7/MatMul/ReadVariableOpReadVariableOpdense_7/kernel*
dtype0*
_output_shapes
:	?
?
dense_7/MatMulMatMuldense_6/Reludense_7/MatMul/ReadVariableOp*
transpose_a( *'
_output_shapes
:?????????*
transpose_b( *
T0
g
dense_7/BiasAdd/ReadVariableOpReadVariableOpdense_7/bias*
dtype0*
_output_shapes
:
?
dense_7/BiasAddBiasAdddense_7/MatMuldense_7/BiasAdd/ReadVariableOp*
data_formatNHWC*'
_output_shapes
:?????????*
T0
]
dense_7/SoftmaxSoftmaxdense_7/BiasAdd*
T0*'
_output_shapes
:?????????
l
PlaceholderPlaceholder*
dtype0*&
_output_shapes
: *
shape: 
O
AssignVariableOpAssignVariableOpconv2d_6/kernelPlaceholder*
dtype0
y
ReadVariableOpReadVariableOpconv2d_6/kernel^AssignVariableOp*
dtype0*&
_output_shapes
: 
V
Placeholder_1Placeholder*
dtype0*
_output_shapes
: *
shape: 
Q
AssignVariableOp_1AssignVariableOpconv2d_6/biasPlaceholder_1*
dtype0
o
ReadVariableOp_1ReadVariableOpconv2d_6/bias^AssignVariableOp_1*
dtype0*
_output_shapes
: 
n
Placeholder_2Placeholder*
dtype0*&
_output_shapes
:  *
shape:  
S
AssignVariableOp_2AssignVariableOpconv2d_7/kernelPlaceholder_2*
dtype0
}
ReadVariableOp_2ReadVariableOpconv2d_7/kernel^AssignVariableOp_2*
dtype0*&
_output_shapes
:  
V
Placeholder_3Placeholder*
dtype0*
_output_shapes
: *
shape: 
Q
AssignVariableOp_3AssignVariableOpconv2d_7/biasPlaceholder_3*
dtype0
o
ReadVariableOp_3ReadVariableOpconv2d_7/bias^AssignVariableOp_3*
dtype0*
_output_shapes
: 
b
Placeholder_4Placeholder*
dtype0* 
_output_shapes
:
?1?*
shape:
?1?
R
AssignVariableOp_4AssignVariableOpdense_6/kernelPlaceholder_4*
dtype0
v
ReadVariableOp_4ReadVariableOpdense_6/kernel^AssignVariableOp_4*
dtype0* 
_output_shapes
:
?1?
X
Placeholder_5Placeholder*
shape:?*
dtype0*
_output_shapes	
:?
P
AssignVariableOp_5AssignVariableOpdense_6/biasPlaceholder_5*
dtype0
o
ReadVariableOp_5ReadVariableOpdense_6/bias^AssignVariableOp_5*
dtype0*
_output_shapes	
:?
`
Placeholder_6Placeholder*
dtype0*
_output_shapes
:	?*
shape:	?
R
AssignVariableOp_6AssignVariableOpdense_7/kernelPlaceholder_6*
dtype0
u
ReadVariableOp_6ReadVariableOpdense_7/kernel^AssignVariableOp_6*
dtype0*
_output_shapes
:	?
V
Placeholder_7Placeholder*
dtype0*
_output_shapes
:*
shape:
P
AssignVariableOp_7AssignVariableOpdense_7/biasPlaceholder_7*
dtype0
n
ReadVariableOp_7ReadVariableOpdense_7/bias^AssignVariableOp_7*
dtype0*
_output_shapes
:
P
VarIsInitializedOpVarIsInitializedOpdense_6/kernel*
_output_shapes
: 
S
VarIsInitializedOp_1VarIsInitializedOpconv2d_6/kernel*
_output_shapes
: 
P
VarIsInitializedOp_2VarIsInitializedOpdense_7/bias*
_output_shapes
: 
P
VarIsInitializedOp_3VarIsInitializedOpdense_6/bias*
_output_shapes
: 
Q
VarIsInitializedOp_4VarIsInitializedOpconv2d_6/bias*
_output_shapes
: 
S
VarIsInitializedOp_5VarIsInitializedOpconv2d_7/kernel*
_output_shapes
: 
Q
VarIsInitializedOp_6VarIsInitializedOpconv2d_7/bias*
_output_shapes
: 
R
VarIsInitializedOp_7VarIsInitializedOpdense_7/kernel*
_output_shapes
: 
?
initNoOp^conv2d_6/bias/Assign^conv2d_6/kernel/Assign^conv2d_7/bias/Assign^conv2d_7/kernel/Assign^dense_6/bias/Assign^dense_6/kernel/Assign^dense_7/bias/Assign^dense_7/kernel/Assign
?
dense_7_targetPlaceholder*
dtype0*0
_output_shapes
:??????????????????*%
shape:??????????????????
v
total/Initializer/zerosConst*
_class

loc:@total*
valueB
 *    *
dtype0*
_output_shapes
: 
?
totalVarHandleOp*
shape: *
dtype0*
_output_shapes
: *
shared_nametotal*
_class

loc:@total*
	container 
[
&total/IsInitialized/VarIsInitializedOpVarIsInitializedOptotal*
_output_shapes
: 
g
total/AssignAssignVariableOptotaltotal/Initializer/zeros*
_class

loc:@total*
dtype0
q
total/Read/ReadVariableOpReadVariableOptotal*
dtype0*
_output_shapes
: *
_class

loc:@total
v
count/Initializer/zerosConst*
_class

loc:@count*
valueB
 *    *
dtype0*
_output_shapes
: 
?
countVarHandleOp*
dtype0*
_output_shapes
: *
shared_namecount*
_class

loc:@count*
	container *
shape: 
[
&count/IsInitialized/VarIsInitializedOpVarIsInitializedOpcount*
_output_shapes
: 
g
count/AssignAssignVariableOpcountcount/Initializer/zeros*
dtype0*
_class

loc:@count
q
count/Read/ReadVariableOpReadVariableOpcount*
_class

loc:@count*
dtype0*
_output_shapes
: 
g
metrics/acc/ArgMax/dimensionConst*
dtype0*
_output_shapes
: *
valueB :
?????????
?
metrics/acc/ArgMaxArgMaxdense_7_targetmetrics/acc/ArgMax/dimension*
T0*
output_type0	*#
_output_shapes
:?????????*

Tidx0
i
metrics/acc/ArgMax_1/dimensionConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
metrics/acc/ArgMax_1ArgMaxdense_7/Softmaxmetrics/acc/ArgMax_1/dimension*

Tidx0*
T0*
output_type0	*#
_output_shapes
:?????????
r
metrics/acc/EqualEqualmetrics/acc/ArgMaxmetrics/acc/ArgMax_1*
T0	*#
_output_shapes
:?????????
x
metrics/acc/CastCastmetrics/acc/Equal*

SrcT0
*
Truncate( *

DstT0*#
_output_shapes
:?????????
[
metrics/acc/ConstConst*
valueB: *
dtype0*
_output_shapes
:
y
metrics/acc/SumSummetrics/acc/Castmetrics/acc/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
[
metrics/acc/AssignAddVariableOpAssignAddVariableOptotalmetrics/acc/Sum*
dtype0
?
metrics/acc/ReadVariableOpReadVariableOptotal ^metrics/acc/AssignAddVariableOp^metrics/acc/Sum*
dtype0*
_output_shapes
: 
[
metrics/acc/SizeSizemetrics/acc/Cast*
T0*
out_type0*
_output_shapes
: 
l
metrics/acc/Cast_1Castmetrics/acc/Size*

SrcT0*
Truncate( *

DstT0*
_output_shapes
: 
?
!metrics/acc/AssignAddVariableOp_1AssignAddVariableOpcountmetrics/acc/Cast_1 ^metrics/acc/AssignAddVariableOp*
dtype0
?
metrics/acc/ReadVariableOp_1ReadVariableOpcount ^metrics/acc/AssignAddVariableOp"^metrics/acc/AssignAddVariableOp_1*
dtype0*
_output_shapes
: 
?
%metrics/acc/div_no_nan/ReadVariableOpReadVariableOptotal"^metrics/acc/AssignAddVariableOp_1*
dtype0*
_output_shapes
: 
?
'metrics/acc/div_no_nan/ReadVariableOp_1ReadVariableOpcount"^metrics/acc/AssignAddVariableOp_1*
dtype0*
_output_shapes
: 
?
metrics/acc/div_no_nanDivNoNan%metrics/acc/div_no_nan/ReadVariableOp'metrics/acc/div_no_nan/ReadVariableOp_1*
T0*
_output_shapes
: 
Y
metrics/acc/IdentityIdentitymetrics/acc/div_no_nan*
T0*
_output_shapes
: 
\
loss/dense_7_loss/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
z
8loss/dense_7_loss/softmax_cross_entropy_with_logits/RankConst*
value	B :*
dtype0*
_output_shapes
: 
?
9loss/dense_7_loss/softmax_cross_entropy_with_logits/ShapeShapedense_7/BiasAdd*
_output_shapes
:*
T0*
out_type0
|
:loss/dense_7_loss/softmax_cross_entropy_with_logits/Rank_1Const*
dtype0*
_output_shapes
: *
value	B :
?
;loss/dense_7_loss/softmax_cross_entropy_with_logits/Shape_1Shapedense_7/BiasAdd*
T0*
out_type0*
_output_shapes
:
{
9loss/dense_7_loss/softmax_cross_entropy_with_logits/Sub/yConst*
value	B :*
dtype0*
_output_shapes
: 
?
7loss/dense_7_loss/softmax_cross_entropy_with_logits/SubSub:loss/dense_7_loss/softmax_cross_entropy_with_logits/Rank_19loss/dense_7_loss/softmax_cross_entropy_with_logits/Sub/y*
_output_shapes
: *
T0
?
?loss/dense_7_loss/softmax_cross_entropy_with_logits/Slice/beginPack7loss/dense_7_loss/softmax_cross_entropy_with_logits/Sub*
T0*

axis *
N*
_output_shapes
:
?
>loss/dense_7_loss/softmax_cross_entropy_with_logits/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
?
9loss/dense_7_loss/softmax_cross_entropy_with_logits/SliceSlice;loss/dense_7_loss/softmax_cross_entropy_with_logits/Shape_1?loss/dense_7_loss/softmax_cross_entropy_with_logits/Slice/begin>loss/dense_7_loss/softmax_cross_entropy_with_logits/Slice/size*
_output_shapes
:*
T0*
Index0
?
Closs/dense_7_loss/softmax_cross_entropy_with_logits/concat/values_0Const*
valueB:
?????????*
dtype0*
_output_shapes
:
?
?loss/dense_7_loss/softmax_cross_entropy_with_logits/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
?
:loss/dense_7_loss/softmax_cross_entropy_with_logits/concatConcatV2Closs/dense_7_loss/softmax_cross_entropy_with_logits/concat/values_09loss/dense_7_loss/softmax_cross_entropy_with_logits/Slice?loss/dense_7_loss/softmax_cross_entropy_with_logits/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0
?
;loss/dense_7_loss/softmax_cross_entropy_with_logits/ReshapeReshapedense_7/BiasAdd:loss/dense_7_loss/softmax_cross_entropy_with_logits/concat*
T0*
Tshape0*0
_output_shapes
:??????????????????
|
:loss/dense_7_loss/softmax_cross_entropy_with_logits/Rank_2Const*
dtype0*
_output_shapes
: *
value	B :
?
;loss/dense_7_loss/softmax_cross_entropy_with_logits/Shape_2Shapedense_7_target*
T0*
out_type0*
_output_shapes
:
}
;loss/dense_7_loss/softmax_cross_entropy_with_logits/Sub_1/yConst*
value	B :*
dtype0*
_output_shapes
: 
?
9loss/dense_7_loss/softmax_cross_entropy_with_logits/Sub_1Sub:loss/dense_7_loss/softmax_cross_entropy_with_logits/Rank_2;loss/dense_7_loss/softmax_cross_entropy_with_logits/Sub_1/y*
_output_shapes
: *
T0
?
Aloss/dense_7_loss/softmax_cross_entropy_with_logits/Slice_1/beginPack9loss/dense_7_loss/softmax_cross_entropy_with_logits/Sub_1*
N*
_output_shapes
:*
T0*

axis 
?
@loss/dense_7_loss/softmax_cross_entropy_with_logits/Slice_1/sizeConst*
valueB:*
dtype0*
_output_shapes
:
?
;loss/dense_7_loss/softmax_cross_entropy_with_logits/Slice_1Slice;loss/dense_7_loss/softmax_cross_entropy_with_logits/Shape_2Aloss/dense_7_loss/softmax_cross_entropy_with_logits/Slice_1/begin@loss/dense_7_loss/softmax_cross_entropy_with_logits/Slice_1/size*
T0*
Index0*
_output_shapes
:
?
Eloss/dense_7_loss/softmax_cross_entropy_with_logits/concat_1/values_0Const*
valueB:
?????????*
dtype0*
_output_shapes
:
?
Aloss/dense_7_loss/softmax_cross_entropy_with_logits/concat_1/axisConst*
dtype0*
_output_shapes
: *
value	B : 
?
<loss/dense_7_loss/softmax_cross_entropy_with_logits/concat_1ConcatV2Eloss/dense_7_loss/softmax_cross_entropy_with_logits/concat_1/values_0;loss/dense_7_loss/softmax_cross_entropy_with_logits/Slice_1Aloss/dense_7_loss/softmax_cross_entropy_with_logits/concat_1/axis*
T0*
N*
_output_shapes
:*

Tidx0
?
=loss/dense_7_loss/softmax_cross_entropy_with_logits/Reshape_1Reshapedense_7_target<loss/dense_7_loss/softmax_cross_entropy_with_logits/concat_1*
T0*
Tshape0*0
_output_shapes
:??????????????????
?
3loss/dense_7_loss/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits;loss/dense_7_loss/softmax_cross_entropy_with_logits/Reshape=loss/dense_7_loss/softmax_cross_entropy_with_logits/Reshape_1*
T0*?
_output_shapes-
+:?????????:??????????????????
}
;loss/dense_7_loss/softmax_cross_entropy_with_logits/Sub_2/yConst*
dtype0*
_output_shapes
: *
value	B :
?
9loss/dense_7_loss/softmax_cross_entropy_with_logits/Sub_2Sub8loss/dense_7_loss/softmax_cross_entropy_with_logits/Rank;loss/dense_7_loss/softmax_cross_entropy_with_logits/Sub_2/y*
T0*
_output_shapes
: 
?
Aloss/dense_7_loss/softmax_cross_entropy_with_logits/Slice_2/beginConst*
valueB: *
dtype0*
_output_shapes
:
?
@loss/dense_7_loss/softmax_cross_entropy_with_logits/Slice_2/sizePack9loss/dense_7_loss/softmax_cross_entropy_with_logits/Sub_2*
T0*

axis *
N*
_output_shapes
:
?
;loss/dense_7_loss/softmax_cross_entropy_with_logits/Slice_2Slice9loss/dense_7_loss/softmax_cross_entropy_with_logits/ShapeAloss/dense_7_loss/softmax_cross_entropy_with_logits/Slice_2/begin@loss/dense_7_loss/softmax_cross_entropy_with_logits/Slice_2/size*
T0*
Index0*
_output_shapes
:
?
=loss/dense_7_loss/softmax_cross_entropy_with_logits/Reshape_2Reshape3loss/dense_7_loss/softmax_cross_entropy_with_logits;loss/dense_7_loss/softmax_cross_entropy_with_logits/Slice_2*#
_output_shapes
:?????????*
T0*
Tshape0
j
%loss/dense_7_loss/weighted_loss/ConstConst*
valueB
 *  ??*
dtype0*
_output_shapes
: 
?
Tloss/dense_7_loss/weighted_loss/broadcast_weights/assert_broadcastable/weights/shapeConst*
dtype0*
_output_shapes
: *
valueB 
?
Sloss/dense_7_loss/weighted_loss/broadcast_weights/assert_broadcastable/weights/rankConst*
value	B : *
dtype0*
_output_shapes
: 
?
Sloss/dense_7_loss/weighted_loss/broadcast_weights/assert_broadcastable/values/shapeShape=loss/dense_7_loss/softmax_cross_entropy_with_logits/Reshape_2*
_output_shapes
:*
T0*
out_type0
?
Rloss/dense_7_loss/weighted_loss/broadcast_weights/assert_broadcastable/values/rankConst*
dtype0*
_output_shapes
: *
value	B :
j
bloss/dense_7_loss/weighted_loss/broadcast_weights/assert_broadcastable/static_scalar_check_successNoOp
?
Aloss/dense_7_loss/weighted_loss/broadcast_weights/ones_like/ShapeShape=loss/dense_7_loss/softmax_cross_entropy_with_logits/Reshape_2c^loss/dense_7_loss/weighted_loss/broadcast_weights/assert_broadcastable/static_scalar_check_success*
T0*
out_type0*
_output_shapes
:
?
Aloss/dense_7_loss/weighted_loss/broadcast_weights/ones_like/ConstConstc^loss/dense_7_loss/weighted_loss/broadcast_weights/assert_broadcastable/static_scalar_check_success*
valueB
 *  ??*
dtype0*
_output_shapes
: 
?
;loss/dense_7_loss/weighted_loss/broadcast_weights/ones_likeFillAloss/dense_7_loss/weighted_loss/broadcast_weights/ones_like/ShapeAloss/dense_7_loss/weighted_loss/broadcast_weights/ones_like/Const*
T0*

index_type0*#
_output_shapes
:?????????
?
1loss/dense_7_loss/weighted_loss/broadcast_weightsMul%loss/dense_7_loss/weighted_loss/Const;loss/dense_7_loss/weighted_loss/broadcast_weights/ones_like*
T0*#
_output_shapes
:?????????
?
#loss/dense_7_loss/weighted_loss/MulMul=loss/dense_7_loss/softmax_cross_entropy_with_logits/Reshape_21loss/dense_7_loss/weighted_loss/broadcast_weights*
T0*#
_output_shapes
:?????????
c
loss/dense_7_loss/Const_1Const*
dtype0*
_output_shapes
:*
valueB: 
?
loss/dense_7_loss/SumSum#loss/dense_7_loss/weighted_loss/Mulloss/dense_7_loss/Const_1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
|
loss/dense_7_loss/num_elementsSize#loss/dense_7_loss/weighted_loss/Mul*
_output_shapes
: *
T0*
out_type0
?
#loss/dense_7_loss/num_elements/CastCastloss/dense_7_loss/num_elements*

SrcT0*
Truncate( *

DstT0*
_output_shapes
: 
\
loss/dense_7_loss/Const_2Const*
valueB *
dtype0*
_output_shapes
: 
?
loss/dense_7_loss/Sum_1Sumloss/dense_7_loss/Sumloss/dense_7_loss/Const_2*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
?
loss/dense_7_loss/valueDivNoNanloss/dense_7_loss/Sum_1#loss/dense_7_loss/num_elements/Cast*
_output_shapes
: *
T0
O

loss/mul/xConst*
valueB
 *  ??*
dtype0*
_output_shapes
: 
U
loss/mulMul
loss/mul/xloss/dense_7_loss/value*
T0*
_output_shapes
: 
W
Adam/gradients/ShapeConst*
dtype0*
_output_shapes
: *
valueB 
]
Adam/gradients/grad_ys_0Const*
dtype0*
_output_shapes
: *
valueB
 *  ??
~
Adam/gradients/FillFillAdam/gradients/ShapeAdam/gradients/grad_ys_0*
_output_shapes
: *
T0*

index_type0
v
 Adam/gradients/loss/mul_grad/MulMulAdam/gradients/Fillloss/dense_7_loss/value*
_output_shapes
: *
T0
k
"Adam/gradients/loss/mul_grad/Mul_1MulAdam/gradients/Fill
loss/mul/x*
T0*
_output_shapes
: 
t
1Adam/gradients/loss/dense_7_loss/value_grad/ShapeConst*
dtype0*
_output_shapes
: *
valueB 
v
3Adam/gradients/loss/dense_7_loss/value_grad/Shape_1Const*
dtype0*
_output_shapes
: *
valueB 
?
AAdam/gradients/loss/dense_7_loss/value_grad/BroadcastGradientArgsBroadcastGradientArgs1Adam/gradients/loss/dense_7_loss/value_grad/Shape3Adam/gradients/loss/dense_7_loss/value_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????
?
6Adam/gradients/loss/dense_7_loss/value_grad/div_no_nanDivNoNan"Adam/gradients/loss/mul_grad/Mul_1#loss/dense_7_loss/num_elements/Cast*
T0*
_output_shapes
: 
?
/Adam/gradients/loss/dense_7_loss/value_grad/SumSum6Adam/gradients/loss/dense_7_loss/value_grad/div_no_nanAAdam/gradients/loss/dense_7_loss/value_grad/BroadcastGradientArgs*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
?
3Adam/gradients/loss/dense_7_loss/value_grad/ReshapeReshape/Adam/gradients/loss/dense_7_loss/value_grad/Sum1Adam/gradients/loss/dense_7_loss/value_grad/Shape*
_output_shapes
: *
T0*
Tshape0
p
/Adam/gradients/loss/dense_7_loss/value_grad/NegNegloss/dense_7_loss/Sum_1*
T0*
_output_shapes
: 
?
8Adam/gradients/loss/dense_7_loss/value_grad/div_no_nan_1DivNoNan/Adam/gradients/loss/dense_7_loss/value_grad/Neg#loss/dense_7_loss/num_elements/Cast*
T0*
_output_shapes
: 
?
8Adam/gradients/loss/dense_7_loss/value_grad/div_no_nan_2DivNoNan8Adam/gradients/loss/dense_7_loss/value_grad/div_no_nan_1#loss/dense_7_loss/num_elements/Cast*
T0*
_output_shapes
: 
?
/Adam/gradients/loss/dense_7_loss/value_grad/mulMul"Adam/gradients/loss/mul_grad/Mul_18Adam/gradients/loss/dense_7_loss/value_grad/div_no_nan_2*
T0*
_output_shapes
: 
?
1Adam/gradients/loss/dense_7_loss/value_grad/Sum_1Sum/Adam/gradients/loss/dense_7_loss/value_grad/mulCAdam/gradients/loss/dense_7_loss/value_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
?
5Adam/gradients/loss/dense_7_loss/value_grad/Reshape_1Reshape1Adam/gradients/loss/dense_7_loss/value_grad/Sum_13Adam/gradients/loss/dense_7_loss/value_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
|
9Adam/gradients/loss/dense_7_loss/Sum_1_grad/Reshape/shapeConst*
valueB *
dtype0*
_output_shapes
: 
?
3Adam/gradients/loss/dense_7_loss/Sum_1_grad/ReshapeReshape3Adam/gradients/loss/dense_7_loss/value_grad/Reshape9Adam/gradients/loss/dense_7_loss/Sum_1_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
: 
t
1Adam/gradients/loss/dense_7_loss/Sum_1_grad/ConstConst*
valueB *
dtype0*
_output_shapes
: 
?
0Adam/gradients/loss/dense_7_loss/Sum_1_grad/TileTile3Adam/gradients/loss/dense_7_loss/Sum_1_grad/Reshape1Adam/gradients/loss/dense_7_loss/Sum_1_grad/Const*
T0*
_output_shapes
: *

Tmultiples0
?
7Adam/gradients/loss/dense_7_loss/Sum_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
?
1Adam/gradients/loss/dense_7_loss/Sum_grad/ReshapeReshape0Adam/gradients/loss/dense_7_loss/Sum_1_grad/Tile7Adam/gradients/loss/dense_7_loss/Sum_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
?
/Adam/gradients/loss/dense_7_loss/Sum_grad/ShapeShape#loss/dense_7_loss/weighted_loss/Mul*
_output_shapes
:*
T0*
out_type0
?
.Adam/gradients/loss/dense_7_loss/Sum_grad/TileTile1Adam/gradients/loss/dense_7_loss/Sum_grad/Reshape/Adam/gradients/loss/dense_7_loss/Sum_grad/Shape*
T0*#
_output_shapes
:?????????*

Tmultiples0
?
=Adam/gradients/loss/dense_7_loss/weighted_loss/Mul_grad/ShapeShape=loss/dense_7_loss/softmax_cross_entropy_with_logits/Reshape_2*
T0*
out_type0*
_output_shapes
:
?
?Adam/gradients/loss/dense_7_loss/weighted_loss/Mul_grad/Shape_1Shape1loss/dense_7_loss/weighted_loss/broadcast_weights*
_output_shapes
:*
T0*
out_type0
?
MAdam/gradients/loss/dense_7_loss/weighted_loss/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs=Adam/gradients/loss/dense_7_loss/weighted_loss/Mul_grad/Shape?Adam/gradients/loss/dense_7_loss/weighted_loss/Mul_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????
?
;Adam/gradients/loss/dense_7_loss/weighted_loss/Mul_grad/MulMul.Adam/gradients/loss/dense_7_loss/Sum_grad/Tile1loss/dense_7_loss/weighted_loss/broadcast_weights*#
_output_shapes
:?????????*
T0
?
;Adam/gradients/loss/dense_7_loss/weighted_loss/Mul_grad/SumSum;Adam/gradients/loss/dense_7_loss/weighted_loss/Mul_grad/MulMAdam/gradients/loss/dense_7_loss/weighted_loss/Mul_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
?
?Adam/gradients/loss/dense_7_loss/weighted_loss/Mul_grad/ReshapeReshape;Adam/gradients/loss/dense_7_loss/weighted_loss/Mul_grad/Sum=Adam/gradients/loss/dense_7_loss/weighted_loss/Mul_grad/Shape*#
_output_shapes
:?????????*
T0*
Tshape0
?
=Adam/gradients/loss/dense_7_loss/weighted_loss/Mul_grad/Mul_1Mul=loss/dense_7_loss/softmax_cross_entropy_with_logits/Reshape_2.Adam/gradients/loss/dense_7_loss/Sum_grad/Tile*
T0*#
_output_shapes
:?????????
?
=Adam/gradients/loss/dense_7_loss/weighted_loss/Mul_grad/Sum_1Sum=Adam/gradients/loss/dense_7_loss/weighted_loss/Mul_grad/Mul_1OAdam/gradients/loss/dense_7_loss/weighted_loss/Mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
?
AAdam/gradients/loss/dense_7_loss/weighted_loss/Mul_grad/Reshape_1Reshape=Adam/gradients/loss/dense_7_loss/weighted_loss/Mul_grad/Sum_1?Adam/gradients/loss/dense_7_loss/weighted_loss/Mul_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:?????????
?
WAdam/gradients/loss/dense_7_loss/softmax_cross_entropy_with_logits/Reshape_2_grad/ShapeShape3loss/dense_7_loss/softmax_cross_entropy_with_logits*
T0*
out_type0*
_output_shapes
:
?
YAdam/gradients/loss/dense_7_loss/softmax_cross_entropy_with_logits/Reshape_2_grad/ReshapeReshape?Adam/gradients/loss/dense_7_loss/weighted_loss/Mul_grad/ReshapeWAdam/gradients/loss/dense_7_loss/softmax_cross_entropy_with_logits/Reshape_2_grad/Shape*
T0*
Tshape0*#
_output_shapes
:?????????
?
Adam/gradients/zeros_like	ZerosLike5loss/dense_7_loss/softmax_cross_entropy_with_logits:1*
T0*0
_output_shapes
:??????????????????
?
VAdam/gradients/loss/dense_7_loss/softmax_cross_entropy_with_logits_grad/ExpandDims/dimConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
RAdam/gradients/loss/dense_7_loss/softmax_cross_entropy_with_logits_grad/ExpandDims
ExpandDimsYAdam/gradients/loss/dense_7_loss/softmax_cross_entropy_with_logits/Reshape_2_grad/ReshapeVAdam/gradients/loss/dense_7_loss/softmax_cross_entropy_with_logits_grad/ExpandDims/dim*

Tdim0*
T0*'
_output_shapes
:?????????
?
KAdam/gradients/loss/dense_7_loss/softmax_cross_entropy_with_logits_grad/mulMulRAdam/gradients/loss/dense_7_loss/softmax_cross_entropy_with_logits_grad/ExpandDims5loss/dense_7_loss/softmax_cross_entropy_with_logits:1*0
_output_shapes
:??????????????????*
T0
?
RAdam/gradients/loss/dense_7_loss/softmax_cross_entropy_with_logits_grad/LogSoftmax
LogSoftmax;loss/dense_7_loss/softmax_cross_entropy_with_logits/Reshape*
T0*0
_output_shapes
:??????????????????
?
KAdam/gradients/loss/dense_7_loss/softmax_cross_entropy_with_logits_grad/NegNegRAdam/gradients/loss/dense_7_loss/softmax_cross_entropy_with_logits_grad/LogSoftmax*
T0*0
_output_shapes
:??????????????????
?
XAdam/gradients/loss/dense_7_loss/softmax_cross_entropy_with_logits_grad/ExpandDims_1/dimConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
TAdam/gradients/loss/dense_7_loss/softmax_cross_entropy_with_logits_grad/ExpandDims_1
ExpandDimsYAdam/gradients/loss/dense_7_loss/softmax_cross_entropy_with_logits/Reshape_2_grad/ReshapeXAdam/gradients/loss/dense_7_loss/softmax_cross_entropy_with_logits_grad/ExpandDims_1/dim*
T0*'
_output_shapes
:?????????*

Tdim0
?
MAdam/gradients/loss/dense_7_loss/softmax_cross_entropy_with_logits_grad/mul_1MulTAdam/gradients/loss/dense_7_loss/softmax_cross_entropy_with_logits_grad/ExpandDims_1KAdam/gradients/loss/dense_7_loss/softmax_cross_entropy_with_logits_grad/Neg*
T0*0
_output_shapes
:??????????????????
?
UAdam/gradients/loss/dense_7_loss/softmax_cross_entropy_with_logits/Reshape_grad/ShapeShapedense_7/BiasAdd*
T0*
out_type0*
_output_shapes
:
?
WAdam/gradients/loss/dense_7_loss/softmax_cross_entropy_with_logits/Reshape_grad/ReshapeReshapeKAdam/gradients/loss/dense_7_loss/softmax_cross_entropy_with_logits_grad/mulUAdam/gradients/loss/dense_7_loss/softmax_cross_entropy_with_logits/Reshape_grad/Shape*
T0*
Tshape0*'
_output_shapes
:?????????
?
/Adam/gradients/dense_7/BiasAdd_grad/BiasAddGradBiasAddGradWAdam/gradients/loss/dense_7_loss/softmax_cross_entropy_with_logits/Reshape_grad/Reshape*
data_formatNHWC*
_output_shapes
:*
T0
?
)Adam/gradients/dense_7/MatMul_grad/MatMulMatMulWAdam/gradients/loss/dense_7_loss/softmax_cross_entropy_with_logits/Reshape_grad/Reshapedense_7/MatMul/ReadVariableOp*
T0*
transpose_a( *(
_output_shapes
:??????????*
transpose_b(
?
+Adam/gradients/dense_7/MatMul_grad/MatMul_1MatMuldense_6/ReluWAdam/gradients/loss/dense_7_loss/softmax_cross_entropy_with_logits/Reshape_grad/Reshape*
transpose_b( *
T0*
transpose_a(*
_output_shapes
:	?
?
)Adam/gradients/dense_6/Relu_grad/ReluGradReluGrad)Adam/gradients/dense_7/MatMul_grad/MatMuldense_6/Relu*
T0*(
_output_shapes
:??????????
?
/Adam/gradients/dense_6/BiasAdd_grad/BiasAddGradBiasAddGrad)Adam/gradients/dense_6/Relu_grad/ReluGrad*
data_formatNHWC*
_output_shapes	
:?*
T0
?
)Adam/gradients/dense_6/MatMul_grad/MatMulMatMul)Adam/gradients/dense_6/Relu_grad/ReluGraddense_6/MatMul/ReadVariableOp*
transpose_a( *(
_output_shapes
:??????????1*
transpose_b(*
T0
?
+Adam/gradients/dense_6/MatMul_grad/MatMul_1MatMulflatten_3/Reshape)Adam/gradients/dense_6/Relu_grad/ReluGrad*
T0*
transpose_a(* 
_output_shapes
:
?1?*
transpose_b( 
?
+Adam/gradients/flatten_3/Reshape_grad/ShapeShapemax_pooling2d_7/MaxPool*
_output_shapes
:*
T0*
out_type0
?
-Adam/gradients/flatten_3/Reshape_grad/ReshapeReshape)Adam/gradients/dense_6/MatMul_grad/MatMul+Adam/gradients/flatten_3/Reshape_grad/Shape*/
_output_shapes
:????????? *
T0*
Tshape0
?
7Adam/gradients/max_pooling2d_7/MaxPool_grad/MaxPoolGradMaxPoolGradconv2d_7/Relumax_pooling2d_7/MaxPool-Adam/gradients/flatten_3/Reshape_grad/Reshape*/
_output_shapes
:????????? *
T0*
data_formatNHWC*
strides
*
ksize
*
paddingVALID
?
*Adam/gradients/conv2d_7/Relu_grad/ReluGradReluGrad7Adam/gradients/max_pooling2d_7/MaxPool_grad/MaxPoolGradconv2d_7/Relu*
T0*/
_output_shapes
:????????? 
?
0Adam/gradients/conv2d_7/BiasAdd_grad/BiasAddGradBiasAddGrad*Adam/gradients/conv2d_7/Relu_grad/ReluGrad*
data_formatNHWC*
_output_shapes
: *
T0
?
*Adam/gradients/conv2d_7/Conv2D_grad/ShapeNShapeNmax_pooling2d_6/MaxPoolconv2d_7/Conv2D/ReadVariableOp*
T0*
out_type0*
N* 
_output_shapes
::
?
7Adam/gradients/conv2d_7/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput*Adam/gradients/conv2d_7/Conv2D_grad/ShapeNconv2d_7/Conv2D/ReadVariableOp*Adam/gradients/conv2d_7/Relu_grad/ReluGrad*
paddingVALID*/
_output_shapes
:????????? *
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
explicit_paddings
 
?
8Adam/gradients/conv2d_7/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFiltermax_pooling2d_6/MaxPool,Adam/gradients/conv2d_7/Conv2D_grad/ShapeN:1*Adam/gradients/conv2d_7/Relu_grad/ReluGrad*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
explicit_paddings
 *
paddingVALID*&
_output_shapes
:  *
	dilations
*
T0
?
7Adam/gradients/max_pooling2d_6/MaxPool_grad/MaxPoolGradMaxPoolGradconv2d_6/Relumax_pooling2d_6/MaxPool7Adam/gradients/conv2d_7/Conv2D_grad/Conv2DBackpropInput*/
_output_shapes
:?????????>> *
T0*
data_formatNHWC*
strides
*
ksize
*
paddingVALID
?
*Adam/gradients/conv2d_6/Relu_grad/ReluGradReluGrad7Adam/gradients/max_pooling2d_6/MaxPool_grad/MaxPoolGradconv2d_6/Relu*
T0*/
_output_shapes
:?????????>> 
?
0Adam/gradients/conv2d_6/BiasAdd_grad/BiasAddGradBiasAddGrad*Adam/gradients/conv2d_6/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
: 
?
*Adam/gradients/conv2d_6/Conv2D_grad/ShapeNShapeNconv2d_6_inputconv2d_6/Conv2D/ReadVariableOp*
T0*
out_type0*
N* 
_output_shapes
::
?
7Adam/gradients/conv2d_6/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput*Adam/gradients/conv2d_6/Conv2D_grad/ShapeNconv2d_6/Conv2D/ReadVariableOp*Adam/gradients/conv2d_6/Relu_grad/ReluGrad*/
_output_shapes
:?????????@@*
	dilations
*
T0*
data_formatNHWC*
strides
*
explicit_paddings
 *
use_cudnn_on_gpu(*
paddingVALID
?
8Adam/gradients/conv2d_6/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterconv2d_6_input,Adam/gradients/conv2d_6/Conv2D_grad/ShapeN:1*Adam/gradients/conv2d_6/Relu_grad/ReluGrad*
paddingVALID*&
_output_shapes
: *
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
explicit_paddings
 
{
Adam/iter/Initializer/zerosConst*
_class
loc:@Adam/iter*
value	B	 R *
dtype0	*
_output_shapes
: 
?
	Adam/iterVarHandleOp*
shared_name	Adam/iter*
_class
loc:@Adam/iter*
	container *
shape: *
dtype0	*
_output_shapes
: 
c
*Adam/iter/IsInitialized/VarIsInitializedOpVarIsInitializedOp	Adam/iter*
_output_shapes
: 
w
Adam/iter/AssignAssignVariableOp	Adam/iterAdam/iter/Initializer/zeros*
_class
loc:@Adam/iter*
dtype0	
}
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_class
loc:@Adam/iter*
dtype0	*
_output_shapes
: 
?
%Adam/beta_1/Initializer/initial_valueConst*
_class
loc:@Adam/beta_1*
valueB
 *fff?*
dtype0*
_output_shapes
: 
?
Adam/beta_1VarHandleOp*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_nameAdam/beta_1*
_class
loc:@Adam/beta_1
g
,Adam/beta_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/beta_1*
_output_shapes
: 
?
Adam/beta_1/AssignAssignVariableOpAdam/beta_1%Adam/beta_1/Initializer/initial_value*
_class
loc:@Adam/beta_1*
dtype0
?
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_class
loc:@Adam/beta_1*
dtype0*
_output_shapes
: 
?
%Adam/beta_2/Initializer/initial_valueConst*
_class
loc:@Adam/beta_2*
valueB
 *w??*
dtype0*
_output_shapes
: 
?
Adam/beta_2VarHandleOp*
dtype0*
_output_shapes
: *
shared_nameAdam/beta_2*
_class
loc:@Adam/beta_2*
	container *
shape: 
g
,Adam/beta_2/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/beta_2*
_output_shapes
: 
?
Adam/beta_2/AssignAssignVariableOpAdam/beta_2%Adam/beta_2/Initializer/initial_value*
_class
loc:@Adam/beta_2*
dtype0
?
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: *
_class
loc:@Adam/beta_2
?
$Adam/decay/Initializer/initial_valueConst*
_class
loc:@Adam/decay*
valueB
 *    *
dtype0*
_output_shapes
: 
?

Adam/decayVarHandleOp*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name
Adam/decay*
_class
loc:@Adam/decay
e
+Adam/decay/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Adam/decay*
_output_shapes
: 
?
Adam/decay/AssignAssignVariableOp
Adam/decay$Adam/decay/Initializer/initial_value*
_class
loc:@Adam/decay*
dtype0
?
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_class
loc:@Adam/decay*
dtype0*
_output_shapes
: 
?
,Adam/learning_rate/Initializer/initial_valueConst*%
_class
loc:@Adam/learning_rate*
valueB
 *o?:*
dtype0*
_output_shapes
: 
?
Adam/learning_rateVarHandleOp*#
shared_nameAdam/learning_rate*%
_class
loc:@Adam/learning_rate*
	container *
shape: *
dtype0*
_output_shapes
: 
u
3Adam/learning_rate/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/learning_rate*
_output_shapes
: 
?
Adam/learning_rate/AssignAssignVariableOpAdam/learning_rate,Adam/learning_rate/Initializer/initial_value*
dtype0*%
_class
loc:@Adam/learning_rate
?
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*%
_class
loc:@Adam/learning_rate*
dtype0*
_output_shapes
: 
?
(Adam/conv2d_6/kernel/m/Initializer/zerosConst*%
valueB *    *"
_class
loc:@conv2d_6/kernel*
dtype0*&
_output_shapes
: 
?
Adam/conv2d_6/kernel/mVarHandleOp*
dtype0*
_output_shapes
: *'
shared_nameAdam/conv2d_6/kernel/m*"
_class
loc:@conv2d_6/kernel*
	container *
shape: 
?
7Adam/conv2d_6/kernel/m/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/conv2d_6/kernel/m*"
_class
loc:@conv2d_6/kernel*
_output_shapes
: 
?
Adam/conv2d_6/kernel/m/AssignAssignVariableOpAdam/conv2d_6/kernel/m(Adam/conv2d_6/kernel/m/Initializer/zeros*
dtype0*"
_class
loc:@conv2d_6/kernel
?
*Adam/conv2d_6/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_6/kernel/m*"
_class
loc:@conv2d_6/kernel*
dtype0*&
_output_shapes
: 
?
&Adam/conv2d_6/bias/m/Initializer/zerosConst*
valueB *    * 
_class
loc:@conv2d_6/bias*
dtype0*
_output_shapes
: 
?
Adam/conv2d_6/bias/mVarHandleOp*
shape: *
dtype0*
_output_shapes
: *%
shared_nameAdam/conv2d_6/bias/m* 
_class
loc:@conv2d_6/bias*
	container 
?
5Adam/conv2d_6/bias/m/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/conv2d_6/bias/m* 
_class
loc:@conv2d_6/bias*
_output_shapes
: 
?
Adam/conv2d_6/bias/m/AssignAssignVariableOpAdam/conv2d_6/bias/m&Adam/conv2d_6/bias/m/Initializer/zeros* 
_class
loc:@conv2d_6/bias*
dtype0
?
(Adam/conv2d_6/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_6/bias/m* 
_class
loc:@conv2d_6/bias*
dtype0*
_output_shapes
: 
?
8Adam/conv2d_7/kernel/m/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*%
valueB"              *"
_class
loc:@conv2d_7/kernel
?
.Adam/conv2d_7/kernel/m/Initializer/zeros/ConstConst*
valueB
 *    *"
_class
loc:@conv2d_7/kernel*
dtype0*
_output_shapes
: 
?
(Adam/conv2d_7/kernel/m/Initializer/zerosFill8Adam/conv2d_7/kernel/m/Initializer/zeros/shape_as_tensor.Adam/conv2d_7/kernel/m/Initializer/zeros/Const*
T0*

index_type0*"
_class
loc:@conv2d_7/kernel*&
_output_shapes
:  
?
Adam/conv2d_7/kernel/mVarHandleOp*
dtype0*
_output_shapes
: *'
shared_nameAdam/conv2d_7/kernel/m*"
_class
loc:@conv2d_7/kernel*
	container *
shape:  
?
7Adam/conv2d_7/kernel/m/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/conv2d_7/kernel/m*"
_class
loc:@conv2d_7/kernel*
_output_shapes
: 
?
Adam/conv2d_7/kernel/m/AssignAssignVariableOpAdam/conv2d_7/kernel/m(Adam/conv2d_7/kernel/m/Initializer/zeros*"
_class
loc:@conv2d_7/kernel*
dtype0
?
*Adam/conv2d_7/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_7/kernel/m*
dtype0*&
_output_shapes
:  *"
_class
loc:@conv2d_7/kernel
?
&Adam/conv2d_7/bias/m/Initializer/zerosConst*
valueB *    * 
_class
loc:@conv2d_7/bias*
dtype0*
_output_shapes
: 
?
Adam/conv2d_7/bias/mVarHandleOp*
	container *
shape: *
dtype0*
_output_shapes
: *%
shared_nameAdam/conv2d_7/bias/m* 
_class
loc:@conv2d_7/bias
?
5Adam/conv2d_7/bias/m/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/conv2d_7/bias/m* 
_class
loc:@conv2d_7/bias*
_output_shapes
: 
?
Adam/conv2d_7/bias/m/AssignAssignVariableOpAdam/conv2d_7/bias/m&Adam/conv2d_7/bias/m/Initializer/zeros* 
_class
loc:@conv2d_7/bias*
dtype0
?
(Adam/conv2d_7/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_7/bias/m* 
_class
loc:@conv2d_7/bias*
dtype0*
_output_shapes
: 
?
7Adam/dense_6/kernel/m/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB"?  ?   *!
_class
loc:@dense_6/kernel
?
-Adam/dense_6/kernel/m/Initializer/zeros/ConstConst*
valueB
 *    *!
_class
loc:@dense_6/kernel*
dtype0*
_output_shapes
: 
?
'Adam/dense_6/kernel/m/Initializer/zerosFill7Adam/dense_6/kernel/m/Initializer/zeros/shape_as_tensor-Adam/dense_6/kernel/m/Initializer/zeros/Const* 
_output_shapes
:
?1?*
T0*

index_type0*!
_class
loc:@dense_6/kernel
?
Adam/dense_6/kernel/mVarHandleOp*
	container *
shape:
?1?*
dtype0*
_output_shapes
: *&
shared_nameAdam/dense_6/kernel/m*!
_class
loc:@dense_6/kernel
?
6Adam/dense_6/kernel/m/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/dense_6/kernel/m*!
_class
loc:@dense_6/kernel*
_output_shapes
: 
?
Adam/dense_6/kernel/m/AssignAssignVariableOpAdam/dense_6/kernel/m'Adam/dense_6/kernel/m/Initializer/zeros*!
_class
loc:@dense_6/kernel*
dtype0
?
)Adam/dense_6/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_6/kernel/m*
dtype0* 
_output_shapes
:
?1?*!
_class
loc:@dense_6/kernel
?
%Adam/dense_6/bias/m/Initializer/zerosConst*
valueB?*    *
_class
loc:@dense_6/bias*
dtype0*
_output_shapes	
:?
?
Adam/dense_6/bias/mVarHandleOp*
shape:?*
dtype0*
_output_shapes
: *$
shared_nameAdam/dense_6/bias/m*
_class
loc:@dense_6/bias*
	container 
?
4Adam/dense_6/bias/m/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/dense_6/bias/m*
_class
loc:@dense_6/bias*
_output_shapes
: 
?
Adam/dense_6/bias/m/AssignAssignVariableOpAdam/dense_6/bias/m%Adam/dense_6/bias/m/Initializer/zeros*
_class
loc:@dense_6/bias*
dtype0
?
'Adam/dense_6/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_6/bias/m*
_class
loc:@dense_6/bias*
dtype0*
_output_shapes	
:?
?
'Adam/dense_7/kernel/m/Initializer/zerosConst*
valueB	?*    *!
_class
loc:@dense_7/kernel*
dtype0*
_output_shapes
:	?
?
Adam/dense_7/kernel/mVarHandleOp*
dtype0*
_output_shapes
: *&
shared_nameAdam/dense_7/kernel/m*!
_class
loc:@dense_7/kernel*
	container *
shape:	?
?
6Adam/dense_7/kernel/m/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/dense_7/kernel/m*!
_class
loc:@dense_7/kernel*
_output_shapes
: 
?
Adam/dense_7/kernel/m/AssignAssignVariableOpAdam/dense_7/kernel/m'Adam/dense_7/kernel/m/Initializer/zeros*!
_class
loc:@dense_7/kernel*
dtype0
?
)Adam/dense_7/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_7/kernel/m*!
_class
loc:@dense_7/kernel*
dtype0*
_output_shapes
:	?
?
%Adam/dense_7/bias/m/Initializer/zerosConst*
valueB*    *
_class
loc:@dense_7/bias*
dtype0*
_output_shapes
:
?
Adam/dense_7/bias/mVarHandleOp*$
shared_nameAdam/dense_7/bias/m*
_class
loc:@dense_7/bias*
	container *
shape:*
dtype0*
_output_shapes
: 
?
4Adam/dense_7/bias/m/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/dense_7/bias/m*
_output_shapes
: *
_class
loc:@dense_7/bias
?
Adam/dense_7/bias/m/AssignAssignVariableOpAdam/dense_7/bias/m%Adam/dense_7/bias/m/Initializer/zeros*
_class
loc:@dense_7/bias*
dtype0
?
'Adam/dense_7/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_7/bias/m*
_class
loc:@dense_7/bias*
dtype0*
_output_shapes
:
?
(Adam/conv2d_6/kernel/v/Initializer/zerosConst*%
valueB *    *"
_class
loc:@conv2d_6/kernel*
dtype0*&
_output_shapes
: 
?
Adam/conv2d_6/kernel/vVarHandleOp*
dtype0*
_output_shapes
: *'
shared_nameAdam/conv2d_6/kernel/v*"
_class
loc:@conv2d_6/kernel*
	container *
shape: 
?
7Adam/conv2d_6/kernel/v/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/conv2d_6/kernel/v*"
_class
loc:@conv2d_6/kernel*
_output_shapes
: 
?
Adam/conv2d_6/kernel/v/AssignAssignVariableOpAdam/conv2d_6/kernel/v(Adam/conv2d_6/kernel/v/Initializer/zeros*"
_class
loc:@conv2d_6/kernel*
dtype0
?
*Adam/conv2d_6/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_6/kernel/v*
dtype0*&
_output_shapes
: *"
_class
loc:@conv2d_6/kernel
?
&Adam/conv2d_6/bias/v/Initializer/zerosConst*
dtype0*
_output_shapes
: *
valueB *    * 
_class
loc:@conv2d_6/bias
?
Adam/conv2d_6/bias/vVarHandleOp* 
_class
loc:@conv2d_6/bias*
	container *
shape: *
dtype0*
_output_shapes
: *%
shared_nameAdam/conv2d_6/bias/v
?
5Adam/conv2d_6/bias/v/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/conv2d_6/bias/v*
_output_shapes
: * 
_class
loc:@conv2d_6/bias
?
Adam/conv2d_6/bias/v/AssignAssignVariableOpAdam/conv2d_6/bias/v&Adam/conv2d_6/bias/v/Initializer/zeros*
dtype0* 
_class
loc:@conv2d_6/bias
?
(Adam/conv2d_6/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_6/bias/v* 
_class
loc:@conv2d_6/bias*
dtype0*
_output_shapes
: 
?
8Adam/conv2d_7/kernel/v/Initializer/zeros/shape_as_tensorConst*%
valueB"              *"
_class
loc:@conv2d_7/kernel*
dtype0*
_output_shapes
:
?
.Adam/conv2d_7/kernel/v/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    *"
_class
loc:@conv2d_7/kernel
?
(Adam/conv2d_7/kernel/v/Initializer/zerosFill8Adam/conv2d_7/kernel/v/Initializer/zeros/shape_as_tensor.Adam/conv2d_7/kernel/v/Initializer/zeros/Const*
T0*

index_type0*"
_class
loc:@conv2d_7/kernel*&
_output_shapes
:  
?
Adam/conv2d_7/kernel/vVarHandleOp*
dtype0*
_output_shapes
: *'
shared_nameAdam/conv2d_7/kernel/v*"
_class
loc:@conv2d_7/kernel*
	container *
shape:  
?
7Adam/conv2d_7/kernel/v/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/conv2d_7/kernel/v*"
_class
loc:@conv2d_7/kernel*
_output_shapes
: 
?
Adam/conv2d_7/kernel/v/AssignAssignVariableOpAdam/conv2d_7/kernel/v(Adam/conv2d_7/kernel/v/Initializer/zeros*"
_class
loc:@conv2d_7/kernel*
dtype0
?
*Adam/conv2d_7/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_7/kernel/v*
dtype0*&
_output_shapes
:  *"
_class
loc:@conv2d_7/kernel
?
&Adam/conv2d_7/bias/v/Initializer/zerosConst*
valueB *    * 
_class
loc:@conv2d_7/bias*
dtype0*
_output_shapes
: 
?
Adam/conv2d_7/bias/vVarHandleOp*
dtype0*
_output_shapes
: *%
shared_nameAdam/conv2d_7/bias/v* 
_class
loc:@conv2d_7/bias*
	container *
shape: 
?
5Adam/conv2d_7/bias/v/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/conv2d_7/bias/v*
_output_shapes
: * 
_class
loc:@conv2d_7/bias
?
Adam/conv2d_7/bias/v/AssignAssignVariableOpAdam/conv2d_7/bias/v&Adam/conv2d_7/bias/v/Initializer/zeros* 
_class
loc:@conv2d_7/bias*
dtype0
?
(Adam/conv2d_7/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_7/bias/v* 
_class
loc:@conv2d_7/bias*
dtype0*
_output_shapes
: 
?
7Adam/dense_6/kernel/v/Initializer/zeros/shape_as_tensorConst*
valueB"?  ?   *!
_class
loc:@dense_6/kernel*
dtype0*
_output_shapes
:
?
-Adam/dense_6/kernel/v/Initializer/zeros/ConstConst*
valueB
 *    *!
_class
loc:@dense_6/kernel*
dtype0*
_output_shapes
: 
?
'Adam/dense_6/kernel/v/Initializer/zerosFill7Adam/dense_6/kernel/v/Initializer/zeros/shape_as_tensor-Adam/dense_6/kernel/v/Initializer/zeros/Const*
T0*

index_type0*!
_class
loc:@dense_6/kernel* 
_output_shapes
:
?1?
?
Adam/dense_6/kernel/vVarHandleOp*!
_class
loc:@dense_6/kernel*
	container *
shape:
?1?*
dtype0*
_output_shapes
: *&
shared_nameAdam/dense_6/kernel/v
?
6Adam/dense_6/kernel/v/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/dense_6/kernel/v*
_output_shapes
: *!
_class
loc:@dense_6/kernel
?
Adam/dense_6/kernel/v/AssignAssignVariableOpAdam/dense_6/kernel/v'Adam/dense_6/kernel/v/Initializer/zeros*!
_class
loc:@dense_6/kernel*
dtype0
?
)Adam/dense_6/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_6/kernel/v*!
_class
loc:@dense_6/kernel*
dtype0* 
_output_shapes
:
?1?
?
%Adam/dense_6/bias/v/Initializer/zerosConst*
valueB?*    *
_class
loc:@dense_6/bias*
dtype0*
_output_shapes	
:?
?
Adam/dense_6/bias/vVarHandleOp*
dtype0*
_output_shapes
: *$
shared_nameAdam/dense_6/bias/v*
_class
loc:@dense_6/bias*
	container *
shape:?
?
4Adam/dense_6/bias/v/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/dense_6/bias/v*
_class
loc:@dense_6/bias*
_output_shapes
: 
?
Adam/dense_6/bias/v/AssignAssignVariableOpAdam/dense_6/bias/v%Adam/dense_6/bias/v/Initializer/zeros*
_class
loc:@dense_6/bias*
dtype0
?
'Adam/dense_6/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_6/bias/v*
_class
loc:@dense_6/bias*
dtype0*
_output_shapes	
:?
?
'Adam/dense_7/kernel/v/Initializer/zerosConst*
valueB	?*    *!
_class
loc:@dense_7/kernel*
dtype0*
_output_shapes
:	?
?
Adam/dense_7/kernel/vVarHandleOp*
dtype0*
_output_shapes
: *&
shared_nameAdam/dense_7/kernel/v*!
_class
loc:@dense_7/kernel*
	container *
shape:	?
?
6Adam/dense_7/kernel/v/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/dense_7/kernel/v*!
_class
loc:@dense_7/kernel*
_output_shapes
: 
?
Adam/dense_7/kernel/v/AssignAssignVariableOpAdam/dense_7/kernel/v'Adam/dense_7/kernel/v/Initializer/zeros*!
_class
loc:@dense_7/kernel*
dtype0
?
)Adam/dense_7/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_7/kernel/v*!
_class
loc:@dense_7/kernel*
dtype0*
_output_shapes
:	?
?
%Adam/dense_7/bias/v/Initializer/zerosConst*
dtype0*
_output_shapes
:*
valueB*    *
_class
loc:@dense_7/bias
?
Adam/dense_7/bias/vVarHandleOp*
dtype0*
_output_shapes
: *$
shared_nameAdam/dense_7/bias/v*
_class
loc:@dense_7/bias*
	container *
shape:
?
4Adam/dense_7/bias/v/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/dense_7/bias/v*
_class
loc:@dense_7/bias*
_output_shapes
: 
?
Adam/dense_7/bias/v/AssignAssignVariableOpAdam/dense_7/bias/v%Adam/dense_7/bias/v/Initializer/zeros*
dtype0*
_class
loc:@dense_7/bias
?
'Adam/dense_7/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_7/bias/v*
_class
loc:@dense_7/bias*
dtype0*
_output_shapes
:
k
&Adam/Adam/update_conv2d_6/kernel/ConstConst*
valueB
 *???3*
dtype0*
_output_shapes
: 
q
/Adam/Adam/update_conv2d_6/kernel/ReadVariableOpReadVariableOp	Adam/iter*
dtype0	*
_output_shapes
: 
h
&Adam/Adam/update_conv2d_6/kernel/add/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 
?
$Adam/Adam/update_conv2d_6/kernel/addAdd/Adam/Adam/update_conv2d_6/kernel/ReadVariableOp&Adam/Adam/update_conv2d_6/kernel/add/y*
T0	*
_output_shapes
: 
?
%Adam/Adam/update_conv2d_6/kernel/CastCast$Adam/Adam/update_conv2d_6/kernel/add*

SrcT0	*
Truncate( *

DstT0*
_output_shapes
: 
w
3Adam/Adam/update_conv2d_6/kernel/Pow/ReadVariableOpReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
?
$Adam/Adam/update_conv2d_6/kernel/PowPow3Adam/Adam/update_conv2d_6/kernel/Pow/ReadVariableOp%Adam/Adam/update_conv2d_6/kernel/Cast*
T0*
_output_shapes
: 
y
5Adam/Adam/update_conv2d_6/kernel/Pow_1/ReadVariableOpReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
?
&Adam/Adam/update_conv2d_6/kernel/Pow_1Pow5Adam/Adam/update_conv2d_6/kernel/Pow_1/ReadVariableOp%Adam/Adam/update_conv2d_6/kernel/Cast*
T0*
_output_shapes
: 
?
AAdam/Adam/update_conv2d_6/kernel/ResourceApplyAdam/ReadVariableOpReadVariableOpAdam/learning_rate*
dtype0*
_output_shapes
: 
?
CAdam/Adam/update_conv2d_6/kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
?
CAdam/Adam/update_conv2d_6/kernel/ResourceApplyAdam/ReadVariableOp_2ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
?
2Adam/Adam/update_conv2d_6/kernel/ResourceApplyAdamResourceApplyAdamconv2d_6/kernelAdam/conv2d_6/kernel/mAdam/conv2d_6/kernel/v$Adam/Adam/update_conv2d_6/kernel/Pow&Adam/Adam/update_conv2d_6/kernel/Pow_1AAdam/Adam/update_conv2d_6/kernel/ResourceApplyAdam/ReadVariableOpCAdam/Adam/update_conv2d_6/kernel/ResourceApplyAdam/ReadVariableOp_1CAdam/Adam/update_conv2d_6/kernel/ResourceApplyAdam/ReadVariableOp_2&Adam/Adam/update_conv2d_6/kernel/Const8Adam/gradients/conv2d_6/Conv2D_grad/Conv2DBackpropFilter*
T0*
use_nesterov( *
use_locking(
i
$Adam/Adam/update_conv2d_6/bias/ConstConst*
valueB
 *???3*
dtype0*
_output_shapes
: 
o
-Adam/Adam/update_conv2d_6/bias/ReadVariableOpReadVariableOp	Adam/iter*
dtype0	*
_output_shapes
: 
f
$Adam/Adam/update_conv2d_6/bias/add/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 
?
"Adam/Adam/update_conv2d_6/bias/addAdd-Adam/Adam/update_conv2d_6/bias/ReadVariableOp$Adam/Adam/update_conv2d_6/bias/add/y*
T0	*
_output_shapes
: 
?
#Adam/Adam/update_conv2d_6/bias/CastCast"Adam/Adam/update_conv2d_6/bias/add*

SrcT0	*
Truncate( *

DstT0*
_output_shapes
: 
u
1Adam/Adam/update_conv2d_6/bias/Pow/ReadVariableOpReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
?
"Adam/Adam/update_conv2d_6/bias/PowPow1Adam/Adam/update_conv2d_6/bias/Pow/ReadVariableOp#Adam/Adam/update_conv2d_6/bias/Cast*
_output_shapes
: *
T0
w
3Adam/Adam/update_conv2d_6/bias/Pow_1/ReadVariableOpReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
?
$Adam/Adam/update_conv2d_6/bias/Pow_1Pow3Adam/Adam/update_conv2d_6/bias/Pow_1/ReadVariableOp#Adam/Adam/update_conv2d_6/bias/Cast*
T0*
_output_shapes
: 
?
?Adam/Adam/update_conv2d_6/bias/ResourceApplyAdam/ReadVariableOpReadVariableOpAdam/learning_rate*
dtype0*
_output_shapes
: 
?
AAdam/Adam/update_conv2d_6/bias/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
?
AAdam/Adam/update_conv2d_6/bias/ResourceApplyAdam/ReadVariableOp_2ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
?
0Adam/Adam/update_conv2d_6/bias/ResourceApplyAdamResourceApplyAdamconv2d_6/biasAdam/conv2d_6/bias/mAdam/conv2d_6/bias/v"Adam/Adam/update_conv2d_6/bias/Pow$Adam/Adam/update_conv2d_6/bias/Pow_1?Adam/Adam/update_conv2d_6/bias/ResourceApplyAdam/ReadVariableOpAAdam/Adam/update_conv2d_6/bias/ResourceApplyAdam/ReadVariableOp_1AAdam/Adam/update_conv2d_6/bias/ResourceApplyAdam/ReadVariableOp_2$Adam/Adam/update_conv2d_6/bias/Const0Adam/gradients/conv2d_6/BiasAdd_grad/BiasAddGrad*
use_nesterov( *
use_locking(*
T0
k
&Adam/Adam/update_conv2d_7/kernel/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *???3
q
/Adam/Adam/update_conv2d_7/kernel/ReadVariableOpReadVariableOp	Adam/iter*
dtype0	*
_output_shapes
: 
h
&Adam/Adam/update_conv2d_7/kernel/add/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 
?
$Adam/Adam/update_conv2d_7/kernel/addAdd/Adam/Adam/update_conv2d_7/kernel/ReadVariableOp&Adam/Adam/update_conv2d_7/kernel/add/y*
T0	*
_output_shapes
: 
?
%Adam/Adam/update_conv2d_7/kernel/CastCast$Adam/Adam/update_conv2d_7/kernel/add*

SrcT0	*
Truncate( *

DstT0*
_output_shapes
: 
w
3Adam/Adam/update_conv2d_7/kernel/Pow/ReadVariableOpReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
?
$Adam/Adam/update_conv2d_7/kernel/PowPow3Adam/Adam/update_conv2d_7/kernel/Pow/ReadVariableOp%Adam/Adam/update_conv2d_7/kernel/Cast*
T0*
_output_shapes
: 
y
5Adam/Adam/update_conv2d_7/kernel/Pow_1/ReadVariableOpReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
?
&Adam/Adam/update_conv2d_7/kernel/Pow_1Pow5Adam/Adam/update_conv2d_7/kernel/Pow_1/ReadVariableOp%Adam/Adam/update_conv2d_7/kernel/Cast*
T0*
_output_shapes
: 
?
AAdam/Adam/update_conv2d_7/kernel/ResourceApplyAdam/ReadVariableOpReadVariableOpAdam/learning_rate*
dtype0*
_output_shapes
: 
?
CAdam/Adam/update_conv2d_7/kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
?
CAdam/Adam/update_conv2d_7/kernel/ResourceApplyAdam/ReadVariableOp_2ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
?
2Adam/Adam/update_conv2d_7/kernel/ResourceApplyAdamResourceApplyAdamconv2d_7/kernelAdam/conv2d_7/kernel/mAdam/conv2d_7/kernel/v$Adam/Adam/update_conv2d_7/kernel/Pow&Adam/Adam/update_conv2d_7/kernel/Pow_1AAdam/Adam/update_conv2d_7/kernel/ResourceApplyAdam/ReadVariableOpCAdam/Adam/update_conv2d_7/kernel/ResourceApplyAdam/ReadVariableOp_1CAdam/Adam/update_conv2d_7/kernel/ResourceApplyAdam/ReadVariableOp_2&Adam/Adam/update_conv2d_7/kernel/Const8Adam/gradients/conv2d_7/Conv2D_grad/Conv2DBackpropFilter*
use_nesterov( *
use_locking(*
T0
i
$Adam/Adam/update_conv2d_7/bias/ConstConst*
valueB
 *???3*
dtype0*
_output_shapes
: 
o
-Adam/Adam/update_conv2d_7/bias/ReadVariableOpReadVariableOp	Adam/iter*
dtype0	*
_output_shapes
: 
f
$Adam/Adam/update_conv2d_7/bias/add/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 
?
"Adam/Adam/update_conv2d_7/bias/addAdd-Adam/Adam/update_conv2d_7/bias/ReadVariableOp$Adam/Adam/update_conv2d_7/bias/add/y*
T0	*
_output_shapes
: 
?
#Adam/Adam/update_conv2d_7/bias/CastCast"Adam/Adam/update_conv2d_7/bias/add*

SrcT0	*
Truncate( *

DstT0*
_output_shapes
: 
u
1Adam/Adam/update_conv2d_7/bias/Pow/ReadVariableOpReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
?
"Adam/Adam/update_conv2d_7/bias/PowPow1Adam/Adam/update_conv2d_7/bias/Pow/ReadVariableOp#Adam/Adam/update_conv2d_7/bias/Cast*
T0*
_output_shapes
: 
w
3Adam/Adam/update_conv2d_7/bias/Pow_1/ReadVariableOpReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
?
$Adam/Adam/update_conv2d_7/bias/Pow_1Pow3Adam/Adam/update_conv2d_7/bias/Pow_1/ReadVariableOp#Adam/Adam/update_conv2d_7/bias/Cast*
T0*
_output_shapes
: 
?
?Adam/Adam/update_conv2d_7/bias/ResourceApplyAdam/ReadVariableOpReadVariableOpAdam/learning_rate*
dtype0*
_output_shapes
: 
?
AAdam/Adam/update_conv2d_7/bias/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
?
AAdam/Adam/update_conv2d_7/bias/ResourceApplyAdam/ReadVariableOp_2ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
?
0Adam/Adam/update_conv2d_7/bias/ResourceApplyAdamResourceApplyAdamconv2d_7/biasAdam/conv2d_7/bias/mAdam/conv2d_7/bias/v"Adam/Adam/update_conv2d_7/bias/Pow$Adam/Adam/update_conv2d_7/bias/Pow_1?Adam/Adam/update_conv2d_7/bias/ResourceApplyAdam/ReadVariableOpAAdam/Adam/update_conv2d_7/bias/ResourceApplyAdam/ReadVariableOp_1AAdam/Adam/update_conv2d_7/bias/ResourceApplyAdam/ReadVariableOp_2$Adam/Adam/update_conv2d_7/bias/Const0Adam/gradients/conv2d_7/BiasAdd_grad/BiasAddGrad*
use_locking(*
T0*
use_nesterov( 
j
%Adam/Adam/update_dense_6/kernel/ConstConst*
valueB
 *???3*
dtype0*
_output_shapes
: 
p
.Adam/Adam/update_dense_6/kernel/ReadVariableOpReadVariableOp	Adam/iter*
dtype0	*
_output_shapes
: 
g
%Adam/Adam/update_dense_6/kernel/add/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 
?
#Adam/Adam/update_dense_6/kernel/addAdd.Adam/Adam/update_dense_6/kernel/ReadVariableOp%Adam/Adam/update_dense_6/kernel/add/y*
_output_shapes
: *
T0	
?
$Adam/Adam/update_dense_6/kernel/CastCast#Adam/Adam/update_dense_6/kernel/add*

SrcT0	*
Truncate( *

DstT0*
_output_shapes
: 
v
2Adam/Adam/update_dense_6/kernel/Pow/ReadVariableOpReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
?
#Adam/Adam/update_dense_6/kernel/PowPow2Adam/Adam/update_dense_6/kernel/Pow/ReadVariableOp$Adam/Adam/update_dense_6/kernel/Cast*
T0*
_output_shapes
: 
x
4Adam/Adam/update_dense_6/kernel/Pow_1/ReadVariableOpReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
?
%Adam/Adam/update_dense_6/kernel/Pow_1Pow4Adam/Adam/update_dense_6/kernel/Pow_1/ReadVariableOp$Adam/Adam/update_dense_6/kernel/Cast*
T0*
_output_shapes
: 
?
@Adam/Adam/update_dense_6/kernel/ResourceApplyAdam/ReadVariableOpReadVariableOpAdam/learning_rate*
dtype0*
_output_shapes
: 
?
BAdam/Adam/update_dense_6/kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
?
BAdam/Adam/update_dense_6/kernel/ResourceApplyAdam/ReadVariableOp_2ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
?
1Adam/Adam/update_dense_6/kernel/ResourceApplyAdamResourceApplyAdamdense_6/kernelAdam/dense_6/kernel/mAdam/dense_6/kernel/v#Adam/Adam/update_dense_6/kernel/Pow%Adam/Adam/update_dense_6/kernel/Pow_1@Adam/Adam/update_dense_6/kernel/ResourceApplyAdam/ReadVariableOpBAdam/Adam/update_dense_6/kernel/ResourceApplyAdam/ReadVariableOp_1BAdam/Adam/update_dense_6/kernel/ResourceApplyAdam/ReadVariableOp_2%Adam/Adam/update_dense_6/kernel/Const+Adam/gradients/dense_6/MatMul_grad/MatMul_1*
T0*
use_nesterov( *
use_locking(
h
#Adam/Adam/update_dense_6/bias/ConstConst*
valueB
 *???3*
dtype0*
_output_shapes
: 
n
,Adam/Adam/update_dense_6/bias/ReadVariableOpReadVariableOp	Adam/iter*
dtype0	*
_output_shapes
: 
e
#Adam/Adam/update_dense_6/bias/add/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 
?
!Adam/Adam/update_dense_6/bias/addAdd,Adam/Adam/update_dense_6/bias/ReadVariableOp#Adam/Adam/update_dense_6/bias/add/y*
T0	*
_output_shapes
: 
?
"Adam/Adam/update_dense_6/bias/CastCast!Adam/Adam/update_dense_6/bias/add*
Truncate( *

DstT0*
_output_shapes
: *

SrcT0	
t
0Adam/Adam/update_dense_6/bias/Pow/ReadVariableOpReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
?
!Adam/Adam/update_dense_6/bias/PowPow0Adam/Adam/update_dense_6/bias/Pow/ReadVariableOp"Adam/Adam/update_dense_6/bias/Cast*
_output_shapes
: *
T0
v
2Adam/Adam/update_dense_6/bias/Pow_1/ReadVariableOpReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
?
#Adam/Adam/update_dense_6/bias/Pow_1Pow2Adam/Adam/update_dense_6/bias/Pow_1/ReadVariableOp"Adam/Adam/update_dense_6/bias/Cast*
T0*
_output_shapes
: 
?
>Adam/Adam/update_dense_6/bias/ResourceApplyAdam/ReadVariableOpReadVariableOpAdam/learning_rate*
dtype0*
_output_shapes
: 
?
@Adam/Adam/update_dense_6/bias/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
?
@Adam/Adam/update_dense_6/bias/ResourceApplyAdam/ReadVariableOp_2ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
?
/Adam/Adam/update_dense_6/bias/ResourceApplyAdamResourceApplyAdamdense_6/biasAdam/dense_6/bias/mAdam/dense_6/bias/v!Adam/Adam/update_dense_6/bias/Pow#Adam/Adam/update_dense_6/bias/Pow_1>Adam/Adam/update_dense_6/bias/ResourceApplyAdam/ReadVariableOp@Adam/Adam/update_dense_6/bias/ResourceApplyAdam/ReadVariableOp_1@Adam/Adam/update_dense_6/bias/ResourceApplyAdam/ReadVariableOp_2#Adam/Adam/update_dense_6/bias/Const/Adam/gradients/dense_6/BiasAdd_grad/BiasAddGrad*
T0*
use_nesterov( *
use_locking(
j
%Adam/Adam/update_dense_7/kernel/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *???3
p
.Adam/Adam/update_dense_7/kernel/ReadVariableOpReadVariableOp	Adam/iter*
dtype0	*
_output_shapes
: 
g
%Adam/Adam/update_dense_7/kernel/add/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 
?
#Adam/Adam/update_dense_7/kernel/addAdd.Adam/Adam/update_dense_7/kernel/ReadVariableOp%Adam/Adam/update_dense_7/kernel/add/y*
T0	*
_output_shapes
: 
?
$Adam/Adam/update_dense_7/kernel/CastCast#Adam/Adam/update_dense_7/kernel/add*

SrcT0	*
Truncate( *

DstT0*
_output_shapes
: 
v
2Adam/Adam/update_dense_7/kernel/Pow/ReadVariableOpReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
?
#Adam/Adam/update_dense_7/kernel/PowPow2Adam/Adam/update_dense_7/kernel/Pow/ReadVariableOp$Adam/Adam/update_dense_7/kernel/Cast*
T0*
_output_shapes
: 
x
4Adam/Adam/update_dense_7/kernel/Pow_1/ReadVariableOpReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
?
%Adam/Adam/update_dense_7/kernel/Pow_1Pow4Adam/Adam/update_dense_7/kernel/Pow_1/ReadVariableOp$Adam/Adam/update_dense_7/kernel/Cast*
T0*
_output_shapes
: 
?
@Adam/Adam/update_dense_7/kernel/ResourceApplyAdam/ReadVariableOpReadVariableOpAdam/learning_rate*
dtype0*
_output_shapes
: 
?
BAdam/Adam/update_dense_7/kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
?
BAdam/Adam/update_dense_7/kernel/ResourceApplyAdam/ReadVariableOp_2ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
?
1Adam/Adam/update_dense_7/kernel/ResourceApplyAdamResourceApplyAdamdense_7/kernelAdam/dense_7/kernel/mAdam/dense_7/kernel/v#Adam/Adam/update_dense_7/kernel/Pow%Adam/Adam/update_dense_7/kernel/Pow_1@Adam/Adam/update_dense_7/kernel/ResourceApplyAdam/ReadVariableOpBAdam/Adam/update_dense_7/kernel/ResourceApplyAdam/ReadVariableOp_1BAdam/Adam/update_dense_7/kernel/ResourceApplyAdam/ReadVariableOp_2%Adam/Adam/update_dense_7/kernel/Const+Adam/gradients/dense_7/MatMul_grad/MatMul_1*
use_locking(*
T0*
use_nesterov( 
h
#Adam/Adam/update_dense_7/bias/ConstConst*
valueB
 *???3*
dtype0*
_output_shapes
: 
n
,Adam/Adam/update_dense_7/bias/ReadVariableOpReadVariableOp	Adam/iter*
dtype0	*
_output_shapes
: 
e
#Adam/Adam/update_dense_7/bias/add/yConst*
dtype0	*
_output_shapes
: *
value	B	 R
?
!Adam/Adam/update_dense_7/bias/addAdd,Adam/Adam/update_dense_7/bias/ReadVariableOp#Adam/Adam/update_dense_7/bias/add/y*
T0	*
_output_shapes
: 
?
"Adam/Adam/update_dense_7/bias/CastCast!Adam/Adam/update_dense_7/bias/add*

SrcT0	*
Truncate( *

DstT0*
_output_shapes
: 
t
0Adam/Adam/update_dense_7/bias/Pow/ReadVariableOpReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
?
!Adam/Adam/update_dense_7/bias/PowPow0Adam/Adam/update_dense_7/bias/Pow/ReadVariableOp"Adam/Adam/update_dense_7/bias/Cast*
T0*
_output_shapes
: 
v
2Adam/Adam/update_dense_7/bias/Pow_1/ReadVariableOpReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
?
#Adam/Adam/update_dense_7/bias/Pow_1Pow2Adam/Adam/update_dense_7/bias/Pow_1/ReadVariableOp"Adam/Adam/update_dense_7/bias/Cast*
_output_shapes
: *
T0
?
>Adam/Adam/update_dense_7/bias/ResourceApplyAdam/ReadVariableOpReadVariableOpAdam/learning_rate*
dtype0*
_output_shapes
: 
?
@Adam/Adam/update_dense_7/bias/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
?
@Adam/Adam/update_dense_7/bias/ResourceApplyAdam/ReadVariableOp_2ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
?
/Adam/Adam/update_dense_7/bias/ResourceApplyAdamResourceApplyAdamdense_7/biasAdam/dense_7/bias/mAdam/dense_7/bias/v!Adam/Adam/update_dense_7/bias/Pow#Adam/Adam/update_dense_7/bias/Pow_1>Adam/Adam/update_dense_7/bias/ResourceApplyAdam/ReadVariableOp@Adam/Adam/update_dense_7/bias/ResourceApplyAdam/ReadVariableOp_1@Adam/Adam/update_dense_7/bias/ResourceApplyAdam/ReadVariableOp_2#Adam/Adam/update_dense_7/bias/Const/Adam/gradients/dense_7/BiasAdd_grad/BiasAddGrad*
use_locking(*
T0*
use_nesterov( 
?
Adam/Adam/ConstConst1^Adam/Adam/update_conv2d_6/bias/ResourceApplyAdam3^Adam/Adam/update_conv2d_6/kernel/ResourceApplyAdam1^Adam/Adam/update_conv2d_7/bias/ResourceApplyAdam3^Adam/Adam/update_conv2d_7/kernel/ResourceApplyAdam0^Adam/Adam/update_dense_6/bias/ResourceApplyAdam2^Adam/Adam/update_dense_6/kernel/ResourceApplyAdam0^Adam/Adam/update_dense_7/bias/ResourceApplyAdam2^Adam/Adam/update_dense_7/kernel/ResourceApplyAdam*
value	B	 R*
dtype0	*
_output_shapes
: 
]
Adam/Adam/AssignAddVariableOpAssignAddVariableOp	Adam/iterAdam/Adam/Const*
dtype0	
?
Adam/Adam/ReadVariableOpReadVariableOp	Adam/iter^Adam/Adam/AssignAddVariableOp1^Adam/Adam/update_conv2d_6/bias/ResourceApplyAdam3^Adam/Adam/update_conv2d_6/kernel/ResourceApplyAdam1^Adam/Adam/update_conv2d_7/bias/ResourceApplyAdam3^Adam/Adam/update_conv2d_7/kernel/ResourceApplyAdam0^Adam/Adam/update_dense_6/bias/ResourceApplyAdam2^Adam/Adam/update_dense_6/kernel/ResourceApplyAdam0^Adam/Adam/update_dense_7/bias/ResourceApplyAdam2^Adam/Adam/update_dense_7/kernel/ResourceApplyAdam*
dtype0	*
_output_shapes
: 
H
training_1/group_depsNoOp^Adam/Adam/AssignAddVariableOp	^loss/mul
Y
VarIsInitializedOp_8VarIsInitializedOpAdam/dense_7/kernel/v*
_output_shapes
: 
M
VarIsInitializedOp_9VarIsInitializedOp	Adam/iter*
_output_shapes
: 
Y
VarIsInitializedOp_10VarIsInitializedOpAdam/conv2d_6/bias/v*
_output_shapes
: 
Y
VarIsInitializedOp_11VarIsInitializedOpAdam/conv2d_6/bias/m*
_output_shapes
: 
J
VarIsInitializedOp_12VarIsInitializedOptotal*
_output_shapes
: 
P
VarIsInitializedOp_13VarIsInitializedOpAdam/beta_2*
_output_shapes
: 
X
VarIsInitializedOp_14VarIsInitializedOpAdam/dense_7/bias/v*
_output_shapes
: 
Z
VarIsInitializedOp_15VarIsInitializedOpAdam/dense_6/kernel/v*
_output_shapes
: 
X
VarIsInitializedOp_16VarIsInitializedOpAdam/dense_7/bias/m*
_output_shapes
: 
W
VarIsInitializedOp_17VarIsInitializedOpAdam/learning_rate*
_output_shapes
: 
Y
VarIsInitializedOp_18VarIsInitializedOpAdam/conv2d_7/bias/m*
_output_shapes
: 
O
VarIsInitializedOp_19VarIsInitializedOp
Adam/decay*
_output_shapes
: 
P
VarIsInitializedOp_20VarIsInitializedOpAdam/beta_1*
_output_shapes
: 
Z
VarIsInitializedOp_21VarIsInitializedOpAdam/dense_6/kernel/m*
_output_shapes
: 
X
VarIsInitializedOp_22VarIsInitializedOpAdam/dense_6/bias/m*
_output_shapes
: 
[
VarIsInitializedOp_23VarIsInitializedOpAdam/conv2d_6/kernel/m*
_output_shapes
: 
J
VarIsInitializedOp_24VarIsInitializedOpcount*
_output_shapes
: 
[
VarIsInitializedOp_25VarIsInitializedOpAdam/conv2d_7/kernel/m*
_output_shapes
: 
[
VarIsInitializedOp_26VarIsInitializedOpAdam/conv2d_6/kernel/v*
_output_shapes
: 
Z
VarIsInitializedOp_27VarIsInitializedOpAdam/dense_7/kernel/m*
_output_shapes
: 
X
VarIsInitializedOp_28VarIsInitializedOpAdam/dense_6/bias/v*
_output_shapes
: 
[
VarIsInitializedOp_29VarIsInitializedOpAdam/conv2d_7/kernel/v*
_output_shapes
: 
Y
VarIsInitializedOp_30VarIsInitializedOpAdam/conv2d_7/bias/v*
_output_shapes
: 
?
init_1NoOp^Adam/beta_1/Assign^Adam/beta_2/Assign^Adam/conv2d_6/bias/m/Assign^Adam/conv2d_6/bias/v/Assign^Adam/conv2d_6/kernel/m/Assign^Adam/conv2d_6/kernel/v/Assign^Adam/conv2d_7/bias/m/Assign^Adam/conv2d_7/bias/v/Assign^Adam/conv2d_7/kernel/m/Assign^Adam/conv2d_7/kernel/v/Assign^Adam/decay/Assign^Adam/dense_6/bias/m/Assign^Adam/dense_6/bias/v/Assign^Adam/dense_6/kernel/m/Assign^Adam/dense_6/kernel/v/Assign^Adam/dense_7/bias/m/Assign^Adam/dense_7/bias/v/Assign^Adam/dense_7/kernel/m/Assign^Adam/dense_7/kernel/v/Assign^Adam/iter/Assign^Adam/learning_rate/Assign^count/Assign^total/Assign
N
Placeholder_8Placeholder*
dtype0	*
_output_shapes
: *
shape: 
M
AssignVariableOp_8AssignVariableOp	Adam/iterPlaceholder_8*
dtype0	
g
ReadVariableOp_8ReadVariableOp	Adam/iter^AssignVariableOp_8*
dtype0	*
_output_shapes
: 
n
Placeholder_9Placeholder*
shape: *
dtype0*&
_output_shapes
: 
Z
AssignVariableOp_9AssignVariableOpAdam/conv2d_6/kernel/mPlaceholder_9*
dtype0
?
ReadVariableOp_9ReadVariableOpAdam/conv2d_6/kernel/m^AssignVariableOp_9*
dtype0*&
_output_shapes
: 
W
Placeholder_10Placeholder*
dtype0*
_output_shapes
: *
shape: 
Z
AssignVariableOp_10AssignVariableOpAdam/conv2d_6/bias/mPlaceholder_10*
dtype0
x
ReadVariableOp_10ReadVariableOpAdam/conv2d_6/bias/m^AssignVariableOp_10*
dtype0*
_output_shapes
: 
o
Placeholder_11Placeholder*
dtype0*&
_output_shapes
:  *
shape:  
\
AssignVariableOp_11AssignVariableOpAdam/conv2d_7/kernel/mPlaceholder_11*
dtype0
?
ReadVariableOp_11ReadVariableOpAdam/conv2d_7/kernel/m^AssignVariableOp_11*
dtype0*&
_output_shapes
:  
W
Placeholder_12Placeholder*
dtype0*
_output_shapes
: *
shape: 
Z
AssignVariableOp_12AssignVariableOpAdam/conv2d_7/bias/mPlaceholder_12*
dtype0
x
ReadVariableOp_12ReadVariableOpAdam/conv2d_7/bias/m^AssignVariableOp_12*
dtype0*
_output_shapes
: 
c
Placeholder_13Placeholder*
shape:
?1?*
dtype0* 
_output_shapes
:
?1?
[
AssignVariableOp_13AssignVariableOpAdam/dense_6/kernel/mPlaceholder_13*
dtype0

ReadVariableOp_13ReadVariableOpAdam/dense_6/kernel/m^AssignVariableOp_13*
dtype0* 
_output_shapes
:
?1?
Y
Placeholder_14Placeholder*
dtype0*
_output_shapes	
:?*
shape:?
Y
AssignVariableOp_14AssignVariableOpAdam/dense_6/bias/mPlaceholder_14*
dtype0
x
ReadVariableOp_14ReadVariableOpAdam/dense_6/bias/m^AssignVariableOp_14*
dtype0*
_output_shapes	
:?
a
Placeholder_15Placeholder*
dtype0*
_output_shapes
:	?*
shape:	?
[
AssignVariableOp_15AssignVariableOpAdam/dense_7/kernel/mPlaceholder_15*
dtype0
~
ReadVariableOp_15ReadVariableOpAdam/dense_7/kernel/m^AssignVariableOp_15*
dtype0*
_output_shapes
:	?
W
Placeholder_16Placeholder*
shape:*
dtype0*
_output_shapes
:
Y
AssignVariableOp_16AssignVariableOpAdam/dense_7/bias/mPlaceholder_16*
dtype0
w
ReadVariableOp_16ReadVariableOpAdam/dense_7/bias/m^AssignVariableOp_16*
dtype0*
_output_shapes
:
o
Placeholder_17Placeholder*
dtype0*&
_output_shapes
: *
shape: 
\
AssignVariableOp_17AssignVariableOpAdam/conv2d_6/kernel/vPlaceholder_17*
dtype0
?
ReadVariableOp_17ReadVariableOpAdam/conv2d_6/kernel/v^AssignVariableOp_17*
dtype0*&
_output_shapes
: 
W
Placeholder_18Placeholder*
shape: *
dtype0*
_output_shapes
: 
Z
AssignVariableOp_18AssignVariableOpAdam/conv2d_6/bias/vPlaceholder_18*
dtype0
x
ReadVariableOp_18ReadVariableOpAdam/conv2d_6/bias/v^AssignVariableOp_18*
dtype0*
_output_shapes
: 
o
Placeholder_19Placeholder*
dtype0*&
_output_shapes
:  *
shape:  
\
AssignVariableOp_19AssignVariableOpAdam/conv2d_7/kernel/vPlaceholder_19*
dtype0
?
ReadVariableOp_19ReadVariableOpAdam/conv2d_7/kernel/v^AssignVariableOp_19*
dtype0*&
_output_shapes
:  
W
Placeholder_20Placeholder*
dtype0*
_output_shapes
: *
shape: 
Z
AssignVariableOp_20AssignVariableOpAdam/conv2d_7/bias/vPlaceholder_20*
dtype0
x
ReadVariableOp_20ReadVariableOpAdam/conv2d_7/bias/v^AssignVariableOp_20*
dtype0*
_output_shapes
: 
c
Placeholder_21Placeholder*
dtype0* 
_output_shapes
:
?1?*
shape:
?1?
[
AssignVariableOp_21AssignVariableOpAdam/dense_6/kernel/vPlaceholder_21*
dtype0

ReadVariableOp_21ReadVariableOpAdam/dense_6/kernel/v^AssignVariableOp_21*
dtype0* 
_output_shapes
:
?1?
Y
Placeholder_22Placeholder*
dtype0*
_output_shapes	
:?*
shape:?
Y
AssignVariableOp_22AssignVariableOpAdam/dense_6/bias/vPlaceholder_22*
dtype0
x
ReadVariableOp_22ReadVariableOpAdam/dense_6/bias/v^AssignVariableOp_22*
dtype0*
_output_shapes	
:?
a
Placeholder_23Placeholder*
dtype0*
_output_shapes
:	?*
shape:	?
[
AssignVariableOp_23AssignVariableOpAdam/dense_7/kernel/vPlaceholder_23*
dtype0
~
ReadVariableOp_23ReadVariableOpAdam/dense_7/kernel/v^AssignVariableOp_23*
dtype0*
_output_shapes
:	?
W
Placeholder_24Placeholder*
dtype0*
_output_shapes
:*
shape:
Y
AssignVariableOp_24AssignVariableOpAdam/dense_7/bias/vPlaceholder_24*
dtype0
w
ReadVariableOp_24ReadVariableOpAdam/dense_7/bias/v^AssignVariableOp_24*
dtype0*
_output_shapes
:
Y
save/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
n
save/filenamePlaceholderWithDefaultsave/filename/input*
dtype0*
_output_shapes
: *
shape: 
e

save/ConstPlaceholderWithDefaultsave/filename*
shape: *
dtype0*
_output_shapes
: 
?
save/StringJoin/inputs_1Const*<
value3B1 B+_temp_b3c5027861b14ce19288d12f89a4c40b/part*
dtype0*
_output_shapes
: 
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
Q
save/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
\
save/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 
}
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards*
_output_shapes
: 
?
save/SaveV2/tensor_namesConst*?
value?B?BAdam/beta_1BAdam/beta_2BAdam/conv2d_6/bias/mBAdam/conv2d_6/bias/vBAdam/conv2d_6/kernel/mBAdam/conv2d_6/kernel/vBAdam/conv2d_7/bias/mBAdam/conv2d_7/bias/vBAdam/conv2d_7/kernel/mBAdam/conv2d_7/kernel/vB
Adam/decayBAdam/dense_6/bias/mBAdam/dense_6/bias/vBAdam/dense_6/kernel/mBAdam/dense_6/kernel/vBAdam/dense_7/bias/mBAdam/dense_7/bias/vBAdam/dense_7/kernel/mBAdam/dense_7/kernel/vB	Adam/iterBAdam/learning_rateBconv2d_6/biasBconv2d_6/kernelBconv2d_7/biasBconv2d_7/kernelBdense_6/biasBdense_6/kernelBdense_7/biasBdense_7/kernel*
dtype0*
_output_shapes
:
?
save/SaveV2/shape_and_slicesConst*M
valueDBBB B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
?	
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOp(Adam/conv2d_6/bias/m/Read/ReadVariableOp(Adam/conv2d_6/bias/v/Read/ReadVariableOp*Adam/conv2d_6/kernel/m/Read/ReadVariableOp*Adam/conv2d_6/kernel/v/Read/ReadVariableOp(Adam/conv2d_7/bias/m/Read/ReadVariableOp(Adam/conv2d_7/bias/v/Read/ReadVariableOp*Adam/conv2d_7/kernel/m/Read/ReadVariableOp*Adam/conv2d_7/kernel/v/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp'Adam/dense_6/bias/m/Read/ReadVariableOp'Adam/dense_6/bias/v/Read/ReadVariableOp)Adam/dense_6/kernel/m/Read/ReadVariableOp)Adam/dense_6/kernel/v/Read/ReadVariableOp'Adam/dense_7/bias/m/Read/ReadVariableOp'Adam/dense_7/bias/v/Read/ReadVariableOp)Adam/dense_7/kernel/m/Read/ReadVariableOp)Adam/dense_7/kernel/v/Read/ReadVariableOpAdam/iter/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp!conv2d_6/bias/Read/ReadVariableOp#conv2d_6/kernel/Read/ReadVariableOp!conv2d_7/bias/Read/ReadVariableOp#conv2d_7/kernel/Read/ReadVariableOp dense_6/bias/Read/ReadVariableOp"dense_6/kernel/Read/ReadVariableOp dense_7/bias/Read/ReadVariableOp"dense_7/kernel/Read/ReadVariableOp*+
dtypes!
2	
?
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 
?
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency*
N*
_output_shapes
:*
T0*

axis 
}
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const*
delete_old_dirs(
z
save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency*
T0*
_output_shapes
: 
?
save/RestoreV2/tensor_namesConst*?
value?B?BAdam/beta_1BAdam/beta_2BAdam/conv2d_6/bias/mBAdam/conv2d_6/bias/vBAdam/conv2d_6/kernel/mBAdam/conv2d_6/kernel/vBAdam/conv2d_7/bias/mBAdam/conv2d_7/bias/vBAdam/conv2d_7/kernel/mBAdam/conv2d_7/kernel/vB
Adam/decayBAdam/dense_6/bias/mBAdam/dense_6/bias/vBAdam/dense_6/kernel/mBAdam/dense_6/kernel/vBAdam/dense_7/bias/mBAdam/dense_7/bias/vBAdam/dense_7/kernel/mBAdam/dense_7/kernel/vB	Adam/iterBAdam/learning_rateBconv2d_6/biasBconv2d_6/kernelBconv2d_7/biasBconv2d_7/kernelBdense_6/biasBdense_6/kernelBdense_7/biasBdense_7/kernel*
dtype0*
_output_shapes
:
?
save/RestoreV2/shape_and_slicesConst*M
valueDBBB B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
?
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*?
_output_shapesv
t:::::::::::::::::::::::::::::*+
dtypes!
2	
N
save/Identity_1Identitysave/RestoreV2*
T0*
_output_shapes
:
T
save/AssignVariableOpAssignVariableOpAdam/beta_1save/Identity_1*
dtype0
P
save/Identity_2Identitysave/RestoreV2:1*
T0*
_output_shapes
:
V
save/AssignVariableOp_1AssignVariableOpAdam/beta_2save/Identity_2*
dtype0
P
save/Identity_3Identitysave/RestoreV2:2*
T0*
_output_shapes
:
_
save/AssignVariableOp_2AssignVariableOpAdam/conv2d_6/bias/msave/Identity_3*
dtype0
P
save/Identity_4Identitysave/RestoreV2:3*
_output_shapes
:*
T0
_
save/AssignVariableOp_3AssignVariableOpAdam/conv2d_6/bias/vsave/Identity_4*
dtype0
P
save/Identity_5Identitysave/RestoreV2:4*
T0*
_output_shapes
:
a
save/AssignVariableOp_4AssignVariableOpAdam/conv2d_6/kernel/msave/Identity_5*
dtype0
P
save/Identity_6Identitysave/RestoreV2:5*
T0*
_output_shapes
:
a
save/AssignVariableOp_5AssignVariableOpAdam/conv2d_6/kernel/vsave/Identity_6*
dtype0
P
save/Identity_7Identitysave/RestoreV2:6*
T0*
_output_shapes
:
_
save/AssignVariableOp_6AssignVariableOpAdam/conv2d_7/bias/msave/Identity_7*
dtype0
P
save/Identity_8Identitysave/RestoreV2:7*
T0*
_output_shapes
:
_
save/AssignVariableOp_7AssignVariableOpAdam/conv2d_7/bias/vsave/Identity_8*
dtype0
P
save/Identity_9Identitysave/RestoreV2:8*
T0*
_output_shapes
:
a
save/AssignVariableOp_8AssignVariableOpAdam/conv2d_7/kernel/msave/Identity_9*
dtype0
Q
save/Identity_10Identitysave/RestoreV2:9*
T0*
_output_shapes
:
b
save/AssignVariableOp_9AssignVariableOpAdam/conv2d_7/kernel/vsave/Identity_10*
dtype0
R
save/Identity_11Identitysave/RestoreV2:10*
_output_shapes
:*
T0
W
save/AssignVariableOp_10AssignVariableOp
Adam/decaysave/Identity_11*
dtype0
R
save/Identity_12Identitysave/RestoreV2:11*
T0*
_output_shapes
:
`
save/AssignVariableOp_11AssignVariableOpAdam/dense_6/bias/msave/Identity_12*
dtype0
R
save/Identity_13Identitysave/RestoreV2:12*
_output_shapes
:*
T0
`
save/AssignVariableOp_12AssignVariableOpAdam/dense_6/bias/vsave/Identity_13*
dtype0
R
save/Identity_14Identitysave/RestoreV2:13*
T0*
_output_shapes
:
b
save/AssignVariableOp_13AssignVariableOpAdam/dense_6/kernel/msave/Identity_14*
dtype0
R
save/Identity_15Identitysave/RestoreV2:14*
T0*
_output_shapes
:
b
save/AssignVariableOp_14AssignVariableOpAdam/dense_6/kernel/vsave/Identity_15*
dtype0
R
save/Identity_16Identitysave/RestoreV2:15*
T0*
_output_shapes
:
`
save/AssignVariableOp_15AssignVariableOpAdam/dense_7/bias/msave/Identity_16*
dtype0
R
save/Identity_17Identitysave/RestoreV2:16*
_output_shapes
:*
T0
`
save/AssignVariableOp_16AssignVariableOpAdam/dense_7/bias/vsave/Identity_17*
dtype0
R
save/Identity_18Identitysave/RestoreV2:17*
T0*
_output_shapes
:
b
save/AssignVariableOp_17AssignVariableOpAdam/dense_7/kernel/msave/Identity_18*
dtype0
R
save/Identity_19Identitysave/RestoreV2:18*
T0*
_output_shapes
:
b
save/AssignVariableOp_18AssignVariableOpAdam/dense_7/kernel/vsave/Identity_19*
dtype0
R
save/Identity_20Identitysave/RestoreV2:19*
T0	*
_output_shapes
:
V
save/AssignVariableOp_19AssignVariableOp	Adam/itersave/Identity_20*
dtype0	
R
save/Identity_21Identitysave/RestoreV2:20*
T0*
_output_shapes
:
_
save/AssignVariableOp_20AssignVariableOpAdam/learning_ratesave/Identity_21*
dtype0
R
save/Identity_22Identitysave/RestoreV2:21*
_output_shapes
:*
T0
Z
save/AssignVariableOp_21AssignVariableOpconv2d_6/biassave/Identity_22*
dtype0
R
save/Identity_23Identitysave/RestoreV2:22*
_output_shapes
:*
T0
\
save/AssignVariableOp_22AssignVariableOpconv2d_6/kernelsave/Identity_23*
dtype0
R
save/Identity_24Identitysave/RestoreV2:23*
T0*
_output_shapes
:
Z
save/AssignVariableOp_23AssignVariableOpconv2d_7/biassave/Identity_24*
dtype0
R
save/Identity_25Identitysave/RestoreV2:24*
T0*
_output_shapes
:
\
save/AssignVariableOp_24AssignVariableOpconv2d_7/kernelsave/Identity_25*
dtype0
R
save/Identity_26Identitysave/RestoreV2:25*
T0*
_output_shapes
:
Y
save/AssignVariableOp_25AssignVariableOpdense_6/biassave/Identity_26*
dtype0
R
save/Identity_27Identitysave/RestoreV2:26*
_output_shapes
:*
T0
[
save/AssignVariableOp_26AssignVariableOpdense_6/kernelsave/Identity_27*
dtype0
R
save/Identity_28Identitysave/RestoreV2:27*
_output_shapes
:*
T0
Y
save/AssignVariableOp_27AssignVariableOpdense_7/biassave/Identity_28*
dtype0
R
save/Identity_29Identitysave/RestoreV2:28*
T0*
_output_shapes
:
[
save/AssignVariableOp_28AssignVariableOpdense_7/kernelsave/Identity_29*
dtype0
?
save/restore_shardNoOp^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_10^save/AssignVariableOp_11^save/AssignVariableOp_12^save/AssignVariableOp_13^save/AssignVariableOp_14^save/AssignVariableOp_15^save/AssignVariableOp_16^save/AssignVariableOp_17^save/AssignVariableOp_18^save/AssignVariableOp_19^save/AssignVariableOp_2^save/AssignVariableOp_20^save/AssignVariableOp_21^save/AssignVariableOp_22^save/AssignVariableOp_23^save/AssignVariableOp_24^save/AssignVariableOp_25^save/AssignVariableOp_26^save/AssignVariableOp_27^save/AssignVariableOp_28^save/AssignVariableOp_3^save/AssignVariableOp_4^save/AssignVariableOp_5^save/AssignVariableOp_6^save/AssignVariableOp_7^save/AssignVariableOp_8^save/AssignVariableOp_9
-
save/restore_allNoOp^save/restore_shard "&<
save/Const:0save/Identity:0save/restore_all (5 @F8"?
	variables??
?
conv2d_6/kernel:0conv2d_6/kernel/Assign%conv2d_6/kernel/Read/ReadVariableOp:0(2,conv2d_6/kernel/Initializer/random_uniform:08
s
conv2d_6/bias:0conv2d_6/bias/Assign#conv2d_6/bias/Read/ReadVariableOp:0(2!conv2d_6/bias/Initializer/zeros:08
?
conv2d_7/kernel:0conv2d_7/kernel/Assign%conv2d_7/kernel/Read/ReadVariableOp:0(2,conv2d_7/kernel/Initializer/random_uniform:08
s
conv2d_7/bias:0conv2d_7/bias/Assign#conv2d_7/bias/Read/ReadVariableOp:0(2!conv2d_7/bias/Initializer/zeros:08
?
dense_6/kernel:0dense_6/kernel/Assign$dense_6/kernel/Read/ReadVariableOp:0(2+dense_6/kernel/Initializer/random_uniform:08
o
dense_6/bias:0dense_6/bias/Assign"dense_6/bias/Read/ReadVariableOp:0(2 dense_6/bias/Initializer/zeros:08
?
dense_7/kernel:0dense_7/kernel/Assign$dense_7/kernel/Read/ReadVariableOp:0(2+dense_7/kernel/Initializer/random_uniform:08
o
dense_7/bias:0dense_7/bias/Assign"dense_7/bias/Read/ReadVariableOp:0(2 dense_7/bias/Initializer/zeros:08
c
Adam/iter:0Adam/iter/AssignAdam/iter/Read/ReadVariableOp:0(2Adam/iter/Initializer/zeros:0H
s
Adam/beta_1:0Adam/beta_1/Assign!Adam/beta_1/Read/ReadVariableOp:0(2'Adam/beta_1/Initializer/initial_value:0H
s
Adam/beta_2:0Adam/beta_2/Assign!Adam/beta_2/Read/ReadVariableOp:0(2'Adam/beta_2/Initializer/initial_value:0H
o
Adam/decay:0Adam/decay/Assign Adam/decay/Read/ReadVariableOp:0(2&Adam/decay/Initializer/initial_value:0H
?
Adam/learning_rate:0Adam/learning_rate/Assign(Adam/learning_rate/Read/ReadVariableOp:0(2.Adam/learning_rate/Initializer/initial_value:0H
?
Adam/conv2d_6/kernel/m:0Adam/conv2d_6/kernel/m/Assign,Adam/conv2d_6/kernel/m/Read/ReadVariableOp:0(2*Adam/conv2d_6/kernel/m/Initializer/zeros:0
?
Adam/conv2d_6/bias/m:0Adam/conv2d_6/bias/m/Assign*Adam/conv2d_6/bias/m/Read/ReadVariableOp:0(2(Adam/conv2d_6/bias/m/Initializer/zeros:0
?
Adam/conv2d_7/kernel/m:0Adam/conv2d_7/kernel/m/Assign,Adam/conv2d_7/kernel/m/Read/ReadVariableOp:0(2*Adam/conv2d_7/kernel/m/Initializer/zeros:0
?
Adam/conv2d_7/bias/m:0Adam/conv2d_7/bias/m/Assign*Adam/conv2d_7/bias/m/Read/ReadVariableOp:0(2(Adam/conv2d_7/bias/m/Initializer/zeros:0
?
Adam/dense_6/kernel/m:0Adam/dense_6/kernel/m/Assign+Adam/dense_6/kernel/m/Read/ReadVariableOp:0(2)Adam/dense_6/kernel/m/Initializer/zeros:0
?
Adam/dense_6/bias/m:0Adam/dense_6/bias/m/Assign)Adam/dense_6/bias/m/Read/ReadVariableOp:0(2'Adam/dense_6/bias/m/Initializer/zeros:0
?
Adam/dense_7/kernel/m:0Adam/dense_7/kernel/m/Assign+Adam/dense_7/kernel/m/Read/ReadVariableOp:0(2)Adam/dense_7/kernel/m/Initializer/zeros:0
?
Adam/dense_7/bias/m:0Adam/dense_7/bias/m/Assign)Adam/dense_7/bias/m/Read/ReadVariableOp:0(2'Adam/dense_7/bias/m/Initializer/zeros:0
?
Adam/conv2d_6/kernel/v:0Adam/conv2d_6/kernel/v/Assign,Adam/conv2d_6/kernel/v/Read/ReadVariableOp:0(2*Adam/conv2d_6/kernel/v/Initializer/zeros:0
?
Adam/conv2d_6/bias/v:0Adam/conv2d_6/bias/v/Assign*Adam/conv2d_6/bias/v/Read/ReadVariableOp:0(2(Adam/conv2d_6/bias/v/Initializer/zeros:0
?
Adam/conv2d_7/kernel/v:0Adam/conv2d_7/kernel/v/Assign,Adam/conv2d_7/kernel/v/Read/ReadVariableOp:0(2*Adam/conv2d_7/kernel/v/Initializer/zeros:0
?
Adam/conv2d_7/bias/v:0Adam/conv2d_7/bias/v/Assign*Adam/conv2d_7/bias/v/Read/ReadVariableOp:0(2(Adam/conv2d_7/bias/v/Initializer/zeros:0
?
Adam/dense_6/kernel/v:0Adam/dense_6/kernel/v/Assign+Adam/dense_6/kernel/v/Read/ReadVariableOp:0(2)Adam/dense_6/kernel/v/Initializer/zeros:0
?
Adam/dense_6/bias/v:0Adam/dense_6/bias/v/Assign)Adam/dense_6/bias/v/Read/ReadVariableOp:0(2'Adam/dense_6/bias/v/Initializer/zeros:0
?
Adam/dense_7/kernel/v:0Adam/dense_7/kernel/v/Assign+Adam/dense_7/kernel/v/Read/ReadVariableOp:0(2)Adam/dense_7/kernel/v/Initializer/zeros:0
?
Adam/dense_7/bias/v:0Adam/dense_7/bias/v/Assign)Adam/dense_7/bias/v/Read/ReadVariableOp:0(2'Adam/dense_7/bias/v/Initializer/zeros:0"?
trainable_variables??
?
conv2d_6/kernel:0conv2d_6/kernel/Assign%conv2d_6/kernel/Read/ReadVariableOp:0(2,conv2d_6/kernel/Initializer/random_uniform:08
s
conv2d_6/bias:0conv2d_6/bias/Assign#conv2d_6/bias/Read/ReadVariableOp:0(2!conv2d_6/bias/Initializer/zeros:08
?
conv2d_7/kernel:0conv2d_7/kernel/Assign%conv2d_7/kernel/Read/ReadVariableOp:0(2,conv2d_7/kernel/Initializer/random_uniform:08
s
conv2d_7/bias:0conv2d_7/bias/Assign#conv2d_7/bias/Read/ReadVariableOp:0(2!conv2d_7/bias/Initializer/zeros:08
?
dense_6/kernel:0dense_6/kernel/Assign$dense_6/kernel/Read/ReadVariableOp:0(2+dense_6/kernel/Initializer/random_uniform:08
o
dense_6/bias:0dense_6/bias/Assign"dense_6/bias/Read/ReadVariableOp:0(2 dense_6/bias/Initializer/zeros:08
?
dense_7/kernel:0dense_7/kernel/Assign$dense_7/kernel/Read/ReadVariableOp:0(2+dense_7/kernel/Initializer/random_uniform:08
o
dense_7/bias:0dense_7/bias/Assign"dense_7/bias/Read/ReadVariableOp:0(2 dense_7/bias/Initializer/zeros:08*?
serving_default?
>
input_image/
conv2d_6_input:0?????????@@=
dense_7/Softmax:0(
dense_7/Softmax:0?????????tensorflow/serving/predict