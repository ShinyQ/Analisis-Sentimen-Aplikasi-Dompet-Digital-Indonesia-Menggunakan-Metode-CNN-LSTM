??2
?3?3
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
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
K
Bincount
arr
size
weights"T	
bins"T"
Ttype:
2	
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
output"T"
Ttype:	
2"
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
?
Cumsum
x"T
axis"Tidx
out"T"
	exclusivebool( "
reversebool( " 
Ttype:
2	"
Tidxtype0:
2	
R
Equal
x"T
y"T
z
"	
Ttype"$
incompatible_shape_errorbool(?
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
=
Greater
x"T
y"T
z
"
Ttype:
2	
?
HashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype?
.
Identity

input"T
output"T"	
Ttype
:
Less
x"T
y"T
z
"
Ttype:
2	
l
LookupTableExportV2
table_handle
keys"Tkeys
values"Tvalues"
Tkeystype"
Tvaluestype?
w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
Touttype?
b
LookupTableImportV2
table_handle
keys"Tin
values"Tout"
Tintype"
Touttype?
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
Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
?
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
>
Maximum
x"T
y"T
z"T"
Ttype:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
>
Minimum
x"T
y"T
z"T"
Ttype:
2	
?
Mul
x"T
y"T
z"T"
Ttype:
2	?
?
MutableHashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
?
PartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
?
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
?
RaggedTensorToTensor
shape"Tshape
values"T
default_value"T:
row_partition_tensors"Tindex*num_row_partition_tensors
result"T"	
Ttype"
Tindextype:
2	"
Tshapetype:
2	"$
num_row_partition_tensorsint(0"#
row_partition_typeslist(string)
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
?
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	?
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
?
Select
	condition

t"T
e"T
output"T"	
Ttype
A
SelectV2
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
9
Softmax
logits"T
softmax"T"
Ttype:
2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
?
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
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
m
StaticRegexReplace	
input

output"
patternstring"
rewritestring"
replace_globalbool(
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
<
StringLower	
input

output"
encodingstring 
e
StringSplitV2	
input
sep
indices	

values	
shape	"
maxsplitint?????????
-
Tanh
x"T
y"T"
Ttype:

2
?
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type*
output_handle??element_dtype"
element_dtypetype"

shape_typetype:
2	
?
TensorListReserve
element_shape"
shape_type
num_elements#
handle??element_dtype"
element_dtypetype"

shape_typetype:
2	
?
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint?????????
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?
?
While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
?"serve*2.6.02v2.6.0-0-g919f693420e8??0
?
embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*%
shared_nameembedding/embeddings

(embedding/embeddings/Read/ReadVariableOpReadVariableOpembedding/embeddings* 
_output_shapes
:
??*
dtype0
{
conv1d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:? *
shared_nameconv1d/kernel
t
!conv1d/kernel/Read/ReadVariableOpReadVariableOpconv1d/kernel*#
_output_shapes
:? *
dtype0
n
conv1d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv1d/bias
g
conv1d/bias/Read/ReadVariableOpReadVariableOpconv1d/bias*
_output_shapes
: *
dtype0
y
dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*
shared_namedense_2/kernel
r
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*
_output_shapes
:	?*
dtype0
p
dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_2/bias
i
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
?
lstm/lstm_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 ?*&
shared_namelstm/lstm_cell/kernel
?
)lstm/lstm_cell/kernel/Read/ReadVariableOpReadVariableOplstm/lstm_cell/kernel*
_output_shapes
:	 ?*
dtype0
?
lstm/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*0
shared_name!lstm/lstm_cell/recurrent_kernel
?
3lstm/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOplstm/lstm_cell/recurrent_kernel* 
_output_shapes
:
??*
dtype0

lstm/lstm_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*$
shared_namelstm/lstm_cell/bias
x
'lstm/lstm_cell/bias/Read/ReadVariableOpReadVariableOplstm/lstm_cell/bias*
_output_shapes	
:?*
dtype0
m

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name13374*
value_dtype0	
|
MutableHashTableMutableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name	table_7*
value_dtype0	
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
n
accumulatorVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameaccumulator
g
accumulator/Read/ReadVariableOpReadVariableOpaccumulator*
_output_shapes
:*
dtype0
r
accumulator_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameaccumulator_1
k
!accumulator_1/Read/ReadVariableOpReadVariableOpaccumulator_1*
_output_shapes
:*
dtype0
r
accumulator_2VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameaccumulator_2
k
!accumulator_2/Read/ReadVariableOpReadVariableOpaccumulator_2*
_output_shapes
:*
dtype0
r
accumulator_3VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameaccumulator_3
k
!accumulator_3/Read/ReadVariableOpReadVariableOpaccumulator_3*
_output_shapes
:*
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
t
true_positivesVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nametrue_positives
m
"true_positives/Read/ReadVariableOpReadVariableOptrue_positives*
_output_shapes
:*
dtype0
v
false_positivesVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namefalse_positives
o
#false_positives/Read/ReadVariableOpReadVariableOpfalse_positives*
_output_shapes
:*
dtype0
x
true_positives_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nametrue_positives_1
q
$true_positives_1/Read/ReadVariableOpReadVariableOptrue_positives_1*
_output_shapes
:*
dtype0
v
false_negativesVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namefalse_negatives
o
#false_negatives/Read/ReadVariableOpReadVariableOpfalse_negatives*
_output_shapes
:*
dtype0
y
true_positives_2VarHandleOp*
_output_shapes
: *
dtype0*
shape:?*!
shared_nametrue_positives_2
r
$true_positives_2/Read/ReadVariableOpReadVariableOptrue_positives_2*
_output_shapes	
:?*
dtype0
u
true_negativesVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nametrue_negatives
n
"true_negatives/Read/ReadVariableOpReadVariableOptrue_negatives*
_output_shapes	
:?*
dtype0
{
false_positives_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:?*"
shared_namefalse_positives_1
t
%false_positives_1/Read/ReadVariableOpReadVariableOpfalse_positives_1*
_output_shapes	
:?*
dtype0
{
false_negatives_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:?*"
shared_namefalse_negatives_1
t
%false_negatives_1/Read/ReadVariableOpReadVariableOpfalse_negatives_1*
_output_shapes	
:?*
dtype0
b
total_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_2
[
total_2/Read/ReadVariableOpReadVariableOptotal_2*
_output_shapes
: *
dtype0
b
count_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_2
[
count_2/Read/ReadVariableOpReadVariableOpcount_2*
_output_shapes
: *
dtype0
?
Adam/embedding/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*,
shared_nameAdam/embedding/embeddings/m
?
/Adam/embedding/embeddings/m/Read/ReadVariableOpReadVariableOpAdam/embedding/embeddings/m* 
_output_shapes
:
??*
dtype0
?
Adam/conv1d/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:? *%
shared_nameAdam/conv1d/kernel/m
?
(Adam/conv1d/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv1d/kernel/m*#
_output_shapes
:? *
dtype0
|
Adam/conv1d/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/conv1d/bias/m
u
&Adam/conv1d/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv1d/bias/m*
_output_shapes
: *
dtype0
?
Adam/dense_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*&
shared_nameAdam/dense_2/kernel/m
?
)Adam/dense_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/m*
_output_shapes
:	?*
dtype0
~
Adam/dense_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_2/bias/m
w
'Adam/dense_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/m*
_output_shapes
:*
dtype0
?
Adam/lstm/lstm_cell/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 ?*-
shared_nameAdam/lstm/lstm_cell/kernel/m
?
0Adam/lstm/lstm_cell/kernel/m/Read/ReadVariableOpReadVariableOpAdam/lstm/lstm_cell/kernel/m*
_output_shapes
:	 ?*
dtype0
?
&Adam/lstm/lstm_cell/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*7
shared_name(&Adam/lstm/lstm_cell/recurrent_kernel/m
?
:Adam/lstm/lstm_cell/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp&Adam/lstm/lstm_cell/recurrent_kernel/m* 
_output_shapes
:
??*
dtype0
?
Adam/lstm/lstm_cell/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*+
shared_nameAdam/lstm/lstm_cell/bias/m
?
.Adam/lstm/lstm_cell/bias/m/Read/ReadVariableOpReadVariableOpAdam/lstm/lstm_cell/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/embedding/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*,
shared_nameAdam/embedding/embeddings/v
?
/Adam/embedding/embeddings/v/Read/ReadVariableOpReadVariableOpAdam/embedding/embeddings/v* 
_output_shapes
:
??*
dtype0
?
Adam/conv1d/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:? *%
shared_nameAdam/conv1d/kernel/v
?
(Adam/conv1d/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv1d/kernel/v*#
_output_shapes
:? *
dtype0
|
Adam/conv1d/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/conv1d/bias/v
u
&Adam/conv1d/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv1d/bias/v*
_output_shapes
: *
dtype0
?
Adam/dense_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*&
shared_nameAdam/dense_2/kernel/v
?
)Adam/dense_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/v*
_output_shapes
:	?*
dtype0
~
Adam/dense_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_2/bias/v
w
'Adam/dense_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/v*
_output_shapes
:*
dtype0
?
Adam/lstm/lstm_cell/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 ?*-
shared_nameAdam/lstm/lstm_cell/kernel/v
?
0Adam/lstm/lstm_cell/kernel/v/Read/ReadVariableOpReadVariableOpAdam/lstm/lstm_cell/kernel/v*
_output_shapes
:	 ?*
dtype0
?
&Adam/lstm/lstm_cell/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*7
shared_name(&Adam/lstm/lstm_cell/recurrent_kernel/v
?
:Adam/lstm/lstm_cell/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp&Adam/lstm/lstm_cell/recurrent_kernel/v* 
_output_shapes
:
??*
dtype0
?
Adam/lstm/lstm_cell/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*+
shared_nameAdam/lstm/lstm_cell/bias/v
?
.Adam/lstm/lstm_cell/bias/v/Read/ReadVariableOpReadVariableOpAdam/lstm/lstm_cell/bias/v*
_output_shapes	
:?*
dtype0
G
ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R
H
Const_1Const*
_output_shapes
: *
dtype0*
valueB B 
I
Const_2Const*
_output_shapes
: *
dtype0	*
value	B	 R 
I
Const_3Const*
_output_shapes
: *
dtype0	*
value	B	 R 
?
Const_4Const*
_output_shapes	
:?*
dtype0*?
value?B??BtempatBmakananBuntukBenakBmakanBhargaBmenuBbandungBcukupBorangBbangetBjadiBrasaBrestoranBrasanyaBvaksinBjalanBdatangBnyamanB	pelayananBmalamBtemanBsuasanaBnasiBgorengBsatuBayamBmahalBanakBbagusBbaikBsukaBpemandanganBcovidBlumayanBkurangBpasBsalahBtahuBrestoBlokasiBkeluargaBcocokBpesanB	indonesiaBsteakBpilihanBkotaBbenarBramaiBbesarBkaliBrumahBdehBjamBmurahBsundaBminumanBkhasBporsiBcobaBluarBwaktuBokeBmasukBkafeBmasakanBmiBatasBtahunBpelayanBternyataBfavoritBbakarBramahBterusBrakyatBpakaiB	menikmatiBsayangBsiangBmembuatBdudukBmemesanBsambalBmelihatBbaksoBmencobaBdagingBjauhBmenurutBcepatBmenjadiBmejaBluasBsesuaiB
terjangkauBpakBsegarBlangsungBmantapBpertamaBkecewaBparkirBunikBpedasBbatagorBpartaiBrekomendasiBmenungguBjokowiBikanB	disajikanBpunyaBkopiBstandarBtheBbeliBtetapBhotelBhatiBdaerahBberadaBtersediaBsejukBdaunBvirusBperluBnamaBterletakBmulaiBdicobaBribuBareaBsecaraBmemilihBkataB	perempuanBpenuhBbumbuBnegaraBcoronaBpresidenB
pengunjungB
pemerintahBjakartaBindahBbersihBberbagaiBwarungBkuBawalBkakakBsateBesBmenarikBmampirBbabiBpilihB	strategisBislamBtengahB	nongkrongBterasaBmanisBfotoBzamanBcariBagamaBkonsepBkampungBairBmemintaBsaungBbaratBudaraBhabisBsusahBmengecewakanBberagamBotakBromantisBdinginBtibaBrotiBrataBmudahBmencariBmemilikiBlezatBkulinerBkualitasBkuahBibuBdagoBmenyediakanBpesananBkembaliBterkenalBminumBkemarinBjawaBterutamaBlantaiBbodohBbarangBlampuBditambahBbragaBlidahB
masyarakatBhidanganBcinaBbilangBsenangBmingguBduaB
berkunjungBbayarBsoreBnikmatBjenisBterimaBsoalBmatiBkomunisBkerjaB
ditawarkanBbedaBtidakBalamBpasanganBlengkapBlembangBkueBkotorBfpiBallahBpagiBumumBsausBlihatBorderBmalBkenaBistimewaBterbaikBasinBpizzaBpiringBpergiBnaikBtinggalBbawaBanjingBlupaB
menyajikanBmasBkejuBcaraBberbedaBudangBpokokBdirekomendasikanBasikBalaBwajibBtermasukBterdapatBmenyesalBmataBmainBletakBehBanekaBakhirBuangBtinggiBterlihatBtamuBsantaiBmieBmengunjungiBmasalahBkeseluruhanBbapakBruanganBmenyenangkanBmasaBgurihBtakutBspesialBpanasBmenujuBisiBbuburBacaraBkepitingButamaBtradisionalBtokoBsemogaBsakitBpulangBmudaBmanusiaBhidupBamanBtuaBringanBrelatifBmarahBdasarBukuranBkumpulBkeluarB
kebanyakanBjeBbulanBbicaraBsokBsayurBmenitBmenginapB	mahasiswaBkerenBkambingBkakiBinteriorBantiBanBtungguBseleraBpaketBmobilBmaafBchickenBtepatBkadangBjelasBheBgilaBgaraBanehBtopBstroberiBmerasaBmenggunakan
?
Const_5Const*
_output_shapes	
:?*
dtype0	*?
value?B?	?"?                                                 	       
                                                                                                                                                                  !       "       #       $       %       &       '       (       )       *       +       ,       -       .       /       0       1       2       3       4       5       6       7       8       9       :       ;       <       =       >       ?       @       A       B       C       D       E       F       G       H       I       J       K       L       M       N       O       P       Q       R       S       T       U       V       W       X       Y       Z       [       \       ]       ^       _       `       a       b       c       d       e       f       g       h       i       j       k       l       m       n       o       p       q       r       s       t       u       v       w       x       y       z       {       |       }       ~              ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?                                                              	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      
?
StatefulPartitionedCallStatefulPartitionedCall
hash_tableConst_4Const_5*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *#
fR
__inference_<lambda>_18444
?
PartitionedCallPartitionedCall*	
Tin
 *
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *#
fR
__inference_<lambda>_18449
8
NoOpNoOp^PartitionedCall^StatefulPartitionedCall
?
?MutableHashTable_lookup_table_export_values/LookupTableExportV2LookupTableExportV2MutableHashTable*
Tkeys0*
Tvalues0	*#
_class
loc:@MutableHashTable*
_output_shapes

::
?H
Const_6Const"/device:CPU:0*
_output_shapes
: *
dtype0*?G
value?GB?G B?G
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer-4
layer_with_weights-3
layer-5
layer_with_weights-4
layer-6
	optimizer
	trainable_variables

	variables
regularization_losses
	keras_api

signatures
 
(
_index_lookup_layer
	keras_api
b

embeddings
trainable_variables
regularization_losses
	variables
	keras_api
h

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
R
trainable_variables
regularization_losses
	variables
	keras_api
l
cell
 
state_spec
!trainable_variables
"	variables
#regularization_losses
$	keras_api
h

%kernel
&bias
'trainable_variables
(regularization_losses
)	variables
*	keras_api
?
+iter

,beta_1

-beta_2
	.decay
/learning_ratem?m?m?%m?&m?0m?1m?2m?v?v?v?%v?&v?0v?1v?2v?
8
0
1
2
03
14
25
%6
&7
8
1
2
3
04
15
26
%7
&8
 
?
	trainable_variables
3layer_metrics
4non_trainable_variables
5layer_regularization_losses

6layers

	variables
regularization_losses
7metrics
 
3
8lookup_table
9token_counts
:	keras_api
 
db
VARIABLE_VALUEembedding/embeddings:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUE

0
 

0
?
trainable_variables
regularization_losses
;layer_metrics
<non_trainable_variables
=layer_regularization_losses

>layers
	variables
?metrics
YW
VARIABLE_VALUEconv1d/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEconv1d/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
?
trainable_variables
regularization_losses
@layer_metrics
Anon_trainable_variables
Blayer_regularization_losses

Clayers
	variables
Dmetrics
 
 
 
?
trainable_variables
regularization_losses
Elayer_metrics
Fnon_trainable_variables
Glayer_regularization_losses

Hlayers
	variables
Imetrics
?
J
state_size

0kernel
1recurrent_kernel
2bias
Ktrainable_variables
Lregularization_losses
M	variables
N	keras_api
 

00
11
22

00
11
22
 
?
!trainable_variables
Olayer_metrics
Pnon_trainable_variables
Qlayer_regularization_losses

Rlayers

Sstates
"	variables
#regularization_losses
Tmetrics
ZX
VARIABLE_VALUEdense_2/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_2/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

%0
&1
 

%0
&1
?
'trainable_variables
(regularization_losses
Ulayer_metrics
Vnon_trainable_variables
Wlayer_regularization_losses

Xlayers
)	variables
Ymetrics
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUElstm/lstm_cell/kernel0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUElstm/lstm_cell/recurrent_kernel0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm/lstm_cell/bias0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUE
 
 
 
1
0
1
2
3
4
5
6
F
Z0
[1
\2
]3
^4
_5
`6
a7
b8
c9

d_initializer
RP
tableGlayer_with_weights-0/_index_lookup_layer/token_counts/.ATTRIBUTES/table
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

00
11
22
 

00
11
22
?
Ktrainable_variables
Lregularization_losses
elayer_metrics
fnon_trainable_variables
glayer_regularization_losses

hlayers
M	variables
imetrics
 
 
 

0
 
 
 
 
 
 
 
4
	jtotal
	kcount
l	variables
m	keras_api
?
n
thresholds
oaccumulator
p	variables
q	keras_api
?
r
thresholds
saccumulator
t	variables
u	keras_api
?
v
thresholds
waccumulator
x	variables
y	keras_api
?
z
thresholds
{accumulator
|	variables
}	keras_api
G
	~total
	count
?
_fn_kwargs
?	variables
?	keras_api
\
?
thresholds
?true_positives
?false_positives
?	variables
?	keras_api
\
?
thresholds
?true_positives
?false_negatives
?	variables
?	keras_api
v
?true_positives
?true_negatives
?false_positives
?false_negatives
?	variables
?	keras_api
I

?total

?count
?
_fn_kwargs
?	variables
?	keras_api
 
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

j0
k1

l	variables
 
[Y
VARIABLE_VALUEaccumulator:keras_api/metrics/1/accumulator/.ATTRIBUTES/VARIABLE_VALUE

o0

p	variables
 
][
VARIABLE_VALUEaccumulator_1:keras_api/metrics/2/accumulator/.ATTRIBUTES/VARIABLE_VALUE

s0

t	variables
 
][
VARIABLE_VALUEaccumulator_2:keras_api/metrics/3/accumulator/.ATTRIBUTES/VARIABLE_VALUE

w0

x	variables
 
][
VARIABLE_VALUEaccumulator_3:keras_api/metrics/4/accumulator/.ATTRIBUTES/VARIABLE_VALUE

{0

|	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/5/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/5/count/.ATTRIBUTES/VARIABLE_VALUE
 

~0
1

?	variables
 
a_
VARIABLE_VALUEtrue_positives=keras_api/metrics/6/true_positives/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUEfalse_positives>keras_api/metrics/6/false_positives/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
 
ca
VARIABLE_VALUEtrue_positives_1=keras_api/metrics/7/true_positives/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUEfalse_negatives>keras_api/metrics/7/false_negatives/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
ca
VARIABLE_VALUEtrue_positives_2=keras_api/metrics/8/true_positives/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUEtrue_negatives=keras_api/metrics/8/true_negatives/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEfalse_positives_1>keras_api/metrics/8/false_positives/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEfalse_negatives_1>keras_api/metrics/8/false_negatives/.ATTRIBUTES/VARIABLE_VALUE
 
?0
?1
?2
?3

?	variables
QO
VARIABLE_VALUEtotal_24keras_api/metrics/9/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_24keras_api/metrics/9/count/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1

?	variables
??
VARIABLE_VALUEAdam/embedding/embeddings/mVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv1d/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/conv1d/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_2/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_2/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/lstm/lstm_cell/kernel/mLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE&Adam/lstm/lstm_cell/recurrent_kernel/mLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/lstm/lstm_cell/bias/mLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/embedding/embeddings/vVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv1d/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/conv1d/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_2/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_2/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/lstm/lstm_cell/kernel/vLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE&Adam/lstm/lstm_cell/recurrent_kernel/vLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/lstm/lstm_cell/bias/vLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
z
serving_default_input_1Placeholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
?
StatefulPartitionedCall_1StatefulPartitionedCallserving_default_input_1
hash_tableConstConst_1Const_2embedding/embeddingsconv1d/kernelconv1d/biaslstm/lstm_cell/kernellstm/lstm_cell/biaslstm/lstm_cell/recurrent_kerneldense_2/kerneldense_2/bias*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *,
f'R%
#__inference_signature_wrapper_15835
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename(embedding/embeddings/Read/ReadVariableOp!conv1d/kernel/Read/ReadVariableOpconv1d/bias/Read/ReadVariableOp"dense_2/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp)lstm/lstm_cell/kernel/Read/ReadVariableOp3lstm/lstm_cell/recurrent_kernel/Read/ReadVariableOp'lstm/lstm_cell/bias/Read/ReadVariableOp?MutableHashTable_lookup_table_export_values/LookupTableExportV2AMutableHashTable_lookup_table_export_values/LookupTableExportV2:1total/Read/ReadVariableOpcount/Read/ReadVariableOpaccumulator/Read/ReadVariableOp!accumulator_1/Read/ReadVariableOp!accumulator_2/Read/ReadVariableOp!accumulator_3/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp"true_positives/Read/ReadVariableOp#false_positives/Read/ReadVariableOp$true_positives_1/Read/ReadVariableOp#false_negatives/Read/ReadVariableOp$true_positives_2/Read/ReadVariableOp"true_negatives/Read/ReadVariableOp%false_positives_1/Read/ReadVariableOp%false_negatives_1/Read/ReadVariableOptotal_2/Read/ReadVariableOpcount_2/Read/ReadVariableOp/Adam/embedding/embeddings/m/Read/ReadVariableOp(Adam/conv1d/kernel/m/Read/ReadVariableOp&Adam/conv1d/bias/m/Read/ReadVariableOp)Adam/dense_2/kernel/m/Read/ReadVariableOp'Adam/dense_2/bias/m/Read/ReadVariableOp0Adam/lstm/lstm_cell/kernel/m/Read/ReadVariableOp:Adam/lstm/lstm_cell/recurrent_kernel/m/Read/ReadVariableOp.Adam/lstm/lstm_cell/bias/m/Read/ReadVariableOp/Adam/embedding/embeddings/v/Read/ReadVariableOp(Adam/conv1d/kernel/v/Read/ReadVariableOp&Adam/conv1d/bias/v/Read/ReadVariableOp)Adam/dense_2/kernel/v/Read/ReadVariableOp'Adam/dense_2/bias/v/Read/ReadVariableOp0Adam/lstm/lstm_cell/kernel/v/Read/ReadVariableOp:Adam/lstm/lstm_cell/recurrent_kernel/v/Read/ReadVariableOp.Adam/lstm/lstm_cell/bias/v/Read/ReadVariableOpConst_6*>
Tin7
523		*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *'
f"R 
__inference__traced_save_18627
?	
StatefulPartitionedCall_3StatefulPartitionedCallsaver_filenameembedding/embeddingsconv1d/kernelconv1d/biasdense_2/kerneldense_2/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm/lstm_cell/kernellstm/lstm_cell/recurrent_kernellstm/lstm_cell/biasMutableHashTabletotalcountaccumulatoraccumulator_1accumulator_2accumulator_3total_1count_1true_positivesfalse_positivestrue_positives_1false_negativestrue_positives_2true_negativesfalse_positives_1false_negatives_1total_2count_2Adam/embedding/embeddings/mAdam/conv1d/kernel/mAdam/conv1d/bias/mAdam/dense_2/kernel/mAdam/dense_2/bias/mAdam/lstm/lstm_cell/kernel/m&Adam/lstm/lstm_cell/recurrent_kernel/mAdam/lstm/lstm_cell/bias/mAdam/embedding/embeddings/vAdam/conv1d/kernel/vAdam/conv1d/bias/vAdam/dense_2/kernel/vAdam/dense_2/bias/vAdam/lstm/lstm_cell/kernel/v&Adam/lstm/lstm_cell/recurrent_kernel/vAdam/lstm/lstm_cell/bias/v*<
Tin5
321*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? **
f%R#
!__inference__traced_restore_18781??.
?
?
while_cond_17265
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_17265___redundant_placeholder03
/while_while_cond_17265___redundant_placeholder13
/while_while_cond_17265___redundant_placeholder23
/while_while_cond_17265___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?	
?
__inference_restore_fn_18436
restored_tensors_0
restored_tensors_1	C
?mutablehashtable_table_restore_lookuptableimportv2_table_handle
identity??2MutableHashTable_table_restore/LookupTableImportV2?
2MutableHashTable_table_restore/LookupTableImportV2LookupTableImportV2?mutablehashtable_table_restore_lookuptableimportv2_table_handlerestored_tensors_0restored_tensors_1",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
 24
2MutableHashTable_table_restore/LookupTableImportV2P
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
ConstX
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: 2

Identity?
NoOpNoOp3^MutableHashTable_table_restore/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes

::: 2h
2MutableHashTable_table_restore/LookupTableImportV22MutableHashTable_table_restore/LookupTableImportV2:L H

_output_shapes
:
,
_user_specified_namerestored_tensors_0:LH

_output_shapes
:
,
_user_specified_namerestored_tensors_1
?
?
$__inference_lstm_layer_call_fn_16834

inputs
unknown:	 ?
	unknown_0:	?
	unknown_1:
??
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_154602
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:????????? : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
F
__inference__creator_18399
identity: ??MutableHashTable?
MutableHashTableMutableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name	table_7*
value_dtype0	2
MutableHashTablei
IdentityIdentityMutableHashTable:table_handle:0^NoOp*
T0*
_output_shapes
: 2

Identitya
NoOpNoOp^MutableHashTable*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2$
MutableHashTableMutableHashTable
˒
?

lstm_while_body_16079&
"lstm_while_lstm_while_loop_counter,
(lstm_while_lstm_while_maximum_iterations
lstm_while_placeholder
lstm_while_placeholder_1
lstm_while_placeholder_2
lstm_while_placeholder_3%
!lstm_while_lstm_strided_slice_1_0a
]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0G
4lstm_while_lstm_cell_split_readvariableop_resource_0:	 ?E
6lstm_while_lstm_cell_split_1_readvariableop_resource_0:	?B
.lstm_while_lstm_cell_readvariableop_resource_0:
??
lstm_while_identity
lstm_while_identity_1
lstm_while_identity_2
lstm_while_identity_3
lstm_while_identity_4
lstm_while_identity_5#
lstm_while_lstm_strided_slice_1_
[lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensorE
2lstm_while_lstm_cell_split_readvariableop_resource:	 ?C
4lstm_while_lstm_cell_split_1_readvariableop_resource:	?@
,lstm_while_lstm_cell_readvariableop_resource:
????#lstm/while/lstm_cell/ReadVariableOp?%lstm/while/lstm_cell/ReadVariableOp_1?%lstm/while/lstm_cell/ReadVariableOp_2?%lstm/while/lstm_cell/ReadVariableOp_3?)lstm/while/lstm_cell/split/ReadVariableOp?+lstm/while/lstm_cell/split_1/ReadVariableOp?
<lstm/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2>
<lstm/while/TensorArrayV2Read/TensorListGetItem/element_shape?
.lstm/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0lstm_while_placeholderElstm/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:????????? *
element_dtype020
.lstm/while/TensorArrayV2Read/TensorListGetItem?
$lstm/while/lstm_cell/ones_like/ShapeShape5lstm/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2&
$lstm/while/lstm_cell/ones_like/Shape?
$lstm/while/lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2&
$lstm/while/lstm_cell/ones_like/Const?
lstm/while/lstm_cell/ones_likeFill-lstm/while/lstm_cell/ones_like/Shape:output:0-lstm/while/lstm_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2 
lstm/while/lstm_cell/ones_like?
&lstm/while/lstm_cell/ones_like_1/ShapeShapelstm_while_placeholder_2*
T0*
_output_shapes
:2(
&lstm/while/lstm_cell/ones_like_1/Shape?
&lstm/while/lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2(
&lstm/while/lstm_cell/ones_like_1/Const?
 lstm/while/lstm_cell/ones_like_1Fill/lstm/while/lstm_cell/ones_like_1/Shape:output:0/lstm/while/lstm_cell/ones_like_1/Const:output:0*
T0*(
_output_shapes
:??????????2"
 lstm/while/lstm_cell/ones_like_1?
lstm/while/lstm_cell/mulMul5lstm/while/TensorArrayV2Read/TensorListGetItem:item:0'lstm/while/lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm/while/lstm_cell/mul?
lstm/while/lstm_cell/mul_1Mul5lstm/while/TensorArrayV2Read/TensorListGetItem:item:0'lstm/while/lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm/while/lstm_cell/mul_1?
lstm/while/lstm_cell/mul_2Mul5lstm/while/TensorArrayV2Read/TensorListGetItem:item:0'lstm/while/lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm/while/lstm_cell/mul_2?
lstm/while/lstm_cell/mul_3Mul5lstm/while/TensorArrayV2Read/TensorListGetItem:item:0'lstm/while/lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm/while/lstm_cell/mul_3?
$lstm/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm/while/lstm_cell/split/split_dim?
)lstm/while/lstm_cell/split/ReadVariableOpReadVariableOp4lstm_while_lstm_cell_split_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02+
)lstm/while/lstm_cell/split/ReadVariableOp?
lstm/while/lstm_cell/splitSplit-lstm/while/lstm_cell/split/split_dim:output:01lstm/while/lstm_cell/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	 ?:	 ?:	 ?:	 ?*
	num_split2
lstm/while/lstm_cell/split?
lstm/while/lstm_cell/MatMulMatMullstm/while/lstm_cell/mul:z:0#lstm/while/lstm_cell/split:output:0*
T0*(
_output_shapes
:??????????2
lstm/while/lstm_cell/MatMul?
lstm/while/lstm_cell/MatMul_1MatMullstm/while/lstm_cell/mul_1:z:0#lstm/while/lstm_cell/split:output:1*
T0*(
_output_shapes
:??????????2
lstm/while/lstm_cell/MatMul_1?
lstm/while/lstm_cell/MatMul_2MatMullstm/while/lstm_cell/mul_2:z:0#lstm/while/lstm_cell/split:output:2*
T0*(
_output_shapes
:??????????2
lstm/while/lstm_cell/MatMul_2?
lstm/while/lstm_cell/MatMul_3MatMullstm/while/lstm_cell/mul_3:z:0#lstm/while/lstm_cell/split:output:3*
T0*(
_output_shapes
:??????????2
lstm/while/lstm_cell/MatMul_3?
&lstm/while/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2(
&lstm/while/lstm_cell/split_1/split_dim?
+lstm/while/lstm_cell/split_1/ReadVariableOpReadVariableOp6lstm_while_lstm_cell_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype02-
+lstm/while/lstm_cell/split_1/ReadVariableOp?
lstm/while/lstm_cell/split_1Split/lstm/while/lstm_cell/split_1/split_dim:output:03lstm/while/lstm_cell/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:?:?:?:?*
	num_split2
lstm/while/lstm_cell/split_1?
lstm/while/lstm_cell/BiasAddBiasAdd%lstm/while/lstm_cell/MatMul:product:0%lstm/while/lstm_cell/split_1:output:0*
T0*(
_output_shapes
:??????????2
lstm/while/lstm_cell/BiasAdd?
lstm/while/lstm_cell/BiasAdd_1BiasAdd'lstm/while/lstm_cell/MatMul_1:product:0%lstm/while/lstm_cell/split_1:output:1*
T0*(
_output_shapes
:??????????2 
lstm/while/lstm_cell/BiasAdd_1?
lstm/while/lstm_cell/BiasAdd_2BiasAdd'lstm/while/lstm_cell/MatMul_2:product:0%lstm/while/lstm_cell/split_1:output:2*
T0*(
_output_shapes
:??????????2 
lstm/while/lstm_cell/BiasAdd_2?
lstm/while/lstm_cell/BiasAdd_3BiasAdd'lstm/while/lstm_cell/MatMul_3:product:0%lstm/while/lstm_cell/split_1:output:3*
T0*(
_output_shapes
:??????????2 
lstm/while/lstm_cell/BiasAdd_3?
lstm/while/lstm_cell/mul_4Mullstm_while_placeholder_2)lstm/while/lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:??????????2
lstm/while/lstm_cell/mul_4?
lstm/while/lstm_cell/mul_5Mullstm_while_placeholder_2)lstm/while/lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:??????????2
lstm/while/lstm_cell/mul_5?
lstm/while/lstm_cell/mul_6Mullstm_while_placeholder_2)lstm/while/lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:??????????2
lstm/while/lstm_cell/mul_6?
lstm/while/lstm_cell/mul_7Mullstm_while_placeholder_2)lstm/while/lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:??????????2
lstm/while/lstm_cell/mul_7?
#lstm/while/lstm_cell/ReadVariableOpReadVariableOp.lstm_while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02%
#lstm/while/lstm_cell/ReadVariableOp?
(lstm/while/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(lstm/while/lstm_cell/strided_slice/stack?
*lstm/while/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2,
*lstm/while/lstm_cell/strided_slice/stack_1?
*lstm/while/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*lstm/while/lstm_cell/strided_slice/stack_2?
"lstm/while/lstm_cell/strided_sliceStridedSlice+lstm/while/lstm_cell/ReadVariableOp:value:01lstm/while/lstm_cell/strided_slice/stack:output:03lstm/while/lstm_cell/strided_slice/stack_1:output:03lstm/while/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2$
"lstm/while/lstm_cell/strided_slice?
lstm/while/lstm_cell/MatMul_4MatMullstm/while/lstm_cell/mul_4:z:0+lstm/while/lstm_cell/strided_slice:output:0*
T0*(
_output_shapes
:??????????2
lstm/while/lstm_cell/MatMul_4?
lstm/while/lstm_cell/addAddV2%lstm/while/lstm_cell/BiasAdd:output:0'lstm/while/lstm_cell/MatMul_4:product:0*
T0*(
_output_shapes
:??????????2
lstm/while/lstm_cell/add?
lstm/while/lstm_cell/SigmoidSigmoidlstm/while/lstm_cell/add:z:0*
T0*(
_output_shapes
:??????????2
lstm/while/lstm_cell/Sigmoid?
%lstm/while/lstm_cell/ReadVariableOp_1ReadVariableOp.lstm_while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02'
%lstm/while/lstm_cell/ReadVariableOp_1?
*lstm/while/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2,
*lstm/while/lstm_cell/strided_slice_1/stack?
,lstm/while/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2.
,lstm/while/lstm_cell/strided_slice_1/stack_1?
,lstm/while/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,lstm/while/lstm_cell/strided_slice_1/stack_2?
$lstm/while/lstm_cell/strided_slice_1StridedSlice-lstm/while/lstm_cell/ReadVariableOp_1:value:03lstm/while/lstm_cell/strided_slice_1/stack:output:05lstm/while/lstm_cell/strided_slice_1/stack_1:output:05lstm/while/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2&
$lstm/while/lstm_cell/strided_slice_1?
lstm/while/lstm_cell/MatMul_5MatMullstm/while/lstm_cell/mul_5:z:0-lstm/while/lstm_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:??????????2
lstm/while/lstm_cell/MatMul_5?
lstm/while/lstm_cell/add_1AddV2'lstm/while/lstm_cell/BiasAdd_1:output:0'lstm/while/lstm_cell/MatMul_5:product:0*
T0*(
_output_shapes
:??????????2
lstm/while/lstm_cell/add_1?
lstm/while/lstm_cell/Sigmoid_1Sigmoidlstm/while/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:??????????2 
lstm/while/lstm_cell/Sigmoid_1?
lstm/while/lstm_cell/mul_8Mul"lstm/while/lstm_cell/Sigmoid_1:y:0lstm_while_placeholder_3*
T0*(
_output_shapes
:??????????2
lstm/while/lstm_cell/mul_8?
%lstm/while/lstm_cell/ReadVariableOp_2ReadVariableOp.lstm_while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02'
%lstm/while/lstm_cell/ReadVariableOp_2?
*lstm/while/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2,
*lstm/while/lstm_cell/strided_slice_2/stack?
,lstm/while/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?  2.
,lstm/while/lstm_cell/strided_slice_2/stack_1?
,lstm/while/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,lstm/while/lstm_cell/strided_slice_2/stack_2?
$lstm/while/lstm_cell/strided_slice_2StridedSlice-lstm/while/lstm_cell/ReadVariableOp_2:value:03lstm/while/lstm_cell/strided_slice_2/stack:output:05lstm/while/lstm_cell/strided_slice_2/stack_1:output:05lstm/while/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2&
$lstm/while/lstm_cell/strided_slice_2?
lstm/while/lstm_cell/MatMul_6MatMullstm/while/lstm_cell/mul_6:z:0-lstm/while/lstm_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:??????????2
lstm/while/lstm_cell/MatMul_6?
lstm/while/lstm_cell/add_2AddV2'lstm/while/lstm_cell/BiasAdd_2:output:0'lstm/while/lstm_cell/MatMul_6:product:0*
T0*(
_output_shapes
:??????????2
lstm/while/lstm_cell/add_2?
lstm/while/lstm_cell/TanhTanhlstm/while/lstm_cell/add_2:z:0*
T0*(
_output_shapes
:??????????2
lstm/while/lstm_cell/Tanh?
lstm/while/lstm_cell/mul_9Mul lstm/while/lstm_cell/Sigmoid:y:0lstm/while/lstm_cell/Tanh:y:0*
T0*(
_output_shapes
:??????????2
lstm/while/lstm_cell/mul_9?
lstm/while/lstm_cell/add_3AddV2lstm/while/lstm_cell/mul_8:z:0lstm/while/lstm_cell/mul_9:z:0*
T0*(
_output_shapes
:??????????2
lstm/while/lstm_cell/add_3?
%lstm/while/lstm_cell/ReadVariableOp_3ReadVariableOp.lstm_while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02'
%lstm/while/lstm_cell/ReadVariableOp_3?
*lstm/while/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?  2,
*lstm/while/lstm_cell/strided_slice_3/stack?
,lstm/while/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2.
,lstm/while/lstm_cell/strided_slice_3/stack_1?
,lstm/while/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,lstm/while/lstm_cell/strided_slice_3/stack_2?
$lstm/while/lstm_cell/strided_slice_3StridedSlice-lstm/while/lstm_cell/ReadVariableOp_3:value:03lstm/while/lstm_cell/strided_slice_3/stack:output:05lstm/while/lstm_cell/strided_slice_3/stack_1:output:05lstm/while/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2&
$lstm/while/lstm_cell/strided_slice_3?
lstm/while/lstm_cell/MatMul_7MatMullstm/while/lstm_cell/mul_7:z:0-lstm/while/lstm_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:??????????2
lstm/while/lstm_cell/MatMul_7?
lstm/while/lstm_cell/add_4AddV2'lstm/while/lstm_cell/BiasAdd_3:output:0'lstm/while/lstm_cell/MatMul_7:product:0*
T0*(
_output_shapes
:??????????2
lstm/while/lstm_cell/add_4?
lstm/while/lstm_cell/Sigmoid_2Sigmoidlstm/while/lstm_cell/add_4:z:0*
T0*(
_output_shapes
:??????????2 
lstm/while/lstm_cell/Sigmoid_2?
lstm/while/lstm_cell/Tanh_1Tanhlstm/while/lstm_cell/add_3:z:0*
T0*(
_output_shapes
:??????????2
lstm/while/lstm_cell/Tanh_1?
lstm/while/lstm_cell/mul_10Mul"lstm/while/lstm_cell/Sigmoid_2:y:0lstm/while/lstm_cell/Tanh_1:y:0*
T0*(
_output_shapes
:??????????2
lstm/while/lstm_cell/mul_10?
/lstm/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_while_placeholder_1lstm_while_placeholderlstm/while/lstm_cell/mul_10:z:0*
_output_shapes
: *
element_dtype021
/lstm/while/TensorArrayV2Write/TensorListSetItemf
lstm/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm/while/add/y}
lstm/while/addAddV2lstm_while_placeholderlstm/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm/while/addj
lstm/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm/while/add_1/y?
lstm/while/add_1AddV2"lstm_while_lstm_while_loop_counterlstm/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm/while/add_1
lstm/while/IdentityIdentitylstm/while/add_1:z:0^lstm/while/NoOp*
T0*
_output_shapes
: 2
lstm/while/Identity?
lstm/while/Identity_1Identity(lstm_while_lstm_while_maximum_iterations^lstm/while/NoOp*
T0*
_output_shapes
: 2
lstm/while/Identity_1?
lstm/while/Identity_2Identitylstm/while/add:z:0^lstm/while/NoOp*
T0*
_output_shapes
: 2
lstm/while/Identity_2?
lstm/while/Identity_3Identity?lstm/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm/while/NoOp*
T0*
_output_shapes
: 2
lstm/while/Identity_3?
lstm/while/Identity_4Identitylstm/while/lstm_cell/mul_10:z:0^lstm/while/NoOp*
T0*(
_output_shapes
:??????????2
lstm/while/Identity_4?
lstm/while/Identity_5Identitylstm/while/lstm_cell/add_3:z:0^lstm/while/NoOp*
T0*(
_output_shapes
:??????????2
lstm/while/Identity_5?
lstm/while/NoOpNoOp$^lstm/while/lstm_cell/ReadVariableOp&^lstm/while/lstm_cell/ReadVariableOp_1&^lstm/while/lstm_cell/ReadVariableOp_2&^lstm/while/lstm_cell/ReadVariableOp_3*^lstm/while/lstm_cell/split/ReadVariableOp,^lstm/while/lstm_cell/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm/while/NoOp"3
lstm_while_identitylstm/while/Identity:output:0"7
lstm_while_identity_1lstm/while/Identity_1:output:0"7
lstm_while_identity_2lstm/while/Identity_2:output:0"7
lstm_while_identity_3lstm/while/Identity_3:output:0"7
lstm_while_identity_4lstm/while/Identity_4:output:0"7
lstm_while_identity_5lstm/while/Identity_5:output:0"^
,lstm_while_lstm_cell_readvariableop_resource.lstm_while_lstm_cell_readvariableop_resource_0"n
4lstm_while_lstm_cell_split_1_readvariableop_resource6lstm_while_lstm_cell_split_1_readvariableop_resource_0"j
2lstm_while_lstm_cell_split_readvariableop_resource4lstm_while_lstm_cell_split_readvariableop_resource_0"D
lstm_while_lstm_strided_slice_1!lstm_while_lstm_strided_slice_1_0"?
[lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2J
#lstm/while/lstm_cell/ReadVariableOp#lstm/while/lstm_cell/ReadVariableOp2N
%lstm/while/lstm_cell/ReadVariableOp_1%lstm/while/lstm_cell/ReadVariableOp_12N
%lstm/while/lstm_cell/ReadVariableOp_2%lstm/while/lstm_cell/ReadVariableOp_22N
%lstm/while/lstm_cell/ReadVariableOp_3%lstm/while/lstm_cell/ReadVariableOp_32V
)lstm/while/lstm_cell/split/ReadVariableOp)lstm/while/lstm_cell/split/ReadVariableOp2Z
+lstm/while/lstm_cell/split_1/ReadVariableOp+lstm/while/lstm_cell/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
#__inference_signature_wrapper_15835
input_1
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:
?? 
	unknown_4:? 
	unknown_5: 
	unknown_6:	 ?
	unknown_7:	?
	unknown_8:
??
	unknown_9:	?

unknown_10:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *)
f$R"
 __inference__wrapped_model_138342
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?

)__inference_embedding_layer_call_fn_16730

inputs	
unknown:
??
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????!?*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_147202
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:?????????!?2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????!: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????!
 
_user_specified_nameinputs
?
I
-__inference_max_pooling1d_layer_call_fn_16769

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *=
_output_shapes+
):'???????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_max_pooling1d_layer_call_and_return_conditional_losses_138462
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*=
_output_shapes+
):'???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
??
?
?__inference_lstm_layer_call_and_return_conditional_losses_17085
inputs_0:
'lstm_cell_split_readvariableop_resource:	 ?8
)lstm_cell_split_1_readvariableop_resource:	?5
!lstm_cell_readvariableop_resource:
??
identity??lstm_cell/ReadVariableOp?lstm_cell/ReadVariableOp_1?lstm_cell/ReadVariableOp_2?lstm_cell/ReadVariableOp_3?lstm_cell/split/ReadVariableOp? lstm_cell/split_1/ReadVariableOp?whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :?????????????????? 2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_2~
lstm_cell/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
lstm_cell/ones_like/Shape{
lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell/ones_like/Const?
lstm_cell/ones_likeFill"lstm_cell/ones_like/Shape:output:0"lstm_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell/ones_likex
lstm_cell/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell/ones_like_1/Shape
lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell/ones_like_1/Const?
lstm_cell/ones_like_1Fill$lstm_cell/ones_like_1/Shape:output:0$lstm_cell/ones_like_1/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/ones_like_1?
lstm_cell/mulMulstrided_slice_2:output:0lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell/mul?
lstm_cell/mul_1Mulstrided_slice_2:output:0lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell/mul_1?
lstm_cell/mul_2Mulstrided_slice_2:output:0lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell/mul_2?
lstm_cell/mul_3Mulstrided_slice_2:output:0lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell/mul_3x
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell/split/split_dim?
lstm_cell/split/ReadVariableOpReadVariableOp'lstm_cell_split_readvariableop_resource*
_output_shapes
:	 ?*
dtype02 
lstm_cell/split/ReadVariableOp?
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0&lstm_cell/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	 ?:	 ?:	 ?:	 ?*
	num_split2
lstm_cell/split?
lstm_cell/MatMulMatMullstm_cell/mul:z:0lstm_cell/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/MatMul?
lstm_cell/MatMul_1MatMullstm_cell/mul_1:z:0lstm_cell/split:output:1*
T0*(
_output_shapes
:??????????2
lstm_cell/MatMul_1?
lstm_cell/MatMul_2MatMullstm_cell/mul_2:z:0lstm_cell/split:output:2*
T0*(
_output_shapes
:??????????2
lstm_cell/MatMul_2?
lstm_cell/MatMul_3MatMullstm_cell/mul_3:z:0lstm_cell/split:output:3*
T0*(
_output_shapes
:??????????2
lstm_cell/MatMul_3|
lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_cell/split_1/split_dim?
 lstm_cell/split_1/ReadVariableOpReadVariableOp)lstm_cell_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 lstm_cell/split_1/ReadVariableOp?
lstm_cell/split_1Split$lstm_cell/split_1/split_dim:output:0(lstm_cell/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:?:?:?:?*
	num_split2
lstm_cell/split_1?
lstm_cell/BiasAddBiasAddlstm_cell/MatMul:product:0lstm_cell/split_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/BiasAdd?
lstm_cell/BiasAdd_1BiasAddlstm_cell/MatMul_1:product:0lstm_cell/split_1:output:1*
T0*(
_output_shapes
:??????????2
lstm_cell/BiasAdd_1?
lstm_cell/BiasAdd_2BiasAddlstm_cell/MatMul_2:product:0lstm_cell/split_1:output:2*
T0*(
_output_shapes
:??????????2
lstm_cell/BiasAdd_2?
lstm_cell/BiasAdd_3BiasAddlstm_cell/MatMul_3:product:0lstm_cell/split_1:output:3*
T0*(
_output_shapes
:??????????2
lstm_cell/BiasAdd_3?
lstm_cell/mul_4Mulzeros:output:0lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul_4?
lstm_cell/mul_5Mulzeros:output:0lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul_5?
lstm_cell/mul_6Mulzeros:output:0lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul_6?
lstm_cell/mul_7Mulzeros:output:0lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul_7?
lstm_cell/ReadVariableOpReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
??*
dtype02
lstm_cell/ReadVariableOp?
lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
lstm_cell/strided_slice/stack?
lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2!
lstm_cell/strided_slice/stack_1?
lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2!
lstm_cell/strided_slice/stack_2?
lstm_cell/strided_sliceStridedSlice lstm_cell/ReadVariableOp:value:0&lstm_cell/strided_slice/stack:output:0(lstm_cell/strided_slice/stack_1:output:0(lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
lstm_cell/strided_slice?
lstm_cell/MatMul_4MatMullstm_cell/mul_4:z:0 lstm_cell/strided_slice:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/MatMul_4?
lstm_cell/addAddV2lstm_cell/BiasAdd:output:0lstm_cell/MatMul_4:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell/addw
lstm_cell/SigmoidSigmoidlstm_cell/add:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell/Sigmoid?
lstm_cell/ReadVariableOp_1ReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
??*
dtype02
lstm_cell/ReadVariableOp_1?
lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2!
lstm_cell/strided_slice_1/stack?
!lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2#
!lstm_cell/strided_slice_1/stack_1?
!lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell/strided_slice_1/stack_2?
lstm_cell/strided_slice_1StridedSlice"lstm_cell/ReadVariableOp_1:value:0(lstm_cell/strided_slice_1/stack:output:0*lstm_cell/strided_slice_1/stack_1:output:0*lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
lstm_cell/strided_slice_1?
lstm_cell/MatMul_5MatMullstm_cell/mul_5:z:0"lstm_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/MatMul_5?
lstm_cell/add_1AddV2lstm_cell/BiasAdd_1:output:0lstm_cell/MatMul_5:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell/add_1}
lstm_cell/Sigmoid_1Sigmoidlstm_cell/add_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell/Sigmoid_1?
lstm_cell/mul_8Mullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul_8?
lstm_cell/ReadVariableOp_2ReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
??*
dtype02
lstm_cell/ReadVariableOp_2?
lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2!
lstm_cell/strided_slice_2/stack?
!lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?  2#
!lstm_cell/strided_slice_2/stack_1?
!lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell/strided_slice_2/stack_2?
lstm_cell/strided_slice_2StridedSlice"lstm_cell/ReadVariableOp_2:value:0(lstm_cell/strided_slice_2/stack:output:0*lstm_cell/strided_slice_2/stack_1:output:0*lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
lstm_cell/strided_slice_2?
lstm_cell/MatMul_6MatMullstm_cell/mul_6:z:0"lstm_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/MatMul_6?
lstm_cell/add_2AddV2lstm_cell/BiasAdd_2:output:0lstm_cell/MatMul_6:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell/add_2p
lstm_cell/TanhTanhlstm_cell/add_2:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell/Tanh?
lstm_cell/mul_9Mullstm_cell/Sigmoid:y:0lstm_cell/Tanh:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul_9?
lstm_cell/add_3AddV2lstm_cell/mul_8:z:0lstm_cell/mul_9:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell/add_3?
lstm_cell/ReadVariableOp_3ReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
??*
dtype02
lstm_cell/ReadVariableOp_3?
lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?  2!
lstm_cell/strided_slice_3/stack?
!lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2#
!lstm_cell/strided_slice_3/stack_1?
!lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell/strided_slice_3/stack_2?
lstm_cell/strided_slice_3StridedSlice"lstm_cell/ReadVariableOp_3:value:0(lstm_cell/strided_slice_3/stack:output:0*lstm_cell/strided_slice_3/stack_1:output:0*lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
lstm_cell/strided_slice_3?
lstm_cell/MatMul_7MatMullstm_cell/mul_7:z:0"lstm_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/MatMul_7?
lstm_cell/add_4AddV2lstm_cell/BiasAdd_3:output:0lstm_cell/MatMul_7:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell/add_4}
lstm_cell/Sigmoid_2Sigmoidlstm_cell/add_4:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell/Sigmoid_2t
lstm_cell/Tanh_1Tanhlstm_cell/add_3:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell/Tanh_1?
lstm_cell/mul_10Mullstm_cell/Sigmoid_2:y:0lstm_cell/Tanh_1:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul_10?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0'lstm_cell_split_readvariableop_resource)lstm_cell_split_1_readvariableop_resource!lstm_cell_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_16951*
condR
while_cond_16950*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:???????????????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimet
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp^lstm_cell/ReadVariableOp^lstm_cell/ReadVariableOp_1^lstm_cell/ReadVariableOp_2^lstm_cell/ReadVariableOp_3^lstm_cell/split/ReadVariableOp!^lstm_cell/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:?????????????????? : : : 24
lstm_cell/ReadVariableOplstm_cell/ReadVariableOp28
lstm_cell/ReadVariableOp_1lstm_cell/ReadVariableOp_128
lstm_cell/ReadVariableOp_2lstm_cell/ReadVariableOp_228
lstm_cell/ReadVariableOp_3lstm_cell/ReadVariableOp_32@
lstm_cell/split/ReadVariableOplstm_cell/split/ReadVariableOp2D
 lstm_cell/split_1/ReadVariableOp lstm_cell/split_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :?????????????????? 
"
_user_specified_name
inputs/0
܆
?
E__inference_model_LSTM_layer_call_and_return_conditional_losses_15596

inputsO
Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handleP
Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value	,
(text_vectorization_string_lookup_equal_y/
+text_vectorization_string_lookup_selectv2_t	#
embedding_15574:
??#
conv1d_15577:? 
conv1d_15579: 

lstm_15583:	 ?

lstm_15585:	?

lstm_15587:
?? 
dense_2_15590:	?
dense_2_15592:
identity??conv1d/StatefulPartitionedCall?dense_2/StatefulPartitionedCall?!embedding/StatefulPartitionedCall?lstm/StatefulPartitionedCall?>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2?
text_vectorization/StringLowerStringLowerinputs*'
_output_shapes
:?????????2 
text_vectorization/StringLower?
%text_vectorization/StaticRegexReplaceStaticRegexReplace'text_vectorization/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite 2'
%text_vectorization/StaticRegexReplace?
text_vectorization/SqueezeSqueeze.text_vectorization/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????2
text_vectorization/Squeeze?
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B 2&
$text_vectorization/StringSplit/Const?
,text_vectorization/StringSplit/StringSplitV2StringSplitV2#text_vectorization/Squeeze:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:2.
,text_vectorization/StringSplit/StringSplitV2?
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        24
2text_vectorization/StringSplit/strided_slice/stack?
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       26
4text_vectorization/StringSplit/strided_slice/stack_1?
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      26
4text_vectorization/StringSplit/strided_slice/stack_2?
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2.
,text_vectorization/StringSplit/strided_slice?
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 26
4text_vectorization/StringSplit/strided_slice_1/stack?
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6text_vectorization/StringSplit/strided_slice_1/stack_1?
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6text_vectorization/StringSplit/strided_slice_1/stack_2?
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask20
.text_vectorization/StringSplit/strided_slice_1?
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:?????????2W
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2Y
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:2a
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2a
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: 2`
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod?
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : 2e
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: 2`
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: 2_
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :2a
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: 2_
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: 2_
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2?
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:?????????2d
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : 2^
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:?????????2Y
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum?
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R 2b
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2^
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:?????????2Y
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat?
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????2@
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2?
&text_vectorization/string_lookup/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0(text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:?????????2(
&text_vectorization/string_lookup/Equal?
)text_vectorization/string_lookup/SelectV2SelectV2*text_vectorization/string_lookup/Equal:z:0+text_vectorization_string_lookup_selectv2_tGtext_vectorization/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:?????????2+
)text_vectorization/string_lookup/SelectV2?
)text_vectorization/string_lookup/IdentityIdentity2text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:?????????2+
)text_vectorization/string_lookup/Identity?
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 21
/text_vectorization/RaggedToTensor/default_value?
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"????????!       2)
'text_vectorization/RaggedToTensor/Const?
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:02text_vectorization/string_lookup/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:0`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:?????????!*
num_row_partition_tensors*%
row_partition_types

ROW_SPLITS28
6text_vectorization/RaggedToTensor/RaggedTensorToTensor?
!embedding/StatefulPartitionedCallStatefulPartitionedCall?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0embedding_15574*
Tin
2	*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????!?*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_147202#
!embedding/StatefulPartitionedCall?
conv1d/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0conv1d_15577conv1d_15579*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????! *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_conv1d_layer_call_and_return_conditional_losses_147402 
conv1d/StatefulPartitionedCall?
max_pooling1d/PartitionedCallPartitionedCall'conv1d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_max_pooling1d_layer_call_and_return_conditional_losses_147532
max_pooling1d/PartitionedCall?
lstm/StatefulPartitionedCallStatefulPartitionedCall&max_pooling1d/PartitionedCall:output:0
lstm_15583
lstm_15585
lstm_15587*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_154602
lstm/StatefulPartitionedCall?
dense_2/StatefulPartitionedCallStatefulPartitionedCall%lstm/StatefulPartitionedCall:output:0dense_2_15590dense_2_15592*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_150242!
dense_2/StatefulPartitionedCall?
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp^conv1d/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall"^embedding/StatefulPartitionedCall^lstm/StatefulPartitionedCall?^text_vectorization/string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : : : : : 2@
conv1d/StatefulPartitionedCallconv1d/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall2?
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
߆
?
E__inference_model_LSTM_layer_call_and_return_conditional_losses_15725
input_1O
Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handleP
Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value	,
(text_vectorization_string_lookup_equal_y/
+text_vectorization_string_lookup_selectv2_t	#
embedding_15703:
??#
conv1d_15706:? 
conv1d_15708: 

lstm_15712:	 ?

lstm_15714:	?

lstm_15716:
?? 
dense_2_15719:	?
dense_2_15721:
identity??conv1d/StatefulPartitionedCall?dense_2/StatefulPartitionedCall?!embedding/StatefulPartitionedCall?lstm/StatefulPartitionedCall?>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2?
text_vectorization/StringLowerStringLowerinput_1*'
_output_shapes
:?????????2 
text_vectorization/StringLower?
%text_vectorization/StaticRegexReplaceStaticRegexReplace'text_vectorization/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite 2'
%text_vectorization/StaticRegexReplace?
text_vectorization/SqueezeSqueeze.text_vectorization/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????2
text_vectorization/Squeeze?
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B 2&
$text_vectorization/StringSplit/Const?
,text_vectorization/StringSplit/StringSplitV2StringSplitV2#text_vectorization/Squeeze:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:2.
,text_vectorization/StringSplit/StringSplitV2?
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        24
2text_vectorization/StringSplit/strided_slice/stack?
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       26
4text_vectorization/StringSplit/strided_slice/stack_1?
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      26
4text_vectorization/StringSplit/strided_slice/stack_2?
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2.
,text_vectorization/StringSplit/strided_slice?
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 26
4text_vectorization/StringSplit/strided_slice_1/stack?
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6text_vectorization/StringSplit/strided_slice_1/stack_1?
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6text_vectorization/StringSplit/strided_slice_1/stack_2?
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask20
.text_vectorization/StringSplit/strided_slice_1?
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:?????????2W
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2Y
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:2a
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2a
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: 2`
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod?
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : 2e
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: 2`
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: 2_
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :2a
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: 2_
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: 2_
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2?
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:?????????2d
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : 2^
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:?????????2Y
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum?
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R 2b
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2^
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:?????????2Y
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat?
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????2@
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2?
&text_vectorization/string_lookup/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0(text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:?????????2(
&text_vectorization/string_lookup/Equal?
)text_vectorization/string_lookup/SelectV2SelectV2*text_vectorization/string_lookup/Equal:z:0+text_vectorization_string_lookup_selectv2_tGtext_vectorization/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:?????????2+
)text_vectorization/string_lookup/SelectV2?
)text_vectorization/string_lookup/IdentityIdentity2text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:?????????2+
)text_vectorization/string_lookup/Identity?
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 21
/text_vectorization/RaggedToTensor/default_value?
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"????????!       2)
'text_vectorization/RaggedToTensor/Const?
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:02text_vectorization/string_lookup/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:0`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:?????????!*
num_row_partition_tensors*%
row_partition_types

ROW_SPLITS28
6text_vectorization/RaggedToTensor/RaggedTensorToTensor?
!embedding/StatefulPartitionedCallStatefulPartitionedCall?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0embedding_15703*
Tin
2	*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????!?*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_147202#
!embedding/StatefulPartitionedCall?
conv1d/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0conv1d_15706conv1d_15708*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????! *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_conv1d_layer_call_and_return_conditional_losses_147402 
conv1d/StatefulPartitionedCall?
max_pooling1d/PartitionedCallPartitionedCall'conv1d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_max_pooling1d_layer_call_and_return_conditional_losses_147532
max_pooling1d/PartitionedCall?
lstm/StatefulPartitionedCallStatefulPartitionedCall&max_pooling1d/PartitionedCall:output:0
lstm_15712
lstm_15714
lstm_15716*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_150052
lstm/StatefulPartitionedCall?
dense_2/StatefulPartitionedCallStatefulPartitionedCall%lstm/StatefulPartitionedCall:output:0dense_2_15719dense_2_15721*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_150242!
dense_2/StatefulPartitionedCall?
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp^conv1d/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall"^embedding/StatefulPartitionedCall^lstm/StatefulPartitionedCall?^text_vectorization/string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : : : : : 2@
conv1d/StatefulPartitionedCallconv1d/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall2?
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
??
?
D__inference_lstm_cell_layer_call_and_return_conditional_losses_14247

inputs

states
states_10
split_readvariableop_resource:	 ?.
split_1_readvariableop_resource:	?+
readvariableop_resource:
??
identity

identity_1

identity_2??ReadVariableOp?ReadVariableOp_1?ReadVariableOp_2?ReadVariableOp_3?split/ReadVariableOp?split_1/ReadVariableOpX
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
ones_like/Const?
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
	ones_likec
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Const
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2
dropout/Mul`
dropout/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2
dropout/Mul_1g
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout_1/Const?
dropout_1/MulMulones_like:output:0dropout_1/Const:output:0*
T0*'
_output_shapes
:????????? 2
dropout_1/Muld
dropout_1/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_1/Shape?
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2?ޣ2(
&dropout_1/random_uniform/RandomUniformy
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout_1/GreaterEqual/y?
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2
dropout_1/GreaterEqual?
dropout_1/CastCastdropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
dropout_1/Cast?
dropout_1/Mul_1Muldropout_1/Mul:z:0dropout_1/Cast:y:0*
T0*'
_output_shapes
:????????? 2
dropout_1/Mul_1g
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout_2/Const?
dropout_2/MulMulones_like:output:0dropout_2/Const:output:0*
T0*'
_output_shapes
:????????? 2
dropout_2/Muld
dropout_2/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_2/Shape?
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2?ګ2(
&dropout_2/random_uniform/RandomUniformy
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout_2/GreaterEqual/y?
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2
dropout_2/GreaterEqual?
dropout_2/CastCastdropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
dropout_2/Cast?
dropout_2/Mul_1Muldropout_2/Mul:z:0dropout_2/Cast:y:0*
T0*'
_output_shapes
:????????? 2
dropout_2/Mul_1g
dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout_3/Const?
dropout_3/MulMulones_like:output:0dropout_3/Const:output:0*
T0*'
_output_shapes
:????????? 2
dropout_3/Muld
dropout_3/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_3/Shape?
&dropout_3/random_uniform/RandomUniformRandomUniformdropout_3/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2??G2(
&dropout_3/random_uniform/RandomUniformy
dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout_3/GreaterEqual/y?
dropout_3/GreaterEqualGreaterEqual/dropout_3/random_uniform/RandomUniform:output:0!dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2
dropout_3/GreaterEqual?
dropout_3/CastCastdropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
dropout_3/Cast?
dropout_3/Mul_1Muldropout_3/Mul:z:0dropout_3/Cast:y:0*
T0*'
_output_shapes
:????????? 2
dropout_3/Mul_1\
ones_like_1/ShapeShapestates*
T0*
_output_shapes
:2
ones_like_1/Shapek
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
ones_like_1/Const?
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*(
_output_shapes
:??????????2
ones_like_1g
dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout_4/Const?
dropout_4/MulMulones_like_1:output:0dropout_4/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout_4/Mulf
dropout_4/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_4/Shape?
&dropout_4/random_uniform/RandomUniformRandomUniformdropout_4/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???2(
&dropout_4/random_uniform/RandomUniformy
dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout_4/GreaterEqual/y?
dropout_4/GreaterEqualGreaterEqual/dropout_4/random_uniform/RandomUniform:output:0!dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout_4/GreaterEqual?
dropout_4/CastCastdropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout_4/Cast?
dropout_4/Mul_1Muldropout_4/Mul:z:0dropout_4/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout_4/Mul_1g
dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout_5/Const?
dropout_5/MulMulones_like_1:output:0dropout_5/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout_5/Mulf
dropout_5/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_5/Shape?
&dropout_5/random_uniform/RandomUniformRandomUniformdropout_5/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???2(
&dropout_5/random_uniform/RandomUniformy
dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout_5/GreaterEqual/y?
dropout_5/GreaterEqualGreaterEqual/dropout_5/random_uniform/RandomUniform:output:0!dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout_5/GreaterEqual?
dropout_5/CastCastdropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout_5/Cast?
dropout_5/Mul_1Muldropout_5/Mul:z:0dropout_5/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout_5/Mul_1g
dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout_6/Const?
dropout_6/MulMulones_like_1:output:0dropout_6/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout_6/Mulf
dropout_6/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_6/Shape?
&dropout_6/random_uniform/RandomUniformRandomUniformdropout_6/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2?Ȏ2(
&dropout_6/random_uniform/RandomUniformy
dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout_6/GreaterEqual/y?
dropout_6/GreaterEqualGreaterEqual/dropout_6/random_uniform/RandomUniform:output:0!dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout_6/GreaterEqual?
dropout_6/CastCastdropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout_6/Cast?
dropout_6/Mul_1Muldropout_6/Mul:z:0dropout_6/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout_6/Mul_1g
dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout_7/Const?
dropout_7/MulMulones_like_1:output:0dropout_7/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout_7/Mulf
dropout_7/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_7/Shape?
&dropout_7/random_uniform/RandomUniformRandomUniformdropout_7/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???2(
&dropout_7/random_uniform/RandomUniformy
dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout_7/GreaterEqual/y?
dropout_7/GreaterEqualGreaterEqual/dropout_7/random_uniform/RandomUniform:output:0!dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout_7/GreaterEqual?
dropout_7/CastCastdropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout_7/Cast?
dropout_7/Mul_1Muldropout_7/Mul:z:0dropout_7/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout_7/Mul_1^
mulMulinputsdropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
muld
mul_1Mulinputsdropout_1/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
mul_1d
mul_2Mulinputsdropout_2/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
mul_2d
mul_3Mulinputsdropout_3/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
mul_3d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
split/ReadVariableOp?
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	 ?:	 ?:	 ?:	 ?*
	num_split2
splitf
MatMulMatMulmul:z:0split:output:0*
T0*(
_output_shapes
:??????????2
MatMull
MatMul_1MatMul	mul_1:z:0split:output:1*
T0*(
_output_shapes
:??????????2

MatMul_1l
MatMul_2MatMul	mul_2:z:0split:output:2*
T0*(
_output_shapes
:??????????2

MatMul_2l
MatMul_3MatMul	mul_3:z:0split:output:3*
T0*(
_output_shapes
:??????????2

MatMul_3h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_1/split_dim?
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:?*
dtype02
split_1/ReadVariableOp?
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:?:?:?:?*
	num_split2	
split_1t
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*(
_output_shapes
:??????????2	
BiasAddz
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*(
_output_shapes
:??????????2
	BiasAdd_1z
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*(
_output_shapes
:??????????2
	BiasAdd_2z
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*(
_output_shapes
:??????????2
	BiasAdd_3e
mul_4Mulstatesdropout_4/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
mul_4e
mul_5Mulstatesdropout_5/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
mul_5e
mul_6Mulstatesdropout_6/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
mul_6e
mul_7Mulstatesdropout_7/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
mul_7z
ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
??*
dtype02
ReadVariableOp{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2?
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
strided_slicet
MatMul_4MatMul	mul_4:z:0strided_slice:output:0*
T0*(
_output_shapes
:??????????2

MatMul_4l
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*(
_output_shapes
:??????????2
addY
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:??????????2	
Sigmoid~
ReadVariableOp_1ReadVariableOpreadvariableop_resource* 
_output_shapes
:
??*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2
strided_slice_1/stack?
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_1/stack_1?
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2?
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
strided_slice_1v
MatMul_5MatMul	mul_5:z:0strided_slice_1:output:0*
T0*(
_output_shapes
:??????????2

MatMul_5r
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*(
_output_shapes
:??????????2
add_1_
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:??????????2
	Sigmoid_1a
mul_8MulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:??????????2
mul_8~
ReadVariableOp_2ReadVariableOpreadvariableop_resource* 
_output_shapes
:
??*
dtype02
ReadVariableOp_2
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_2/stack?
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?  2
strided_slice_2/stack_1?
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2?
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
strided_slice_2v
MatMul_6MatMul	mul_6:z:0strided_slice_2:output:0*
T0*(
_output_shapes
:??????????2

MatMul_6r
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*(
_output_shapes
:??????????2
add_2R
TanhTanh	add_2:z:0*
T0*(
_output_shapes
:??????????2
Tanh_
mul_9MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:??????????2
mul_9`
add_3AddV2	mul_8:z:0	mul_9:z:0*
T0*(
_output_shapes
:??????????2
add_3~
ReadVariableOp_3ReadVariableOpreadvariableop_resource* 
_output_shapes
:
??*
dtype02
ReadVariableOp_3
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?  2
strided_slice_3/stack?
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stack_1?
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack_2?
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
strided_slice_3v
MatMul_7MatMul	mul_7:z:0strided_slice_3:output:0*
T0*(
_output_shapes
:??????????2

MatMul_7r
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*(
_output_shapes
:??????????2
add_4_
	Sigmoid_2Sigmoid	add_4:z:0*
T0*(
_output_shapes
:??????????2
	Sigmoid_2V
Tanh_1Tanh	add_3:z:0*
T0*(
_output_shapes
:??????????2
Tanh_1e
mul_10MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:??????????2
mul_10f
IdentityIdentity
mul_10:z:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityj

Identity_1Identity
mul_10:z:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity_1i

Identity_2Identity	add_3:z:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity_2?
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:????????? :??????????:??????????: : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs:PL
(
_output_shapes
:??????????
 
_user_specified_namestates:PL
(
_output_shapes
:??????????
 
_user_specified_namestates
?
.
__inference__initializer_18404
identityP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
ConstQ
IdentityIdentityConst:output:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
?
__inference_<lambda>_184448
4key_value_init13373_lookuptableimportv2_table_handle0
,key_value_init13373_lookuptableimportv2_keys2
.key_value_init13373_lookuptableimportv2_values	
identity??'key_value_init13373/LookupTableImportV2?
'key_value_init13373/LookupTableImportV2LookupTableImportV24key_value_init13373_lookuptableimportv2_table_handle,key_value_init13373_lookuptableimportv2_keys.key_value_init13373_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 2)
'key_value_init13373/LookupTableImportV2S
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
ConstX
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: 2

Identityx
NoOpNoOp(^key_value_init13373/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
: :?:?2R
'key_value_init13373/LookupTableImportV2'key_value_init13373/LookupTableImportV2:!

_output_shapes	
:?:!

_output_shapes	
:?
?
?
__inference_save_fn_18428
checkpoint_keyP
Lmutablehashtable_lookup_table_export_values_lookuptableexportv2_table_handle
identity

identity_1

identity_2

identity_3

identity_4

identity_5	???MutableHashTable_lookup_table_export_values/LookupTableExportV2?
?MutableHashTable_lookup_table_export_values/LookupTableExportV2LookupTableExportV2Lmutablehashtable_lookup_table_export_values_lookuptableexportv2_table_handle",/job:localhost/replica:0/task:0/device:CPU:0*
Tkeys0*
Tvalues0	*
_output_shapes

::2A
?MutableHashTable_lookup_table_export_values/LookupTableExportV2T
add/yConst*
_output_shapes
: *
dtype0*
valueB B-keys2
add/yR
addAddcheckpoint_keyadd/y:output:0*
T0*
_output_shapes
: 2
addZ
add_1/yConst*
_output_shapes
: *
dtype0*
valueB B-values2	
add_1/yX
add_1Addcheckpoint_keyadd_1/y:output:0*
T0*
_output_shapes
: 2
add_1Q
IdentityIdentityadd:z:0^NoOp*
T0*
_output_shapes
: 2

IdentityO
ConstConst*
_output_shapes
: *
dtype0*
valueB B 2
Const\

Identity_1IdentityConst:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1?

Identity_2IdentityFMutableHashTable_lookup_table_export_values/LookupTableExportV2:keys:0^NoOp*
T0*
_output_shapes
:2

Identity_2W

Identity_3Identity	add_1:z:0^NoOp*
T0*
_output_shapes
: 2

Identity_3S
Const_1Const*
_output_shapes
: *
dtype0*
valueB B 2	
Const_1^

Identity_4IdentityConst_1:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_4?

Identity_5IdentityHMutableHashTable_lookup_table_export_values/LookupTableExportV2:values:0^NoOp*
T0	*
_output_shapes
:2

Identity_5?
NoOpNoOp@^MutableHashTable_lookup_table_export_values/LookupTableExportV2*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : 2?
?MutableHashTable_lookup_table_export_values/LookupTableExportV2?MutableHashTable_lookup_table_export_values/LookupTableExportV2:F B

_output_shapes
: 
(
_user_specified_namecheckpoint_key
ل
?	
while_body_16951
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0B
/while_lstm_cell_split_readvariableop_resource_0:	 ?@
1while_lstm_cell_split_1_readvariableop_resource_0:	?=
)while_lstm_cell_readvariableop_resource_0:
??
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor@
-while_lstm_cell_split_readvariableop_resource:	 ?>
/while_lstm_cell_split_1_readvariableop_resource:	?;
'while_lstm_cell_readvariableop_resource:
????while/lstm_cell/ReadVariableOp? while/lstm_cell/ReadVariableOp_1? while/lstm_cell/ReadVariableOp_2? while/lstm_cell/ReadVariableOp_3?$while/lstm_cell/split/ReadVariableOp?&while/lstm_cell/split_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:????????? *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
while/lstm_cell/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2!
while/lstm_cell/ones_like/Shape?
while/lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/lstm_cell/ones_like/Const?
while/lstm_cell/ones_likeFill(while/lstm_cell/ones_like/Shape:output:0(while/lstm_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell/ones_like?
!while/lstm_cell/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2#
!while/lstm_cell/ones_like_1/Shape?
!while/lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!while/lstm_cell/ones_like_1/Const?
while/lstm_cell/ones_like_1Fill*while/lstm_cell/ones_like_1/Shape:output:0*while/lstm_cell/ones_like_1/Const:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/ones_like_1?
while/lstm_cell/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell/mul?
while/lstm_cell/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell/mul_1?
while/lstm_cell/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell/mul_2?
while/lstm_cell/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell/mul_3?
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2!
while/lstm_cell/split/split_dim?
$while/lstm_cell/split/ReadVariableOpReadVariableOp/while_lstm_cell_split_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02&
$while/lstm_cell/split/ReadVariableOp?
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0,while/lstm_cell/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	 ?:	 ?:	 ?:	 ?*
	num_split2
while/lstm_cell/split?
while/lstm_cell/MatMulMatMulwhile/lstm_cell/mul:z:0while/lstm_cell/split:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/MatMul?
while/lstm_cell/MatMul_1MatMulwhile/lstm_cell/mul_1:z:0while/lstm_cell/split:output:1*
T0*(
_output_shapes
:??????????2
while/lstm_cell/MatMul_1?
while/lstm_cell/MatMul_2MatMulwhile/lstm_cell/mul_2:z:0while/lstm_cell/split:output:2*
T0*(
_output_shapes
:??????????2
while/lstm_cell/MatMul_2?
while/lstm_cell/MatMul_3MatMulwhile/lstm_cell/mul_3:z:0while/lstm_cell/split:output:3*
T0*(
_output_shapes
:??????????2
while/lstm_cell/MatMul_3?
!while/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2#
!while/lstm_cell/split_1/split_dim?
&while/lstm_cell/split_1/ReadVariableOpReadVariableOp1while_lstm_cell_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype02(
&while/lstm_cell/split_1/ReadVariableOp?
while/lstm_cell/split_1Split*while/lstm_cell/split_1/split_dim:output:0.while/lstm_cell/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:?:?:?:?*
	num_split2
while/lstm_cell/split_1?
while/lstm_cell/BiasAddBiasAdd while/lstm_cell/MatMul:product:0 while/lstm_cell/split_1:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/BiasAdd?
while/lstm_cell/BiasAdd_1BiasAdd"while/lstm_cell/MatMul_1:product:0 while/lstm_cell/split_1:output:1*
T0*(
_output_shapes
:??????????2
while/lstm_cell/BiasAdd_1?
while/lstm_cell/BiasAdd_2BiasAdd"while/lstm_cell/MatMul_2:product:0 while/lstm_cell/split_1:output:2*
T0*(
_output_shapes
:??????????2
while/lstm_cell/BiasAdd_2?
while/lstm_cell/BiasAdd_3BiasAdd"while/lstm_cell/MatMul_3:product:0 while/lstm_cell/split_1:output:3*
T0*(
_output_shapes
:??????????2
while/lstm_cell/BiasAdd_3?
while/lstm_cell/mul_4Mulwhile_placeholder_2$while/lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul_4?
while/lstm_cell/mul_5Mulwhile_placeholder_2$while/lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul_5?
while/lstm_cell/mul_6Mulwhile_placeholder_2$while/lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul_6?
while/lstm_cell/mul_7Mulwhile_placeholder_2$while/lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul_7?
while/lstm_cell/ReadVariableOpReadVariableOp)while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02 
while/lstm_cell/ReadVariableOp?
#while/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2%
#while/lstm_cell/strided_slice/stack?
%while/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2'
%while/lstm_cell/strided_slice/stack_1?
%while/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2'
%while/lstm_cell/strided_slice/stack_2?
while/lstm_cell/strided_sliceStridedSlice&while/lstm_cell/ReadVariableOp:value:0,while/lstm_cell/strided_slice/stack:output:0.while/lstm_cell/strided_slice/stack_1:output:0.while/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
while/lstm_cell/strided_slice?
while/lstm_cell/MatMul_4MatMulwhile/lstm_cell/mul_4:z:0&while/lstm_cell/strided_slice:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/MatMul_4?
while/lstm_cell/addAddV2 while/lstm_cell/BiasAdd:output:0"while/lstm_cell/MatMul_4:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/add?
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/add:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/Sigmoid?
 while/lstm_cell/ReadVariableOp_1ReadVariableOp)while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02"
 while/lstm_cell/ReadVariableOp_1?
%while/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2'
%while/lstm_cell/strided_slice_1/stack?
'while/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2)
'while/lstm_cell/strided_slice_1/stack_1?
'while/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell/strided_slice_1/stack_2?
while/lstm_cell/strided_slice_1StridedSlice(while/lstm_cell/ReadVariableOp_1:value:0.while/lstm_cell/strided_slice_1/stack:output:00while/lstm_cell/strided_slice_1/stack_1:output:00while/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2!
while/lstm_cell/strided_slice_1?
while/lstm_cell/MatMul_5MatMulwhile/lstm_cell/mul_5:z:0(while/lstm_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/MatMul_5?
while/lstm_cell/add_1AddV2"while/lstm_cell/BiasAdd_1:output:0"while/lstm_cell/MatMul_5:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/add_1?
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/Sigmoid_1?
while/lstm_cell/mul_8Mulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul_8?
 while/lstm_cell/ReadVariableOp_2ReadVariableOp)while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02"
 while/lstm_cell/ReadVariableOp_2?
%while/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2'
%while/lstm_cell/strided_slice_2/stack?
'while/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?  2)
'while/lstm_cell/strided_slice_2/stack_1?
'while/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell/strided_slice_2/stack_2?
while/lstm_cell/strided_slice_2StridedSlice(while/lstm_cell/ReadVariableOp_2:value:0.while/lstm_cell/strided_slice_2/stack:output:00while/lstm_cell/strided_slice_2/stack_1:output:00while/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2!
while/lstm_cell/strided_slice_2?
while/lstm_cell/MatMul_6MatMulwhile/lstm_cell/mul_6:z:0(while/lstm_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/MatMul_6?
while/lstm_cell/add_2AddV2"while/lstm_cell/BiasAdd_2:output:0"while/lstm_cell/MatMul_6:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/add_2?
while/lstm_cell/TanhTanhwhile/lstm_cell/add_2:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/Tanh?
while/lstm_cell/mul_9Mulwhile/lstm_cell/Sigmoid:y:0while/lstm_cell/Tanh:y:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul_9?
while/lstm_cell/add_3AddV2while/lstm_cell/mul_8:z:0while/lstm_cell/mul_9:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/add_3?
 while/lstm_cell/ReadVariableOp_3ReadVariableOp)while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02"
 while/lstm_cell/ReadVariableOp_3?
%while/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?  2'
%while/lstm_cell/strided_slice_3/stack?
'while/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2)
'while/lstm_cell/strided_slice_3/stack_1?
'while/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell/strided_slice_3/stack_2?
while/lstm_cell/strided_slice_3StridedSlice(while/lstm_cell/ReadVariableOp_3:value:0.while/lstm_cell/strided_slice_3/stack:output:00while/lstm_cell/strided_slice_3/stack_1:output:00while/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2!
while/lstm_cell/strided_slice_3?
while/lstm_cell/MatMul_7MatMulwhile/lstm_cell/mul_7:z:0(while/lstm_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/MatMul_7?
while/lstm_cell/add_4AddV2"while/lstm_cell/BiasAdd_3:output:0"while/lstm_cell/MatMul_7:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/add_4?
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/add_4:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/Sigmoid_2?
while/lstm_cell/Tanh_1Tanhwhile/lstm_cell/add_3:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/Tanh_1?
while/lstm_cell/mul_10Mulwhile/lstm_cell/Sigmoid_2:y:0while/lstm_cell/Tanh_1:y:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul_10?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_10:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell/mul_10:z:0^while/NoOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell/add_3:z:0^while/NoOp*
T0*(
_output_shapes
:??????????2
while/Identity_5?

while/NoOpNoOp^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"T
'while_lstm_cell_readvariableop_resource)while_lstm_cell_readvariableop_resource_0"d
/while_lstm_cell_split_1_readvariableop_resource1while_lstm_cell_split_1_readvariableop_resource_0"`
-while_lstm_cell_split_readvariableop_resource/while_lstm_cell_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2@
while/lstm_cell/ReadVariableOpwhile/lstm_cell/ReadVariableOp2D
 while/lstm_cell/ReadVariableOp_1 while/lstm_cell/ReadVariableOp_12D
 while/lstm_cell/ReadVariableOp_2 while/lstm_cell/ReadVariableOp_22D
 while/lstm_cell/ReadVariableOp_3 while/lstm_cell/ReadVariableOp_32L
$while/lstm_cell/split/ReadVariableOp$while/lstm_cell/split/ReadVariableOp2P
&while/lstm_cell/split_1/ReadVariableOp&while/lstm_cell/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
 model_LSTM_lstm_while_cond_13692<
8model_lstm_lstm_while_model_lstm_lstm_while_loop_counterB
>model_lstm_lstm_while_model_lstm_lstm_while_maximum_iterations%
!model_lstm_lstm_while_placeholder'
#model_lstm_lstm_while_placeholder_1'
#model_lstm_lstm_while_placeholder_2'
#model_lstm_lstm_while_placeholder_3>
:model_lstm_lstm_while_less_model_lstm_lstm_strided_slice_1S
Omodel_lstm_lstm_while_model_lstm_lstm_while_cond_13692___redundant_placeholder0S
Omodel_lstm_lstm_while_model_lstm_lstm_while_cond_13692___redundant_placeholder1S
Omodel_lstm_lstm_while_model_lstm_lstm_while_cond_13692___redundant_placeholder2S
Omodel_lstm_lstm_while_model_lstm_lstm_while_cond_13692___redundant_placeholder3"
model_lstm_lstm_while_identity
?
model_LSTM/lstm/while/LessLess!model_lstm_lstm_while_placeholder:model_lstm_lstm_while_less_model_lstm_lstm_strided_slice_1*
T0*
_output_shapes
: 2
model_LSTM/lstm/while/Less?
model_LSTM/lstm/while/IdentityIdentitymodel_LSTM/lstm/while/Less:z:0*
T0
*
_output_shapes
: 2 
model_LSTM/lstm/while/Identity"I
model_lstm_lstm_while_identity'model_LSTM/lstm/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?L
?
D__inference_lstm_cell_layer_call_and_return_conditional_losses_13987

inputs

states
states_10
split_readvariableop_resource:	 ?.
split_1_readvariableop_resource:	?+
readvariableop_resource:
??
identity

identity_1

identity_2??ReadVariableOp?ReadVariableOp_1?ReadVariableOp_2?ReadVariableOp_3?split/ReadVariableOp?split_1/ReadVariableOpX
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
ones_like/Const?
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
	ones_like\
ones_like_1/ShapeShapestates*
T0*
_output_shapes
:2
ones_like_1/Shapek
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
ones_like_1/Const?
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*(
_output_shapes
:??????????2
ones_like_1_
mulMulinputsones_like:output:0*
T0*'
_output_shapes
:????????? 2
mulc
mul_1Mulinputsones_like:output:0*
T0*'
_output_shapes
:????????? 2
mul_1c
mul_2Mulinputsones_like:output:0*
T0*'
_output_shapes
:????????? 2
mul_2c
mul_3Mulinputsones_like:output:0*
T0*'
_output_shapes
:????????? 2
mul_3d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
split/ReadVariableOp?
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	 ?:	 ?:	 ?:	 ?*
	num_split2
splitf
MatMulMatMulmul:z:0split:output:0*
T0*(
_output_shapes
:??????????2
MatMull
MatMul_1MatMul	mul_1:z:0split:output:1*
T0*(
_output_shapes
:??????????2

MatMul_1l
MatMul_2MatMul	mul_2:z:0split:output:2*
T0*(
_output_shapes
:??????????2

MatMul_2l
MatMul_3MatMul	mul_3:z:0split:output:3*
T0*(
_output_shapes
:??????????2

MatMul_3h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_1/split_dim?
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:?*
dtype02
split_1/ReadVariableOp?
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:?:?:?:?*
	num_split2	
split_1t
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*(
_output_shapes
:??????????2	
BiasAddz
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*(
_output_shapes
:??????????2
	BiasAdd_1z
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*(
_output_shapes
:??????????2
	BiasAdd_2z
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*(
_output_shapes
:??????????2
	BiasAdd_3f
mul_4Mulstatesones_like_1:output:0*
T0*(
_output_shapes
:??????????2
mul_4f
mul_5Mulstatesones_like_1:output:0*
T0*(
_output_shapes
:??????????2
mul_5f
mul_6Mulstatesones_like_1:output:0*
T0*(
_output_shapes
:??????????2
mul_6f
mul_7Mulstatesones_like_1:output:0*
T0*(
_output_shapes
:??????????2
mul_7z
ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
??*
dtype02
ReadVariableOp{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2?
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
strided_slicet
MatMul_4MatMul	mul_4:z:0strided_slice:output:0*
T0*(
_output_shapes
:??????????2

MatMul_4l
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*(
_output_shapes
:??????????2
addY
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:??????????2	
Sigmoid~
ReadVariableOp_1ReadVariableOpreadvariableop_resource* 
_output_shapes
:
??*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2
strided_slice_1/stack?
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_1/stack_1?
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2?
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
strided_slice_1v
MatMul_5MatMul	mul_5:z:0strided_slice_1:output:0*
T0*(
_output_shapes
:??????????2

MatMul_5r
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*(
_output_shapes
:??????????2
add_1_
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:??????????2
	Sigmoid_1a
mul_8MulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:??????????2
mul_8~
ReadVariableOp_2ReadVariableOpreadvariableop_resource* 
_output_shapes
:
??*
dtype02
ReadVariableOp_2
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_2/stack?
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?  2
strided_slice_2/stack_1?
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2?
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
strided_slice_2v
MatMul_6MatMul	mul_6:z:0strided_slice_2:output:0*
T0*(
_output_shapes
:??????????2

MatMul_6r
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*(
_output_shapes
:??????????2
add_2R
TanhTanh	add_2:z:0*
T0*(
_output_shapes
:??????????2
Tanh_
mul_9MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:??????????2
mul_9`
add_3AddV2	mul_8:z:0	mul_9:z:0*
T0*(
_output_shapes
:??????????2
add_3~
ReadVariableOp_3ReadVariableOpreadvariableop_resource* 
_output_shapes
:
??*
dtype02
ReadVariableOp_3
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?  2
strided_slice_3/stack?
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stack_1?
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack_2?
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
strided_slice_3v
MatMul_7MatMul	mul_7:z:0strided_slice_3:output:0*
T0*(
_output_shapes
:??????????2

MatMul_7r
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*(
_output_shapes
:??????????2
add_4_
	Sigmoid_2Sigmoid	add_4:z:0*
T0*(
_output_shapes
:??????????2
	Sigmoid_2V
Tanh_1Tanh	add_3:z:0*
T0*(
_output_shapes
:??????????2
Tanh_1e
mul_10MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:??????????2
mul_10f
IdentityIdentity
mul_10:z:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityj

Identity_1Identity
mul_10:z:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity_1i

Identity_2Identity	add_3:z:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity_2?
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:????????? :??????????:??????????: : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs:PL
(
_output_shapes
:??????????
 
_user_specified_namestates:PL
(
_output_shapes
:??????????
 
_user_specified_namestates
܆
?
E__inference_model_LSTM_layer_call_and_return_conditional_losses_15031

inputsO
Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handleP
Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value	,
(text_vectorization_string_lookup_equal_y/
+text_vectorization_string_lookup_selectv2_t	#
embedding_14721:
??#
conv1d_14741:? 
conv1d_14743: 

lstm_15006:	 ?

lstm_15008:	?

lstm_15010:
?? 
dense_2_15025:	?
dense_2_15027:
identity??conv1d/StatefulPartitionedCall?dense_2/StatefulPartitionedCall?!embedding/StatefulPartitionedCall?lstm/StatefulPartitionedCall?>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2?
text_vectorization/StringLowerStringLowerinputs*'
_output_shapes
:?????????2 
text_vectorization/StringLower?
%text_vectorization/StaticRegexReplaceStaticRegexReplace'text_vectorization/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite 2'
%text_vectorization/StaticRegexReplace?
text_vectorization/SqueezeSqueeze.text_vectorization/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????2
text_vectorization/Squeeze?
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B 2&
$text_vectorization/StringSplit/Const?
,text_vectorization/StringSplit/StringSplitV2StringSplitV2#text_vectorization/Squeeze:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:2.
,text_vectorization/StringSplit/StringSplitV2?
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        24
2text_vectorization/StringSplit/strided_slice/stack?
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       26
4text_vectorization/StringSplit/strided_slice/stack_1?
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      26
4text_vectorization/StringSplit/strided_slice/stack_2?
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2.
,text_vectorization/StringSplit/strided_slice?
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 26
4text_vectorization/StringSplit/strided_slice_1/stack?
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6text_vectorization/StringSplit/strided_slice_1/stack_1?
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6text_vectorization/StringSplit/strided_slice_1/stack_2?
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask20
.text_vectorization/StringSplit/strided_slice_1?
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:?????????2W
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2Y
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:2a
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2a
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: 2`
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod?
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : 2e
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: 2`
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: 2_
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :2a
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: 2_
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: 2_
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2?
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:?????????2d
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : 2^
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:?????????2Y
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum?
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R 2b
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2^
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:?????????2Y
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat?
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????2@
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2?
&text_vectorization/string_lookup/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0(text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:?????????2(
&text_vectorization/string_lookup/Equal?
)text_vectorization/string_lookup/SelectV2SelectV2*text_vectorization/string_lookup/Equal:z:0+text_vectorization_string_lookup_selectv2_tGtext_vectorization/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:?????????2+
)text_vectorization/string_lookup/SelectV2?
)text_vectorization/string_lookup/IdentityIdentity2text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:?????????2+
)text_vectorization/string_lookup/Identity?
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 21
/text_vectorization/RaggedToTensor/default_value?
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"????????!       2)
'text_vectorization/RaggedToTensor/Const?
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:02text_vectorization/string_lookup/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:0`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:?????????!*
num_row_partition_tensors*%
row_partition_types

ROW_SPLITS28
6text_vectorization/RaggedToTensor/RaggedTensorToTensor?
!embedding/StatefulPartitionedCallStatefulPartitionedCall?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0embedding_14721*
Tin
2	*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????!?*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_147202#
!embedding/StatefulPartitionedCall?
conv1d/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0conv1d_14741conv1d_14743*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????! *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_conv1d_layer_call_and_return_conditional_losses_147402 
conv1d/StatefulPartitionedCall?
max_pooling1d/PartitionedCallPartitionedCall'conv1d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_max_pooling1d_layer_call_and_return_conditional_losses_147532
max_pooling1d/PartitionedCall?
lstm/StatefulPartitionedCallStatefulPartitionedCall&max_pooling1d/PartitionedCall:output:0
lstm_15006
lstm_15008
lstm_15010*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_150052
lstm/StatefulPartitionedCall?
dense_2/StatefulPartitionedCallStatefulPartitionedCall%lstm/StatefulPartitionedCall:output:0dense_2_15025dense_2_15027*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_150242!
dense_2/StatefulPartitionedCall?
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp^conv1d/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall"^embedding/StatefulPartitionedCall^lstm/StatefulPartitionedCall?^text_vectorization/string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : : : : : 2@
conv1d/StatefulPartitionedCallconv1d/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall2?
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?	
?
lstm_while_cond_16469&
"lstm_while_lstm_while_loop_counter,
(lstm_while_lstm_while_maximum_iterations
lstm_while_placeholder
lstm_while_placeholder_1
lstm_while_placeholder_2
lstm_while_placeholder_3(
$lstm_while_less_lstm_strided_slice_1=
9lstm_while_lstm_while_cond_16469___redundant_placeholder0=
9lstm_while_lstm_while_cond_16469___redundant_placeholder1=
9lstm_while_lstm_while_cond_16469___redundant_placeholder2=
9lstm_while_lstm_while_cond_16469___redundant_placeholder3
lstm_while_identity
?
lstm/while/LessLesslstm_while_placeholder$lstm_while_less_lstm_strided_slice_1*
T0*
_output_shapes
: 2
lstm/while/Lessl
lstm/while/IdentityIdentitylstm/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm/while/Identity"3
lstm_while_identitylstm/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
Ƽ
?

E__inference_model_LSTM_layer_call_and_return_conditional_losses_16220

inputsO
Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handleP
Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value	,
(text_vectorization_string_lookup_equal_y/
+text_vectorization_string_lookup_selectv2_t	4
 embedding_embedding_lookup_15944:
??I
2conv1d_conv1d_expanddims_1_readvariableop_resource:? 4
&conv1d_biasadd_readvariableop_resource: ?
,lstm_lstm_cell_split_readvariableop_resource:	 ?=
.lstm_lstm_cell_split_1_readvariableop_resource:	?:
&lstm_lstm_cell_readvariableop_resource:
??9
&dense_2_matmul_readvariableop_resource:	?5
'dense_2_biasadd_readvariableop_resource:
identity??conv1d/BiasAdd/ReadVariableOp?)conv1d/conv1d/ExpandDims_1/ReadVariableOp?dense_2/BiasAdd/ReadVariableOp?dense_2/MatMul/ReadVariableOp?embedding/embedding_lookup?lstm/lstm_cell/ReadVariableOp?lstm/lstm_cell/ReadVariableOp_1?lstm/lstm_cell/ReadVariableOp_2?lstm/lstm_cell/ReadVariableOp_3?#lstm/lstm_cell/split/ReadVariableOp?%lstm/lstm_cell/split_1/ReadVariableOp?
lstm/while?>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2?
text_vectorization/StringLowerStringLowerinputs*'
_output_shapes
:?????????2 
text_vectorization/StringLower?
%text_vectorization/StaticRegexReplaceStaticRegexReplace'text_vectorization/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite 2'
%text_vectorization/StaticRegexReplace?
text_vectorization/SqueezeSqueeze.text_vectorization/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????2
text_vectorization/Squeeze?
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B 2&
$text_vectorization/StringSplit/Const?
,text_vectorization/StringSplit/StringSplitV2StringSplitV2#text_vectorization/Squeeze:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:2.
,text_vectorization/StringSplit/StringSplitV2?
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        24
2text_vectorization/StringSplit/strided_slice/stack?
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       26
4text_vectorization/StringSplit/strided_slice/stack_1?
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      26
4text_vectorization/StringSplit/strided_slice/stack_2?
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2.
,text_vectorization/StringSplit/strided_slice?
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 26
4text_vectorization/StringSplit/strided_slice_1/stack?
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6text_vectorization/StringSplit/strided_slice_1/stack_1?
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6text_vectorization/StringSplit/strided_slice_1/stack_2?
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask20
.text_vectorization/StringSplit/strided_slice_1?
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:?????????2W
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2Y
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:2a
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2a
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: 2`
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod?
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : 2e
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: 2`
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: 2_
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :2a
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: 2_
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: 2_
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2?
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:?????????2d
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : 2^
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:?????????2Y
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum?
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R 2b
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2^
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:?????????2Y
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat?
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????2@
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2?
&text_vectorization/string_lookup/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0(text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:?????????2(
&text_vectorization/string_lookup/Equal?
)text_vectorization/string_lookup/SelectV2SelectV2*text_vectorization/string_lookup/Equal:z:0+text_vectorization_string_lookup_selectv2_tGtext_vectorization/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:?????????2+
)text_vectorization/string_lookup/SelectV2?
)text_vectorization/string_lookup/IdentityIdentity2text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:?????????2+
)text_vectorization/string_lookup/Identity?
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 21
/text_vectorization/RaggedToTensor/default_value?
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"????????!       2)
'text_vectorization/RaggedToTensor/Const?
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:02text_vectorization/string_lookup/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:0`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:?????????!*
num_row_partition_tensors*%
row_partition_types

ROW_SPLITS28
6text_vectorization/RaggedToTensor/RaggedTensorToTensor?
embedding/embedding_lookupResourceGather embedding_embedding_lookup_15944?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0",/job:localhost/replica:0/task:0/device:GPU:0*
Tindices0	*3
_class)
'%loc:@embedding/embedding_lookup/15944*,
_output_shapes
:?????????!?*
dtype02
embedding/embedding_lookup?
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*3
_class)
'%loc:@embedding/embedding_lookup/15944*,
_output_shapes
:?????????!?2%
#embedding/embedding_lookup/Identity?
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:?????????!?2'
%embedding/embedding_lookup/Identity_1?
conv1d/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
conv1d/conv1d/ExpandDims/dim?
conv1d/conv1d/ExpandDims
ExpandDims.embedding/embedding_lookup/Identity_1:output:0%conv1d/conv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:?????????!?2
conv1d/conv1d/ExpandDims?
)conv1d/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp2conv1d_conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:? *
dtype02+
)conv1d/conv1d/ExpandDims_1/ReadVariableOp?
conv1d/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
conv1d/conv1d/ExpandDims_1/dim?
conv1d/conv1d/ExpandDims_1
ExpandDims1conv1d/conv1d/ExpandDims_1/ReadVariableOp:value:0'conv1d/conv1d/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:? 2
conv1d/conv1d/ExpandDims_1?
conv1d/conv1dConv2D!conv1d/conv1d/ExpandDims:output:0#conv1d/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:?????????! *
paddingSAME*
strides
2
conv1d/conv1d?
conv1d/conv1d/SqueezeSqueezeconv1d/conv1d:output:0*
T0*+
_output_shapes
:?????????! *
squeeze_dims

?????????2
conv1d/conv1d/Squeeze?
conv1d/BiasAdd/ReadVariableOpReadVariableOp&conv1d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
conv1d/BiasAdd/ReadVariableOp?
conv1d/BiasAddBiasAddconv1d/conv1d/Squeeze:output:0%conv1d/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????! 2
conv1d/BiasAddq
conv1d/ReluReluconv1d/BiasAdd:output:0*
T0*+
_output_shapes
:?????????! 2
conv1d/Relu~
max_pooling1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
max_pooling1d/ExpandDims/dim?
max_pooling1d/ExpandDims
ExpandDimsconv1d/Relu:activations:0%max_pooling1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????! 2
max_pooling1d/ExpandDims?
max_pooling1d/MaxPoolMaxPool!max_pooling1d/ExpandDims:output:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2
max_pooling1d/MaxPool?
max_pooling1d/SqueezeSqueezemax_pooling1d/MaxPool:output:0*
T0*+
_output_shapes
:????????? *
squeeze_dims
2
max_pooling1d/Squeezef

lstm/ShapeShapemax_pooling1d/Squeeze:output:0*
T0*
_output_shapes
:2

lstm/Shape~
lstm/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm/strided_slice/stack?
lstm/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm/strided_slice/stack_1?
lstm/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm/strided_slice/stack_2?
lstm/strided_sliceStridedSlicelstm/Shape:output:0!lstm/strided_slice/stack:output:0#lstm/strided_slice/stack_1:output:0#lstm/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm/strided_sliceg
lstm/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm/zeros/mul/y?
lstm/zeros/mulMullstm/strided_slice:output:0lstm/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm/zeros/muli
lstm/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm/zeros/Less/y{
lstm/zeros/LessLesslstm/zeros/mul:z:0lstm/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm/zeros/Lessm
lstm/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
lstm/zeros/packed/1?
lstm/zeros/packedPacklstm/strided_slice:output:0lstm/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm/zeros/packedi
lstm/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm/zeros/Const?

lstm/zerosFilllstm/zeros/packed:output:0lstm/zeros/Const:output:0*
T0*(
_output_shapes
:??????????2

lstm/zerosk
lstm/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm/zeros_1/mul/y?
lstm/zeros_1/mulMullstm/strided_slice:output:0lstm/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm/zeros_1/mulm
lstm/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm/zeros_1/Less/y?
lstm/zeros_1/LessLesslstm/zeros_1/mul:z:0lstm/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm/zeros_1/Lessq
lstm/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
lstm/zeros_1/packed/1?
lstm/zeros_1/packedPacklstm/strided_slice:output:0lstm/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm/zeros_1/packedm
lstm/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm/zeros_1/Const?
lstm/zeros_1Filllstm/zeros_1/packed:output:0lstm/zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm/zeros_1
lstm/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm/transpose/perm?
lstm/transpose	Transposemax_pooling1d/Squeeze:output:0lstm/transpose/perm:output:0*
T0*+
_output_shapes
:????????? 2
lstm/transpose^
lstm/Shape_1Shapelstm/transpose:y:0*
T0*
_output_shapes
:2
lstm/Shape_1?
lstm/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm/strided_slice_1/stack?
lstm/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm/strided_slice_1/stack_1?
lstm/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm/strided_slice_1/stack_2?
lstm/strided_slice_1StridedSlicelstm/Shape_1:output:0#lstm/strided_slice_1/stack:output:0%lstm/strided_slice_1/stack_1:output:0%lstm/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm/strided_slice_1?
 lstm/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 lstm/TensorArrayV2/element_shape?
lstm/TensorArrayV2TensorListReserve)lstm/TensorArrayV2/element_shape:output:0lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm/TensorArrayV2?
:lstm/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2<
:lstm/TensorArrayUnstack/TensorListFromTensor/element_shape?
,lstm/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm/transpose:y:0Clstm/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02.
,lstm/TensorArrayUnstack/TensorListFromTensor?
lstm/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm/strided_slice_2/stack?
lstm/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm/strided_slice_2/stack_1?
lstm/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm/strided_slice_2/stack_2?
lstm/strided_slice_2StridedSlicelstm/transpose:y:0#lstm/strided_slice_2/stack:output:0%lstm/strided_slice_2/stack_1:output:0%lstm/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
lstm/strided_slice_2?
lstm/lstm_cell/ones_like/ShapeShapelstm/strided_slice_2:output:0*
T0*
_output_shapes
:2 
lstm/lstm_cell/ones_like/Shape?
lstm/lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2 
lstm/lstm_cell/ones_like/Const?
lstm/lstm_cell/ones_likeFill'lstm/lstm_cell/ones_like/Shape:output:0'lstm/lstm_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm/lstm_cell/ones_like?
 lstm/lstm_cell/ones_like_1/ShapeShapelstm/zeros:output:0*
T0*
_output_shapes
:2"
 lstm/lstm_cell/ones_like_1/Shape?
 lstm/lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2"
 lstm/lstm_cell/ones_like_1/Const?
lstm/lstm_cell/ones_like_1Fill)lstm/lstm_cell/ones_like_1/Shape:output:0)lstm/lstm_cell/ones_like_1/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell/ones_like_1?
lstm/lstm_cell/mulMullstm/strided_slice_2:output:0!lstm/lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm/lstm_cell/mul?
lstm/lstm_cell/mul_1Mullstm/strided_slice_2:output:0!lstm/lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm/lstm_cell/mul_1?
lstm/lstm_cell/mul_2Mullstm/strided_slice_2:output:0!lstm/lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm/lstm_cell/mul_2?
lstm/lstm_cell/mul_3Mullstm/strided_slice_2:output:0!lstm/lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm/lstm_cell/mul_3?
lstm/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2 
lstm/lstm_cell/split/split_dim?
#lstm/lstm_cell/split/ReadVariableOpReadVariableOp,lstm_lstm_cell_split_readvariableop_resource*
_output_shapes
:	 ?*
dtype02%
#lstm/lstm_cell/split/ReadVariableOp?
lstm/lstm_cell/splitSplit'lstm/lstm_cell/split/split_dim:output:0+lstm/lstm_cell/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	 ?:	 ?:	 ?:	 ?*
	num_split2
lstm/lstm_cell/split?
lstm/lstm_cell/MatMulMatMullstm/lstm_cell/mul:z:0lstm/lstm_cell/split:output:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell/MatMul?
lstm/lstm_cell/MatMul_1MatMullstm/lstm_cell/mul_1:z:0lstm/lstm_cell/split:output:1*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell/MatMul_1?
lstm/lstm_cell/MatMul_2MatMullstm/lstm_cell/mul_2:z:0lstm/lstm_cell/split:output:2*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell/MatMul_2?
lstm/lstm_cell/MatMul_3MatMullstm/lstm_cell/mul_3:z:0lstm/lstm_cell/split:output:3*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell/MatMul_3?
 lstm/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2"
 lstm/lstm_cell/split_1/split_dim?
%lstm/lstm_cell/split_1/ReadVariableOpReadVariableOp.lstm_lstm_cell_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02'
%lstm/lstm_cell/split_1/ReadVariableOp?
lstm/lstm_cell/split_1Split)lstm/lstm_cell/split_1/split_dim:output:0-lstm/lstm_cell/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:?:?:?:?*
	num_split2
lstm/lstm_cell/split_1?
lstm/lstm_cell/BiasAddBiasAddlstm/lstm_cell/MatMul:product:0lstm/lstm_cell/split_1:output:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell/BiasAdd?
lstm/lstm_cell/BiasAdd_1BiasAdd!lstm/lstm_cell/MatMul_1:product:0lstm/lstm_cell/split_1:output:1*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell/BiasAdd_1?
lstm/lstm_cell/BiasAdd_2BiasAdd!lstm/lstm_cell/MatMul_2:product:0lstm/lstm_cell/split_1:output:2*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell/BiasAdd_2?
lstm/lstm_cell/BiasAdd_3BiasAdd!lstm/lstm_cell/MatMul_3:product:0lstm/lstm_cell/split_1:output:3*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell/BiasAdd_3?
lstm/lstm_cell/mul_4Mullstm/zeros:output:0#lstm/lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell/mul_4?
lstm/lstm_cell/mul_5Mullstm/zeros:output:0#lstm/lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell/mul_5?
lstm/lstm_cell/mul_6Mullstm/zeros:output:0#lstm/lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell/mul_6?
lstm/lstm_cell/mul_7Mullstm/zeros:output:0#lstm/lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell/mul_7?
lstm/lstm_cell/ReadVariableOpReadVariableOp&lstm_lstm_cell_readvariableop_resource* 
_output_shapes
:
??*
dtype02
lstm/lstm_cell/ReadVariableOp?
"lstm/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm/lstm_cell/strided_slice/stack?
$lstm/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2&
$lstm/lstm_cell/strided_slice/stack_1?
$lstm/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm/lstm_cell/strided_slice/stack_2?
lstm/lstm_cell/strided_sliceStridedSlice%lstm/lstm_cell/ReadVariableOp:value:0+lstm/lstm_cell/strided_slice/stack:output:0-lstm/lstm_cell/strided_slice/stack_1:output:0-lstm/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
lstm/lstm_cell/strided_slice?
lstm/lstm_cell/MatMul_4MatMullstm/lstm_cell/mul_4:z:0%lstm/lstm_cell/strided_slice:output:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell/MatMul_4?
lstm/lstm_cell/addAddV2lstm/lstm_cell/BiasAdd:output:0!lstm/lstm_cell/MatMul_4:product:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell/add?
lstm/lstm_cell/SigmoidSigmoidlstm/lstm_cell/add:z:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell/Sigmoid?
lstm/lstm_cell/ReadVariableOp_1ReadVariableOp&lstm_lstm_cell_readvariableop_resource* 
_output_shapes
:
??*
dtype02!
lstm/lstm_cell/ReadVariableOp_1?
$lstm/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2&
$lstm/lstm_cell/strided_slice_1/stack?
&lstm/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2(
&lstm/lstm_cell/strided_slice_1/stack_1?
&lstm/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&lstm/lstm_cell/strided_slice_1/stack_2?
lstm/lstm_cell/strided_slice_1StridedSlice'lstm/lstm_cell/ReadVariableOp_1:value:0-lstm/lstm_cell/strided_slice_1/stack:output:0/lstm/lstm_cell/strided_slice_1/stack_1:output:0/lstm/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2 
lstm/lstm_cell/strided_slice_1?
lstm/lstm_cell/MatMul_5MatMullstm/lstm_cell/mul_5:z:0'lstm/lstm_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell/MatMul_5?
lstm/lstm_cell/add_1AddV2!lstm/lstm_cell/BiasAdd_1:output:0!lstm/lstm_cell/MatMul_5:product:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell/add_1?
lstm/lstm_cell/Sigmoid_1Sigmoidlstm/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell/Sigmoid_1?
lstm/lstm_cell/mul_8Mullstm/lstm_cell/Sigmoid_1:y:0lstm/zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell/mul_8?
lstm/lstm_cell/ReadVariableOp_2ReadVariableOp&lstm_lstm_cell_readvariableop_resource* 
_output_shapes
:
??*
dtype02!
lstm/lstm_cell/ReadVariableOp_2?
$lstm/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2&
$lstm/lstm_cell/strided_slice_2/stack?
&lstm/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?  2(
&lstm/lstm_cell/strided_slice_2/stack_1?
&lstm/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&lstm/lstm_cell/strided_slice_2/stack_2?
lstm/lstm_cell/strided_slice_2StridedSlice'lstm/lstm_cell/ReadVariableOp_2:value:0-lstm/lstm_cell/strided_slice_2/stack:output:0/lstm/lstm_cell/strided_slice_2/stack_1:output:0/lstm/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2 
lstm/lstm_cell/strided_slice_2?
lstm/lstm_cell/MatMul_6MatMullstm/lstm_cell/mul_6:z:0'lstm/lstm_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell/MatMul_6?
lstm/lstm_cell/add_2AddV2!lstm/lstm_cell/BiasAdd_2:output:0!lstm/lstm_cell/MatMul_6:product:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell/add_2
lstm/lstm_cell/TanhTanhlstm/lstm_cell/add_2:z:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell/Tanh?
lstm/lstm_cell/mul_9Mullstm/lstm_cell/Sigmoid:y:0lstm/lstm_cell/Tanh:y:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell/mul_9?
lstm/lstm_cell/add_3AddV2lstm/lstm_cell/mul_8:z:0lstm/lstm_cell/mul_9:z:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell/add_3?
lstm/lstm_cell/ReadVariableOp_3ReadVariableOp&lstm_lstm_cell_readvariableop_resource* 
_output_shapes
:
??*
dtype02!
lstm/lstm_cell/ReadVariableOp_3?
$lstm/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?  2&
$lstm/lstm_cell/strided_slice_3/stack?
&lstm/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2(
&lstm/lstm_cell/strided_slice_3/stack_1?
&lstm/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&lstm/lstm_cell/strided_slice_3/stack_2?
lstm/lstm_cell/strided_slice_3StridedSlice'lstm/lstm_cell/ReadVariableOp_3:value:0-lstm/lstm_cell/strided_slice_3/stack:output:0/lstm/lstm_cell/strided_slice_3/stack_1:output:0/lstm/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2 
lstm/lstm_cell/strided_slice_3?
lstm/lstm_cell/MatMul_7MatMullstm/lstm_cell/mul_7:z:0'lstm/lstm_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell/MatMul_7?
lstm/lstm_cell/add_4AddV2!lstm/lstm_cell/BiasAdd_3:output:0!lstm/lstm_cell/MatMul_7:product:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell/add_4?
lstm/lstm_cell/Sigmoid_2Sigmoidlstm/lstm_cell/add_4:z:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell/Sigmoid_2?
lstm/lstm_cell/Tanh_1Tanhlstm/lstm_cell/add_3:z:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell/Tanh_1?
lstm/lstm_cell/mul_10Mullstm/lstm_cell/Sigmoid_2:y:0lstm/lstm_cell/Tanh_1:y:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell/mul_10?
"lstm/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2$
"lstm/TensorArrayV2_1/element_shape?
lstm/TensorArrayV2_1TensorListReserve+lstm/TensorArrayV2_1/element_shape:output:0lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm/TensorArrayV2_1X
	lstm/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
	lstm/time?
lstm/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
lstm/while/maximum_iterationst
lstm/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm/while/loop_counter?

lstm/whileWhile lstm/while/loop_counter:output:0&lstm/while/maximum_iterations:output:0lstm/time:output:0lstm/TensorArrayV2_1:handle:0lstm/zeros:output:0lstm/zeros_1:output:0lstm/strided_slice_1:output:0<lstm/TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_lstm_cell_split_readvariableop_resource.lstm_lstm_cell_split_1_readvariableop_resource&lstm_lstm_cell_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *!
bodyR
lstm_while_body_16079*!
condR
lstm_while_cond_16078*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2

lstm/while?
5lstm/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   27
5lstm/TensorArrayV2Stack/TensorListStack/element_shape?
'lstm/TensorArrayV2Stack/TensorListStackTensorListStacklstm/while:output:3>lstm/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02)
'lstm/TensorArrayV2Stack/TensorListStack?
lstm/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
lstm/strided_slice_3/stack?
lstm/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
lstm/strided_slice_3/stack_1?
lstm/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm/strided_slice_3/stack_2?
lstm/strided_slice_3StridedSlice0lstm/TensorArrayV2Stack/TensorListStack:tensor:0#lstm/strided_slice_3/stack:output:0%lstm/strided_slice_3/stack_1:output:0%lstm/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
lstm/strided_slice_3?
lstm/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm/transpose_1/perm?
lstm/transpose_1	Transpose0lstm/TensorArrayV2Stack/TensorListStack:tensor:0lstm/transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
lstm/transpose_1p
lstm/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm/runtime?
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
dense_2/MatMul/ReadVariableOp?
dense_2/MatMulMatMullstm/strided_slice_3:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_2/MatMul?
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_2/BiasAdd/ReadVariableOp?
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_2/BiasAddy
dense_2/SoftmaxSoftmaxdense_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_2/Softmaxt
IdentityIdentitydense_2/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp^conv1d/BiasAdd/ReadVariableOp*^conv1d/conv1d/ExpandDims_1/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^embedding/embedding_lookup^lstm/lstm_cell/ReadVariableOp ^lstm/lstm_cell/ReadVariableOp_1 ^lstm/lstm_cell/ReadVariableOp_2 ^lstm/lstm_cell/ReadVariableOp_3$^lstm/lstm_cell/split/ReadVariableOp&^lstm/lstm_cell/split_1/ReadVariableOp^lstm/while?^text_vectorization/string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : : : : : 2>
conv1d/BiasAdd/ReadVariableOpconv1d/BiasAdd/ReadVariableOp2V
)conv1d/conv1d/ExpandDims_1/ReadVariableOp)conv1d/conv1d/ExpandDims_1/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp28
embedding/embedding_lookupembedding/embedding_lookup2>
lstm/lstm_cell/ReadVariableOplstm/lstm_cell/ReadVariableOp2B
lstm/lstm_cell/ReadVariableOp_1lstm/lstm_cell/ReadVariableOp_12B
lstm/lstm_cell/ReadVariableOp_2lstm/lstm_cell/ReadVariableOp_22B
lstm/lstm_cell/ReadVariableOp_3lstm/lstm_cell/ReadVariableOp_32J
#lstm/lstm_cell/split/ReadVariableOp#lstm/lstm_cell/split/ReadVariableOp2N
%lstm/lstm_cell/split_1/ReadVariableOp%lstm/lstm_cell/split_1/ReadVariableOp2

lstm/while
lstm/while2?
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
??
?
?__inference_lstm_layer_call_and_return_conditional_losses_17715

inputs:
'lstm_cell_split_readvariableop_resource:	 ?8
)lstm_cell_split_1_readvariableop_resource:	?5
!lstm_cell_readvariableop_resource:
??
identity??lstm_cell/ReadVariableOp?lstm_cell/ReadVariableOp_1?lstm_cell/ReadVariableOp_2?lstm_cell/ReadVariableOp_3?lstm_cell/split/ReadVariableOp? lstm_cell/split_1/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:????????? 2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_2~
lstm_cell/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
lstm_cell/ones_like/Shape{
lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell/ones_like/Const?
lstm_cell/ones_likeFill"lstm_cell/ones_like/Shape:output:0"lstm_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell/ones_likex
lstm_cell/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell/ones_like_1/Shape
lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell/ones_like_1/Const?
lstm_cell/ones_like_1Fill$lstm_cell/ones_like_1/Shape:output:0$lstm_cell/ones_like_1/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/ones_like_1?
lstm_cell/mulMulstrided_slice_2:output:0lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell/mul?
lstm_cell/mul_1Mulstrided_slice_2:output:0lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell/mul_1?
lstm_cell/mul_2Mulstrided_slice_2:output:0lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell/mul_2?
lstm_cell/mul_3Mulstrided_slice_2:output:0lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell/mul_3x
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell/split/split_dim?
lstm_cell/split/ReadVariableOpReadVariableOp'lstm_cell_split_readvariableop_resource*
_output_shapes
:	 ?*
dtype02 
lstm_cell/split/ReadVariableOp?
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0&lstm_cell/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	 ?:	 ?:	 ?:	 ?*
	num_split2
lstm_cell/split?
lstm_cell/MatMulMatMullstm_cell/mul:z:0lstm_cell/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/MatMul?
lstm_cell/MatMul_1MatMullstm_cell/mul_1:z:0lstm_cell/split:output:1*
T0*(
_output_shapes
:??????????2
lstm_cell/MatMul_1?
lstm_cell/MatMul_2MatMullstm_cell/mul_2:z:0lstm_cell/split:output:2*
T0*(
_output_shapes
:??????????2
lstm_cell/MatMul_2?
lstm_cell/MatMul_3MatMullstm_cell/mul_3:z:0lstm_cell/split:output:3*
T0*(
_output_shapes
:??????????2
lstm_cell/MatMul_3|
lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_cell/split_1/split_dim?
 lstm_cell/split_1/ReadVariableOpReadVariableOp)lstm_cell_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 lstm_cell/split_1/ReadVariableOp?
lstm_cell/split_1Split$lstm_cell/split_1/split_dim:output:0(lstm_cell/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:?:?:?:?*
	num_split2
lstm_cell/split_1?
lstm_cell/BiasAddBiasAddlstm_cell/MatMul:product:0lstm_cell/split_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/BiasAdd?
lstm_cell/BiasAdd_1BiasAddlstm_cell/MatMul_1:product:0lstm_cell/split_1:output:1*
T0*(
_output_shapes
:??????????2
lstm_cell/BiasAdd_1?
lstm_cell/BiasAdd_2BiasAddlstm_cell/MatMul_2:product:0lstm_cell/split_1:output:2*
T0*(
_output_shapes
:??????????2
lstm_cell/BiasAdd_2?
lstm_cell/BiasAdd_3BiasAddlstm_cell/MatMul_3:product:0lstm_cell/split_1:output:3*
T0*(
_output_shapes
:??????????2
lstm_cell/BiasAdd_3?
lstm_cell/mul_4Mulzeros:output:0lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul_4?
lstm_cell/mul_5Mulzeros:output:0lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul_5?
lstm_cell/mul_6Mulzeros:output:0lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul_6?
lstm_cell/mul_7Mulzeros:output:0lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul_7?
lstm_cell/ReadVariableOpReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
??*
dtype02
lstm_cell/ReadVariableOp?
lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
lstm_cell/strided_slice/stack?
lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2!
lstm_cell/strided_slice/stack_1?
lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2!
lstm_cell/strided_slice/stack_2?
lstm_cell/strided_sliceStridedSlice lstm_cell/ReadVariableOp:value:0&lstm_cell/strided_slice/stack:output:0(lstm_cell/strided_slice/stack_1:output:0(lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
lstm_cell/strided_slice?
lstm_cell/MatMul_4MatMullstm_cell/mul_4:z:0 lstm_cell/strided_slice:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/MatMul_4?
lstm_cell/addAddV2lstm_cell/BiasAdd:output:0lstm_cell/MatMul_4:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell/addw
lstm_cell/SigmoidSigmoidlstm_cell/add:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell/Sigmoid?
lstm_cell/ReadVariableOp_1ReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
??*
dtype02
lstm_cell/ReadVariableOp_1?
lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2!
lstm_cell/strided_slice_1/stack?
!lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2#
!lstm_cell/strided_slice_1/stack_1?
!lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell/strided_slice_1/stack_2?
lstm_cell/strided_slice_1StridedSlice"lstm_cell/ReadVariableOp_1:value:0(lstm_cell/strided_slice_1/stack:output:0*lstm_cell/strided_slice_1/stack_1:output:0*lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
lstm_cell/strided_slice_1?
lstm_cell/MatMul_5MatMullstm_cell/mul_5:z:0"lstm_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/MatMul_5?
lstm_cell/add_1AddV2lstm_cell/BiasAdd_1:output:0lstm_cell/MatMul_5:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell/add_1}
lstm_cell/Sigmoid_1Sigmoidlstm_cell/add_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell/Sigmoid_1?
lstm_cell/mul_8Mullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul_8?
lstm_cell/ReadVariableOp_2ReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
??*
dtype02
lstm_cell/ReadVariableOp_2?
lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2!
lstm_cell/strided_slice_2/stack?
!lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?  2#
!lstm_cell/strided_slice_2/stack_1?
!lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell/strided_slice_2/stack_2?
lstm_cell/strided_slice_2StridedSlice"lstm_cell/ReadVariableOp_2:value:0(lstm_cell/strided_slice_2/stack:output:0*lstm_cell/strided_slice_2/stack_1:output:0*lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
lstm_cell/strided_slice_2?
lstm_cell/MatMul_6MatMullstm_cell/mul_6:z:0"lstm_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/MatMul_6?
lstm_cell/add_2AddV2lstm_cell/BiasAdd_2:output:0lstm_cell/MatMul_6:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell/add_2p
lstm_cell/TanhTanhlstm_cell/add_2:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell/Tanh?
lstm_cell/mul_9Mullstm_cell/Sigmoid:y:0lstm_cell/Tanh:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul_9?
lstm_cell/add_3AddV2lstm_cell/mul_8:z:0lstm_cell/mul_9:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell/add_3?
lstm_cell/ReadVariableOp_3ReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
??*
dtype02
lstm_cell/ReadVariableOp_3?
lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?  2!
lstm_cell/strided_slice_3/stack?
!lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2#
!lstm_cell/strided_slice_3/stack_1?
!lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell/strided_slice_3/stack_2?
lstm_cell/strided_slice_3StridedSlice"lstm_cell/ReadVariableOp_3:value:0(lstm_cell/strided_slice_3/stack:output:0*lstm_cell/strided_slice_3/stack_1:output:0*lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
lstm_cell/strided_slice_3?
lstm_cell/MatMul_7MatMullstm_cell/mul_7:z:0"lstm_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/MatMul_7?
lstm_cell/add_4AddV2lstm_cell/BiasAdd_3:output:0lstm_cell/MatMul_7:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell/add_4}
lstm_cell/Sigmoid_2Sigmoidlstm_cell/add_4:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell/Sigmoid_2t
lstm_cell/Tanh_1Tanhlstm_cell/add_3:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell/Tanh_1?
lstm_cell/mul_10Mullstm_cell/Sigmoid_2:y:0lstm_cell/Tanh_1:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul_10?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0'lstm_cell_split_readvariableop_resource)lstm_cell_split_1_readvariableop_resource!lstm_cell_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_17581*
condR
while_cond_17580*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimet
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp^lstm_cell/ReadVariableOp^lstm_cell/ReadVariableOp_1^lstm_cell/ReadVariableOp_2^lstm_cell/ReadVariableOp_3^lstm_cell/split/ReadVariableOp!^lstm_cell/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:????????? : : : 24
lstm_cell/ReadVariableOplstm_cell/ReadVariableOp28
lstm_cell/ReadVariableOp_1lstm_cell/ReadVariableOp_128
lstm_cell/ReadVariableOp_2lstm_cell/ReadVariableOp_228
lstm_cell/ReadVariableOp_3lstm_cell/ReadVariableOp_32@
lstm_cell/split/ReadVariableOplstm_cell/split/ReadVariableOp2D
 lstm_cell/split_1/ReadVariableOp lstm_cell/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
$__inference_lstm_layer_call_fn_16812
inputs_0
unknown:	 ?
	unknown_0:	?
	unknown_1:
??
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_143942
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:?????????????????? : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :?????????????????? 
"
_user_specified_name
inputs/0
?	
?
lstm_while_cond_16078&
"lstm_while_lstm_while_loop_counter,
(lstm_while_lstm_while_maximum_iterations
lstm_while_placeholder
lstm_while_placeholder_1
lstm_while_placeholder_2
lstm_while_placeholder_3(
$lstm_while_less_lstm_strided_slice_1=
9lstm_while_lstm_while_cond_16078___redundant_placeholder0=
9lstm_while_lstm_while_cond_16078___redundant_placeholder1=
9lstm_while_lstm_while_cond_16078___redundant_placeholder2=
9lstm_while_lstm_while_cond_16078___redundant_placeholder3
lstm_while_identity
?
lstm/while/LessLesslstm_while_placeholder$lstm_while_less_lstm_strided_slice_1*
T0*
_output_shapes
: 2
lstm/while/Lessl
lstm/while/IdentityIdentitylstm/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm/while/Identity"3
lstm_while_identitylstm/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?%
?
while_body_14325
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*
while_lstm_cell_14349_0:	 ?&
while_lstm_cell_14351_0:	?+
while_lstm_cell_14353_0:
??
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor(
while_lstm_cell_14349:	 ?$
while_lstm_cell_14351:	?)
while_lstm_cell_14353:
????'while/lstm_cell/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:????????? *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
'while/lstm_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_14349_0while_lstm_cell_14351_0while_lstm_cell_14353_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_142472)
'while/lstm_cell/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder0while/lstm_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity0while/lstm_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identity0while/lstm_cell/StatefulPartitionedCall:output:2^while/NoOp*
T0*(
_output_shapes
:??????????2
while/Identity_5?

while/NoOpNoOp(^while/lstm_cell/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"0
while_lstm_cell_14349while_lstm_cell_14349_0"0
while_lstm_cell_14351while_lstm_cell_14351_0"0
while_lstm_cell_14353while_lstm_cell_14353_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2R
'while/lstm_cell/StatefulPartitionedCall'while/lstm_cell/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
A__inference_conv1d_layer_call_and_return_conditional_losses_14740

inputsB
+conv1d_expanddims_1_readvariableop_resource:? -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?"conv1d/ExpandDims_1/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
conv1d/ExpandDims/dim?
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:?????????!?2
conv1d/ExpandDims?
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:? *
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim?
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:? 2
conv1d/ExpandDims_1?
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:?????????! *
paddingSAME*
strides
2
conv1d?
conv1d/SqueezeSqueezeconv1d:output:0*
T0*+
_output_shapes
:?????????! *
squeeze_dims

?????????2
conv1d/Squeeze?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????! 2	
BiasAdd\
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:?????????! 2
Reluq
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:?????????! 2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????!?: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:T P
,
_output_shapes
:?????????!?
 
_user_specified_nameinputs
??
?	
while_body_17896
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0B
/while_lstm_cell_split_readvariableop_resource_0:	 ?@
1while_lstm_cell_split_1_readvariableop_resource_0:	?=
)while_lstm_cell_readvariableop_resource_0:
??
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor@
-while_lstm_cell_split_readvariableop_resource:	 ?>
/while_lstm_cell_split_1_readvariableop_resource:	?;
'while_lstm_cell_readvariableop_resource:
????while/lstm_cell/ReadVariableOp? while/lstm_cell/ReadVariableOp_1? while/lstm_cell/ReadVariableOp_2? while/lstm_cell/ReadVariableOp_3?$while/lstm_cell/split/ReadVariableOp?&while/lstm_cell/split_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:????????? *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
while/lstm_cell/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2!
while/lstm_cell/ones_like/Shape?
while/lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/lstm_cell/ones_like/Const?
while/lstm_cell/ones_likeFill(while/lstm_cell/ones_like/Shape:output:0(while/lstm_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell/ones_like?
while/lstm_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
while/lstm_cell/dropout/Const?
while/lstm_cell/dropout/MulMul"while/lstm_cell/ones_like:output:0&while/lstm_cell/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell/dropout/Mul?
while/lstm_cell/dropout/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
:2
while/lstm_cell/dropout/Shape?
4while/lstm_cell/dropout/random_uniform/RandomUniformRandomUniform&while/lstm_cell/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2?ݱ26
4while/lstm_cell/dropout/random_uniform/RandomUniform?
&while/lstm_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2(
&while/lstm_cell/dropout/GreaterEqual/y?
$while/lstm_cell/dropout/GreaterEqualGreaterEqual=while/lstm_cell/dropout/random_uniform/RandomUniform:output:0/while/lstm_cell/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2&
$while/lstm_cell/dropout/GreaterEqual?
while/lstm_cell/dropout/CastCast(while/lstm_cell/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
while/lstm_cell/dropout/Cast?
while/lstm_cell/dropout/Mul_1Mulwhile/lstm_cell/dropout/Mul:z:0 while/lstm_cell/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell/dropout/Mul_1?
while/lstm_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/lstm_cell/dropout_1/Const?
while/lstm_cell/dropout_1/MulMul"while/lstm_cell/ones_like:output:0(while/lstm_cell/dropout_1/Const:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell/dropout_1/Mul?
while/lstm_cell/dropout_1/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
:2!
while/lstm_cell/dropout_1/Shape?
6while/lstm_cell/dropout_1/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_1/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2݊?28
6while/lstm_cell/dropout_1/random_uniform/RandomUniform?
(while/lstm_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2*
(while/lstm_cell/dropout_1/GreaterEqual/y?
&while/lstm_cell/dropout_1/GreaterEqualGreaterEqual?while/lstm_cell/dropout_1/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2(
&while/lstm_cell/dropout_1/GreaterEqual?
while/lstm_cell/dropout_1/CastCast*while/lstm_cell/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2 
while/lstm_cell/dropout_1/Cast?
while/lstm_cell/dropout_1/Mul_1Mul!while/lstm_cell/dropout_1/Mul:z:0"while/lstm_cell/dropout_1/Cast:y:0*
T0*'
_output_shapes
:????????? 2!
while/lstm_cell/dropout_1/Mul_1?
while/lstm_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/lstm_cell/dropout_2/Const?
while/lstm_cell/dropout_2/MulMul"while/lstm_cell/ones_like:output:0(while/lstm_cell/dropout_2/Const:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell/dropout_2/Mul?
while/lstm_cell/dropout_2/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
:2!
while/lstm_cell/dropout_2/Shape?
6while/lstm_cell/dropout_2/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_2/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2??_28
6while/lstm_cell/dropout_2/random_uniform/RandomUniform?
(while/lstm_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2*
(while/lstm_cell/dropout_2/GreaterEqual/y?
&while/lstm_cell/dropout_2/GreaterEqualGreaterEqual?while/lstm_cell/dropout_2/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2(
&while/lstm_cell/dropout_2/GreaterEqual?
while/lstm_cell/dropout_2/CastCast*while/lstm_cell/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2 
while/lstm_cell/dropout_2/Cast?
while/lstm_cell/dropout_2/Mul_1Mul!while/lstm_cell/dropout_2/Mul:z:0"while/lstm_cell/dropout_2/Cast:y:0*
T0*'
_output_shapes
:????????? 2!
while/lstm_cell/dropout_2/Mul_1?
while/lstm_cell/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/lstm_cell/dropout_3/Const?
while/lstm_cell/dropout_3/MulMul"while/lstm_cell/ones_like:output:0(while/lstm_cell/dropout_3/Const:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell/dropout_3/Mul?
while/lstm_cell/dropout_3/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
:2!
while/lstm_cell/dropout_3/Shape?
6while/lstm_cell/dropout_3/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_3/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???28
6while/lstm_cell/dropout_3/random_uniform/RandomUniform?
(while/lstm_cell/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2*
(while/lstm_cell/dropout_3/GreaterEqual/y?
&while/lstm_cell/dropout_3/GreaterEqualGreaterEqual?while/lstm_cell/dropout_3/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2(
&while/lstm_cell/dropout_3/GreaterEqual?
while/lstm_cell/dropout_3/CastCast*while/lstm_cell/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2 
while/lstm_cell/dropout_3/Cast?
while/lstm_cell/dropout_3/Mul_1Mul!while/lstm_cell/dropout_3/Mul:z:0"while/lstm_cell/dropout_3/Cast:y:0*
T0*'
_output_shapes
:????????? 2!
while/lstm_cell/dropout_3/Mul_1?
!while/lstm_cell/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2#
!while/lstm_cell/ones_like_1/Shape?
!while/lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!while/lstm_cell/ones_like_1/Const?
while/lstm_cell/ones_like_1Fill*while/lstm_cell/ones_like_1/Shape:output:0*while/lstm_cell/ones_like_1/Const:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/ones_like_1?
while/lstm_cell/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/lstm_cell/dropout_4/Const?
while/lstm_cell/dropout_4/MulMul$while/lstm_cell/ones_like_1:output:0(while/lstm_cell/dropout_4/Const:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/dropout_4/Mul?
while/lstm_cell/dropout_4/ShapeShape$while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
:2!
while/lstm_cell/dropout_4/Shape?
6while/lstm_cell/dropout_4/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_4/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???28
6while/lstm_cell/dropout_4/random_uniform/RandomUniform?
(while/lstm_cell/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2*
(while/lstm_cell/dropout_4/GreaterEqual/y?
&while/lstm_cell/dropout_4/GreaterEqualGreaterEqual?while/lstm_cell/dropout_4/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2(
&while/lstm_cell/dropout_4/GreaterEqual?
while/lstm_cell/dropout_4/CastCast*while/lstm_cell/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2 
while/lstm_cell/dropout_4/Cast?
while/lstm_cell/dropout_4/Mul_1Mul!while/lstm_cell/dropout_4/Mul:z:0"while/lstm_cell/dropout_4/Cast:y:0*
T0*(
_output_shapes
:??????????2!
while/lstm_cell/dropout_4/Mul_1?
while/lstm_cell/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/lstm_cell/dropout_5/Const?
while/lstm_cell/dropout_5/MulMul$while/lstm_cell/ones_like_1:output:0(while/lstm_cell/dropout_5/Const:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/dropout_5/Mul?
while/lstm_cell/dropout_5/ShapeShape$while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
:2!
while/lstm_cell/dropout_5/Shape?
6while/lstm_cell/dropout_5/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_5/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2?й28
6while/lstm_cell/dropout_5/random_uniform/RandomUniform?
(while/lstm_cell/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2*
(while/lstm_cell/dropout_5/GreaterEqual/y?
&while/lstm_cell/dropout_5/GreaterEqualGreaterEqual?while/lstm_cell/dropout_5/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2(
&while/lstm_cell/dropout_5/GreaterEqual?
while/lstm_cell/dropout_5/CastCast*while/lstm_cell/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2 
while/lstm_cell/dropout_5/Cast?
while/lstm_cell/dropout_5/Mul_1Mul!while/lstm_cell/dropout_5/Mul:z:0"while/lstm_cell/dropout_5/Cast:y:0*
T0*(
_output_shapes
:??????????2!
while/lstm_cell/dropout_5/Mul_1?
while/lstm_cell/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/lstm_cell/dropout_6/Const?
while/lstm_cell/dropout_6/MulMul$while/lstm_cell/ones_like_1:output:0(while/lstm_cell/dropout_6/Const:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/dropout_6/Mul?
while/lstm_cell/dropout_6/ShapeShape$while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
:2!
while/lstm_cell/dropout_6/Shape?
6while/lstm_cell/dropout_6/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_6/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???28
6while/lstm_cell/dropout_6/random_uniform/RandomUniform?
(while/lstm_cell/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2*
(while/lstm_cell/dropout_6/GreaterEqual/y?
&while/lstm_cell/dropout_6/GreaterEqualGreaterEqual?while/lstm_cell/dropout_6/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2(
&while/lstm_cell/dropout_6/GreaterEqual?
while/lstm_cell/dropout_6/CastCast*while/lstm_cell/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2 
while/lstm_cell/dropout_6/Cast?
while/lstm_cell/dropout_6/Mul_1Mul!while/lstm_cell/dropout_6/Mul:z:0"while/lstm_cell/dropout_6/Cast:y:0*
T0*(
_output_shapes
:??????????2!
while/lstm_cell/dropout_6/Mul_1?
while/lstm_cell/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/lstm_cell/dropout_7/Const?
while/lstm_cell/dropout_7/MulMul$while/lstm_cell/ones_like_1:output:0(while/lstm_cell/dropout_7/Const:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/dropout_7/Mul?
while/lstm_cell/dropout_7/ShapeShape$while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
:2!
while/lstm_cell/dropout_7/Shape?
6while/lstm_cell/dropout_7/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_7/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???28
6while/lstm_cell/dropout_7/random_uniform/RandomUniform?
(while/lstm_cell/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2*
(while/lstm_cell/dropout_7/GreaterEqual/y?
&while/lstm_cell/dropout_7/GreaterEqualGreaterEqual?while/lstm_cell/dropout_7/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2(
&while/lstm_cell/dropout_7/GreaterEqual?
while/lstm_cell/dropout_7/CastCast*while/lstm_cell/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2 
while/lstm_cell/dropout_7/Cast?
while/lstm_cell/dropout_7/Mul_1Mul!while/lstm_cell/dropout_7/Mul:z:0"while/lstm_cell/dropout_7/Cast:y:0*
T0*(
_output_shapes
:??????????2!
while/lstm_cell/dropout_7/Mul_1?
while/lstm_cell/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell/dropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell/mul?
while/lstm_cell/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0#while/lstm_cell/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell/mul_1?
while/lstm_cell/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0#while/lstm_cell/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell/mul_2?
while/lstm_cell/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0#while/lstm_cell/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell/mul_3?
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2!
while/lstm_cell/split/split_dim?
$while/lstm_cell/split/ReadVariableOpReadVariableOp/while_lstm_cell_split_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02&
$while/lstm_cell/split/ReadVariableOp?
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0,while/lstm_cell/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	 ?:	 ?:	 ?:	 ?*
	num_split2
while/lstm_cell/split?
while/lstm_cell/MatMulMatMulwhile/lstm_cell/mul:z:0while/lstm_cell/split:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/MatMul?
while/lstm_cell/MatMul_1MatMulwhile/lstm_cell/mul_1:z:0while/lstm_cell/split:output:1*
T0*(
_output_shapes
:??????????2
while/lstm_cell/MatMul_1?
while/lstm_cell/MatMul_2MatMulwhile/lstm_cell/mul_2:z:0while/lstm_cell/split:output:2*
T0*(
_output_shapes
:??????????2
while/lstm_cell/MatMul_2?
while/lstm_cell/MatMul_3MatMulwhile/lstm_cell/mul_3:z:0while/lstm_cell/split:output:3*
T0*(
_output_shapes
:??????????2
while/lstm_cell/MatMul_3?
!while/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2#
!while/lstm_cell/split_1/split_dim?
&while/lstm_cell/split_1/ReadVariableOpReadVariableOp1while_lstm_cell_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype02(
&while/lstm_cell/split_1/ReadVariableOp?
while/lstm_cell/split_1Split*while/lstm_cell/split_1/split_dim:output:0.while/lstm_cell/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:?:?:?:?*
	num_split2
while/lstm_cell/split_1?
while/lstm_cell/BiasAddBiasAdd while/lstm_cell/MatMul:product:0 while/lstm_cell/split_1:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/BiasAdd?
while/lstm_cell/BiasAdd_1BiasAdd"while/lstm_cell/MatMul_1:product:0 while/lstm_cell/split_1:output:1*
T0*(
_output_shapes
:??????????2
while/lstm_cell/BiasAdd_1?
while/lstm_cell/BiasAdd_2BiasAdd"while/lstm_cell/MatMul_2:product:0 while/lstm_cell/split_1:output:2*
T0*(
_output_shapes
:??????????2
while/lstm_cell/BiasAdd_2?
while/lstm_cell/BiasAdd_3BiasAdd"while/lstm_cell/MatMul_3:product:0 while/lstm_cell/split_1:output:3*
T0*(
_output_shapes
:??????????2
while/lstm_cell/BiasAdd_3?
while/lstm_cell/mul_4Mulwhile_placeholder_2#while/lstm_cell/dropout_4/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul_4?
while/lstm_cell/mul_5Mulwhile_placeholder_2#while/lstm_cell/dropout_5/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul_5?
while/lstm_cell/mul_6Mulwhile_placeholder_2#while/lstm_cell/dropout_6/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul_6?
while/lstm_cell/mul_7Mulwhile_placeholder_2#while/lstm_cell/dropout_7/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul_7?
while/lstm_cell/ReadVariableOpReadVariableOp)while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02 
while/lstm_cell/ReadVariableOp?
#while/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2%
#while/lstm_cell/strided_slice/stack?
%while/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2'
%while/lstm_cell/strided_slice/stack_1?
%while/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2'
%while/lstm_cell/strided_slice/stack_2?
while/lstm_cell/strided_sliceStridedSlice&while/lstm_cell/ReadVariableOp:value:0,while/lstm_cell/strided_slice/stack:output:0.while/lstm_cell/strided_slice/stack_1:output:0.while/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
while/lstm_cell/strided_slice?
while/lstm_cell/MatMul_4MatMulwhile/lstm_cell/mul_4:z:0&while/lstm_cell/strided_slice:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/MatMul_4?
while/lstm_cell/addAddV2 while/lstm_cell/BiasAdd:output:0"while/lstm_cell/MatMul_4:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/add?
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/add:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/Sigmoid?
 while/lstm_cell/ReadVariableOp_1ReadVariableOp)while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02"
 while/lstm_cell/ReadVariableOp_1?
%while/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2'
%while/lstm_cell/strided_slice_1/stack?
'while/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2)
'while/lstm_cell/strided_slice_1/stack_1?
'while/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell/strided_slice_1/stack_2?
while/lstm_cell/strided_slice_1StridedSlice(while/lstm_cell/ReadVariableOp_1:value:0.while/lstm_cell/strided_slice_1/stack:output:00while/lstm_cell/strided_slice_1/stack_1:output:00while/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2!
while/lstm_cell/strided_slice_1?
while/lstm_cell/MatMul_5MatMulwhile/lstm_cell/mul_5:z:0(while/lstm_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/MatMul_5?
while/lstm_cell/add_1AddV2"while/lstm_cell/BiasAdd_1:output:0"while/lstm_cell/MatMul_5:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/add_1?
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/Sigmoid_1?
while/lstm_cell/mul_8Mulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul_8?
 while/lstm_cell/ReadVariableOp_2ReadVariableOp)while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02"
 while/lstm_cell/ReadVariableOp_2?
%while/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2'
%while/lstm_cell/strided_slice_2/stack?
'while/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?  2)
'while/lstm_cell/strided_slice_2/stack_1?
'while/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell/strided_slice_2/stack_2?
while/lstm_cell/strided_slice_2StridedSlice(while/lstm_cell/ReadVariableOp_2:value:0.while/lstm_cell/strided_slice_2/stack:output:00while/lstm_cell/strided_slice_2/stack_1:output:00while/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2!
while/lstm_cell/strided_slice_2?
while/lstm_cell/MatMul_6MatMulwhile/lstm_cell/mul_6:z:0(while/lstm_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/MatMul_6?
while/lstm_cell/add_2AddV2"while/lstm_cell/BiasAdd_2:output:0"while/lstm_cell/MatMul_6:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/add_2?
while/lstm_cell/TanhTanhwhile/lstm_cell/add_2:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/Tanh?
while/lstm_cell/mul_9Mulwhile/lstm_cell/Sigmoid:y:0while/lstm_cell/Tanh:y:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul_9?
while/lstm_cell/add_3AddV2while/lstm_cell/mul_8:z:0while/lstm_cell/mul_9:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/add_3?
 while/lstm_cell/ReadVariableOp_3ReadVariableOp)while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02"
 while/lstm_cell/ReadVariableOp_3?
%while/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?  2'
%while/lstm_cell/strided_slice_3/stack?
'while/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2)
'while/lstm_cell/strided_slice_3/stack_1?
'while/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell/strided_slice_3/stack_2?
while/lstm_cell/strided_slice_3StridedSlice(while/lstm_cell/ReadVariableOp_3:value:0.while/lstm_cell/strided_slice_3/stack:output:00while/lstm_cell/strided_slice_3/stack_1:output:00while/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2!
while/lstm_cell/strided_slice_3?
while/lstm_cell/MatMul_7MatMulwhile/lstm_cell/mul_7:z:0(while/lstm_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/MatMul_7?
while/lstm_cell/add_4AddV2"while/lstm_cell/BiasAdd_3:output:0"while/lstm_cell/MatMul_7:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/add_4?
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/add_4:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/Sigmoid_2?
while/lstm_cell/Tanh_1Tanhwhile/lstm_cell/add_3:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/Tanh_1?
while/lstm_cell/mul_10Mulwhile/lstm_cell/Sigmoid_2:y:0while/lstm_cell/Tanh_1:y:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul_10?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_10:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell/mul_10:z:0^while/NoOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell/add_3:z:0^while/NoOp*
T0*(
_output_shapes
:??????????2
while/Identity_5?

while/NoOpNoOp^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"T
'while_lstm_cell_readvariableop_resource)while_lstm_cell_readvariableop_resource_0"d
/while_lstm_cell_split_1_readvariableop_resource1while_lstm_cell_split_1_readvariableop_resource_0"`
-while_lstm_cell_split_readvariableop_resource/while_lstm_cell_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2@
while/lstm_cell/ReadVariableOpwhile/lstm_cell/ReadVariableOp2D
 while/lstm_cell/ReadVariableOp_1 while/lstm_cell/ReadVariableOp_12D
 while/lstm_cell/ReadVariableOp_2 while/lstm_cell/ReadVariableOp_22D
 while/lstm_cell/ReadVariableOp_3 while/lstm_cell/ReadVariableOp_32L
$while/lstm_cell/split/ReadVariableOp$while/lstm_cell/split/ReadVariableOp2P
&while/lstm_cell/split_1/ReadVariableOp&while/lstm_cell/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
:
__inference__creator_18381
identity??
hash_table{

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name13374*
value_dtype0	2

hash_tablec
IdentityIdentityhash_table:table_handle:0^NoOp*
T0*
_output_shapes
: 2

Identity[
NoOpNoOp^hash_table*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2

hash_table
hash_table
??
?	
while_body_15262
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0B
/while_lstm_cell_split_readvariableop_resource_0:	 ?@
1while_lstm_cell_split_1_readvariableop_resource_0:	?=
)while_lstm_cell_readvariableop_resource_0:
??
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor@
-while_lstm_cell_split_readvariableop_resource:	 ?>
/while_lstm_cell_split_1_readvariableop_resource:	?;
'while_lstm_cell_readvariableop_resource:
????while/lstm_cell/ReadVariableOp? while/lstm_cell/ReadVariableOp_1? while/lstm_cell/ReadVariableOp_2? while/lstm_cell/ReadVariableOp_3?$while/lstm_cell/split/ReadVariableOp?&while/lstm_cell/split_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:????????? *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
while/lstm_cell/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2!
while/lstm_cell/ones_like/Shape?
while/lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/lstm_cell/ones_like/Const?
while/lstm_cell/ones_likeFill(while/lstm_cell/ones_like/Shape:output:0(while/lstm_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell/ones_like?
while/lstm_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
while/lstm_cell/dropout/Const?
while/lstm_cell/dropout/MulMul"while/lstm_cell/ones_like:output:0&while/lstm_cell/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell/dropout/Mul?
while/lstm_cell/dropout/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
:2
while/lstm_cell/dropout/Shape?
4while/lstm_cell/dropout/random_uniform/RandomUniformRandomUniform&while/lstm_cell/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???26
4while/lstm_cell/dropout/random_uniform/RandomUniform?
&while/lstm_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2(
&while/lstm_cell/dropout/GreaterEqual/y?
$while/lstm_cell/dropout/GreaterEqualGreaterEqual=while/lstm_cell/dropout/random_uniform/RandomUniform:output:0/while/lstm_cell/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2&
$while/lstm_cell/dropout/GreaterEqual?
while/lstm_cell/dropout/CastCast(while/lstm_cell/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
while/lstm_cell/dropout/Cast?
while/lstm_cell/dropout/Mul_1Mulwhile/lstm_cell/dropout/Mul:z:0 while/lstm_cell/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell/dropout/Mul_1?
while/lstm_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/lstm_cell/dropout_1/Const?
while/lstm_cell/dropout_1/MulMul"while/lstm_cell/ones_like:output:0(while/lstm_cell/dropout_1/Const:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell/dropout_1/Mul?
while/lstm_cell/dropout_1/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
:2!
while/lstm_cell/dropout_1/Shape?
6while/lstm_cell/dropout_1/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_1/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2֓?28
6while/lstm_cell/dropout_1/random_uniform/RandomUniform?
(while/lstm_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2*
(while/lstm_cell/dropout_1/GreaterEqual/y?
&while/lstm_cell/dropout_1/GreaterEqualGreaterEqual?while/lstm_cell/dropout_1/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2(
&while/lstm_cell/dropout_1/GreaterEqual?
while/lstm_cell/dropout_1/CastCast*while/lstm_cell/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2 
while/lstm_cell/dropout_1/Cast?
while/lstm_cell/dropout_1/Mul_1Mul!while/lstm_cell/dropout_1/Mul:z:0"while/lstm_cell/dropout_1/Cast:y:0*
T0*'
_output_shapes
:????????? 2!
while/lstm_cell/dropout_1/Mul_1?
while/lstm_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/lstm_cell/dropout_2/Const?
while/lstm_cell/dropout_2/MulMul"while/lstm_cell/ones_like:output:0(while/lstm_cell/dropout_2/Const:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell/dropout_2/Mul?
while/lstm_cell/dropout_2/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
:2!
while/lstm_cell/dropout_2/Shape?
6while/lstm_cell/dropout_2/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_2/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???28
6while/lstm_cell/dropout_2/random_uniform/RandomUniform?
(while/lstm_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2*
(while/lstm_cell/dropout_2/GreaterEqual/y?
&while/lstm_cell/dropout_2/GreaterEqualGreaterEqual?while/lstm_cell/dropout_2/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2(
&while/lstm_cell/dropout_2/GreaterEqual?
while/lstm_cell/dropout_2/CastCast*while/lstm_cell/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2 
while/lstm_cell/dropout_2/Cast?
while/lstm_cell/dropout_2/Mul_1Mul!while/lstm_cell/dropout_2/Mul:z:0"while/lstm_cell/dropout_2/Cast:y:0*
T0*'
_output_shapes
:????????? 2!
while/lstm_cell/dropout_2/Mul_1?
while/lstm_cell/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/lstm_cell/dropout_3/Const?
while/lstm_cell/dropout_3/MulMul"while/lstm_cell/ones_like:output:0(while/lstm_cell/dropout_3/Const:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell/dropout_3/Mul?
while/lstm_cell/dropout_3/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
:2!
while/lstm_cell/dropout_3/Shape?
6while/lstm_cell/dropout_3/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_3/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???28
6while/lstm_cell/dropout_3/random_uniform/RandomUniform?
(while/lstm_cell/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2*
(while/lstm_cell/dropout_3/GreaterEqual/y?
&while/lstm_cell/dropout_3/GreaterEqualGreaterEqual?while/lstm_cell/dropout_3/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2(
&while/lstm_cell/dropout_3/GreaterEqual?
while/lstm_cell/dropout_3/CastCast*while/lstm_cell/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2 
while/lstm_cell/dropout_3/Cast?
while/lstm_cell/dropout_3/Mul_1Mul!while/lstm_cell/dropout_3/Mul:z:0"while/lstm_cell/dropout_3/Cast:y:0*
T0*'
_output_shapes
:????????? 2!
while/lstm_cell/dropout_3/Mul_1?
!while/lstm_cell/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2#
!while/lstm_cell/ones_like_1/Shape?
!while/lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!while/lstm_cell/ones_like_1/Const?
while/lstm_cell/ones_like_1Fill*while/lstm_cell/ones_like_1/Shape:output:0*while/lstm_cell/ones_like_1/Const:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/ones_like_1?
while/lstm_cell/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/lstm_cell/dropout_4/Const?
while/lstm_cell/dropout_4/MulMul$while/lstm_cell/ones_like_1:output:0(while/lstm_cell/dropout_4/Const:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/dropout_4/Mul?
while/lstm_cell/dropout_4/ShapeShape$while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
:2!
while/lstm_cell/dropout_4/Shape?
6while/lstm_cell/dropout_4/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_4/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???28
6while/lstm_cell/dropout_4/random_uniform/RandomUniform?
(while/lstm_cell/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2*
(while/lstm_cell/dropout_4/GreaterEqual/y?
&while/lstm_cell/dropout_4/GreaterEqualGreaterEqual?while/lstm_cell/dropout_4/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2(
&while/lstm_cell/dropout_4/GreaterEqual?
while/lstm_cell/dropout_4/CastCast*while/lstm_cell/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2 
while/lstm_cell/dropout_4/Cast?
while/lstm_cell/dropout_4/Mul_1Mul!while/lstm_cell/dropout_4/Mul:z:0"while/lstm_cell/dropout_4/Cast:y:0*
T0*(
_output_shapes
:??????????2!
while/lstm_cell/dropout_4/Mul_1?
while/lstm_cell/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/lstm_cell/dropout_5/Const?
while/lstm_cell/dropout_5/MulMul$while/lstm_cell/ones_like_1:output:0(while/lstm_cell/dropout_5/Const:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/dropout_5/Mul?
while/lstm_cell/dropout_5/ShapeShape$while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
:2!
while/lstm_cell/dropout_5/Shape?
6while/lstm_cell/dropout_5/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_5/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???28
6while/lstm_cell/dropout_5/random_uniform/RandomUniform?
(while/lstm_cell/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2*
(while/lstm_cell/dropout_5/GreaterEqual/y?
&while/lstm_cell/dropout_5/GreaterEqualGreaterEqual?while/lstm_cell/dropout_5/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2(
&while/lstm_cell/dropout_5/GreaterEqual?
while/lstm_cell/dropout_5/CastCast*while/lstm_cell/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2 
while/lstm_cell/dropout_5/Cast?
while/lstm_cell/dropout_5/Mul_1Mul!while/lstm_cell/dropout_5/Mul:z:0"while/lstm_cell/dropout_5/Cast:y:0*
T0*(
_output_shapes
:??????????2!
while/lstm_cell/dropout_5/Mul_1?
while/lstm_cell/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/lstm_cell/dropout_6/Const?
while/lstm_cell/dropout_6/MulMul$while/lstm_cell/ones_like_1:output:0(while/lstm_cell/dropout_6/Const:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/dropout_6/Mul?
while/lstm_cell/dropout_6/ShapeShape$while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
:2!
while/lstm_cell/dropout_6/Shape?
6while/lstm_cell/dropout_6/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_6/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2?ގ28
6while/lstm_cell/dropout_6/random_uniform/RandomUniform?
(while/lstm_cell/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2*
(while/lstm_cell/dropout_6/GreaterEqual/y?
&while/lstm_cell/dropout_6/GreaterEqualGreaterEqual?while/lstm_cell/dropout_6/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2(
&while/lstm_cell/dropout_6/GreaterEqual?
while/lstm_cell/dropout_6/CastCast*while/lstm_cell/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2 
while/lstm_cell/dropout_6/Cast?
while/lstm_cell/dropout_6/Mul_1Mul!while/lstm_cell/dropout_6/Mul:z:0"while/lstm_cell/dropout_6/Cast:y:0*
T0*(
_output_shapes
:??????????2!
while/lstm_cell/dropout_6/Mul_1?
while/lstm_cell/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/lstm_cell/dropout_7/Const?
while/lstm_cell/dropout_7/MulMul$while/lstm_cell/ones_like_1:output:0(while/lstm_cell/dropout_7/Const:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/dropout_7/Mul?
while/lstm_cell/dropout_7/ShapeShape$while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
:2!
while/lstm_cell/dropout_7/Shape?
6while/lstm_cell/dropout_7/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_7/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2ꇢ28
6while/lstm_cell/dropout_7/random_uniform/RandomUniform?
(while/lstm_cell/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2*
(while/lstm_cell/dropout_7/GreaterEqual/y?
&while/lstm_cell/dropout_7/GreaterEqualGreaterEqual?while/lstm_cell/dropout_7/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2(
&while/lstm_cell/dropout_7/GreaterEqual?
while/lstm_cell/dropout_7/CastCast*while/lstm_cell/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2 
while/lstm_cell/dropout_7/Cast?
while/lstm_cell/dropout_7/Mul_1Mul!while/lstm_cell/dropout_7/Mul:z:0"while/lstm_cell/dropout_7/Cast:y:0*
T0*(
_output_shapes
:??????????2!
while/lstm_cell/dropout_7/Mul_1?
while/lstm_cell/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell/dropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell/mul?
while/lstm_cell/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0#while/lstm_cell/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell/mul_1?
while/lstm_cell/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0#while/lstm_cell/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell/mul_2?
while/lstm_cell/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0#while/lstm_cell/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell/mul_3?
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2!
while/lstm_cell/split/split_dim?
$while/lstm_cell/split/ReadVariableOpReadVariableOp/while_lstm_cell_split_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02&
$while/lstm_cell/split/ReadVariableOp?
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0,while/lstm_cell/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	 ?:	 ?:	 ?:	 ?*
	num_split2
while/lstm_cell/split?
while/lstm_cell/MatMulMatMulwhile/lstm_cell/mul:z:0while/lstm_cell/split:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/MatMul?
while/lstm_cell/MatMul_1MatMulwhile/lstm_cell/mul_1:z:0while/lstm_cell/split:output:1*
T0*(
_output_shapes
:??????????2
while/lstm_cell/MatMul_1?
while/lstm_cell/MatMul_2MatMulwhile/lstm_cell/mul_2:z:0while/lstm_cell/split:output:2*
T0*(
_output_shapes
:??????????2
while/lstm_cell/MatMul_2?
while/lstm_cell/MatMul_3MatMulwhile/lstm_cell/mul_3:z:0while/lstm_cell/split:output:3*
T0*(
_output_shapes
:??????????2
while/lstm_cell/MatMul_3?
!while/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2#
!while/lstm_cell/split_1/split_dim?
&while/lstm_cell/split_1/ReadVariableOpReadVariableOp1while_lstm_cell_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype02(
&while/lstm_cell/split_1/ReadVariableOp?
while/lstm_cell/split_1Split*while/lstm_cell/split_1/split_dim:output:0.while/lstm_cell/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:?:?:?:?*
	num_split2
while/lstm_cell/split_1?
while/lstm_cell/BiasAddBiasAdd while/lstm_cell/MatMul:product:0 while/lstm_cell/split_1:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/BiasAdd?
while/lstm_cell/BiasAdd_1BiasAdd"while/lstm_cell/MatMul_1:product:0 while/lstm_cell/split_1:output:1*
T0*(
_output_shapes
:??????????2
while/lstm_cell/BiasAdd_1?
while/lstm_cell/BiasAdd_2BiasAdd"while/lstm_cell/MatMul_2:product:0 while/lstm_cell/split_1:output:2*
T0*(
_output_shapes
:??????????2
while/lstm_cell/BiasAdd_2?
while/lstm_cell/BiasAdd_3BiasAdd"while/lstm_cell/MatMul_3:product:0 while/lstm_cell/split_1:output:3*
T0*(
_output_shapes
:??????????2
while/lstm_cell/BiasAdd_3?
while/lstm_cell/mul_4Mulwhile_placeholder_2#while/lstm_cell/dropout_4/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul_4?
while/lstm_cell/mul_5Mulwhile_placeholder_2#while/lstm_cell/dropout_5/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul_5?
while/lstm_cell/mul_6Mulwhile_placeholder_2#while/lstm_cell/dropout_6/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul_6?
while/lstm_cell/mul_7Mulwhile_placeholder_2#while/lstm_cell/dropout_7/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul_7?
while/lstm_cell/ReadVariableOpReadVariableOp)while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02 
while/lstm_cell/ReadVariableOp?
#while/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2%
#while/lstm_cell/strided_slice/stack?
%while/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2'
%while/lstm_cell/strided_slice/stack_1?
%while/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2'
%while/lstm_cell/strided_slice/stack_2?
while/lstm_cell/strided_sliceStridedSlice&while/lstm_cell/ReadVariableOp:value:0,while/lstm_cell/strided_slice/stack:output:0.while/lstm_cell/strided_slice/stack_1:output:0.while/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
while/lstm_cell/strided_slice?
while/lstm_cell/MatMul_4MatMulwhile/lstm_cell/mul_4:z:0&while/lstm_cell/strided_slice:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/MatMul_4?
while/lstm_cell/addAddV2 while/lstm_cell/BiasAdd:output:0"while/lstm_cell/MatMul_4:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/add?
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/add:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/Sigmoid?
 while/lstm_cell/ReadVariableOp_1ReadVariableOp)while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02"
 while/lstm_cell/ReadVariableOp_1?
%while/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2'
%while/lstm_cell/strided_slice_1/stack?
'while/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2)
'while/lstm_cell/strided_slice_1/stack_1?
'while/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell/strided_slice_1/stack_2?
while/lstm_cell/strided_slice_1StridedSlice(while/lstm_cell/ReadVariableOp_1:value:0.while/lstm_cell/strided_slice_1/stack:output:00while/lstm_cell/strided_slice_1/stack_1:output:00while/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2!
while/lstm_cell/strided_slice_1?
while/lstm_cell/MatMul_5MatMulwhile/lstm_cell/mul_5:z:0(while/lstm_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/MatMul_5?
while/lstm_cell/add_1AddV2"while/lstm_cell/BiasAdd_1:output:0"while/lstm_cell/MatMul_5:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/add_1?
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/Sigmoid_1?
while/lstm_cell/mul_8Mulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul_8?
 while/lstm_cell/ReadVariableOp_2ReadVariableOp)while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02"
 while/lstm_cell/ReadVariableOp_2?
%while/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2'
%while/lstm_cell/strided_slice_2/stack?
'while/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?  2)
'while/lstm_cell/strided_slice_2/stack_1?
'while/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell/strided_slice_2/stack_2?
while/lstm_cell/strided_slice_2StridedSlice(while/lstm_cell/ReadVariableOp_2:value:0.while/lstm_cell/strided_slice_2/stack:output:00while/lstm_cell/strided_slice_2/stack_1:output:00while/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2!
while/lstm_cell/strided_slice_2?
while/lstm_cell/MatMul_6MatMulwhile/lstm_cell/mul_6:z:0(while/lstm_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/MatMul_6?
while/lstm_cell/add_2AddV2"while/lstm_cell/BiasAdd_2:output:0"while/lstm_cell/MatMul_6:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/add_2?
while/lstm_cell/TanhTanhwhile/lstm_cell/add_2:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/Tanh?
while/lstm_cell/mul_9Mulwhile/lstm_cell/Sigmoid:y:0while/lstm_cell/Tanh:y:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul_9?
while/lstm_cell/add_3AddV2while/lstm_cell/mul_8:z:0while/lstm_cell/mul_9:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/add_3?
 while/lstm_cell/ReadVariableOp_3ReadVariableOp)while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02"
 while/lstm_cell/ReadVariableOp_3?
%while/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?  2'
%while/lstm_cell/strided_slice_3/stack?
'while/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2)
'while/lstm_cell/strided_slice_3/stack_1?
'while/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell/strided_slice_3/stack_2?
while/lstm_cell/strided_slice_3StridedSlice(while/lstm_cell/ReadVariableOp_3:value:0.while/lstm_cell/strided_slice_3/stack:output:00while/lstm_cell/strided_slice_3/stack_1:output:00while/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2!
while/lstm_cell/strided_slice_3?
while/lstm_cell/MatMul_7MatMulwhile/lstm_cell/mul_7:z:0(while/lstm_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/MatMul_7?
while/lstm_cell/add_4AddV2"while/lstm_cell/BiasAdd_3:output:0"while/lstm_cell/MatMul_7:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/add_4?
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/add_4:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/Sigmoid_2?
while/lstm_cell/Tanh_1Tanhwhile/lstm_cell/add_3:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/Tanh_1?
while/lstm_cell/mul_10Mulwhile/lstm_cell/Sigmoid_2:y:0while/lstm_cell/Tanh_1:y:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul_10?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_10:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell/mul_10:z:0^while/NoOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell/add_3:z:0^while/NoOp*
T0*(
_output_shapes
:??????????2
while/Identity_5?

while/NoOpNoOp^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"T
'while_lstm_cell_readvariableop_resource)while_lstm_cell_readvariableop_resource_0"d
/while_lstm_cell_split_1_readvariableop_resource1while_lstm_cell_split_1_readvariableop_resource_0"`
-while_lstm_cell_split_readvariableop_resource/while_lstm_cell_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2@
while/lstm_cell/ReadVariableOpwhile/lstm_cell/ReadVariableOp2D
 while/lstm_cell/ReadVariableOp_1 while/lstm_cell/ReadVariableOp_12D
 while/lstm_cell/ReadVariableOp_2 while/lstm_cell/ReadVariableOp_22D
 while/lstm_cell/ReadVariableOp_3 while/lstm_cell/ReadVariableOp_32L
$while/lstm_cell/split/ReadVariableOp$while/lstm_cell/split/ReadVariableOp2P
&while/lstm_cell/split_1/ReadVariableOp&while/lstm_cell/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
*__inference_model_LSTM_layer_call_fn_15864

inputs
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:
?? 
	unknown_4:? 
	unknown_5: 
	unknown_6:	 ?
	unknown_7:	?
	unknown_8:
??
	unknown_9:	?

unknown_10:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_model_LSTM_layer_call_and_return_conditional_losses_150312
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
d
H__inference_max_pooling1d_layer_call_and_return_conditional_losses_13846

inputs
identityb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
ExpandDims/dim?

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2

ExpandDims?
MaxPoolMaxPoolExpandDims:output:0*A
_output_shapes/
-:+???????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
SqueezeSqueezeMaxPool:output:0*
T0*=
_output_shapes+
):'???????????????????????????*
squeeze_dims
2	
Squeezez
IdentityIdentitySqueeze:output:0*
T0*=
_output_shapes+
):'???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?
?
&__inference_conv1d_layer_call_fn_16748

inputs
unknown:? 
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????! *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_conv1d_layer_call_and_return_conditional_losses_147402
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????! 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????!?: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:?????????!?
 
_user_specified_nameinputs
?
?
'__inference_dense_2_layer_call_fn_18103

inputs
unknown:	?
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_150242
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
d
H__inference_max_pooling1d_layer_call_and_return_conditional_losses_16782

inputs
identityb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
ExpandDims/dim?

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2

ExpandDims?
MaxPoolMaxPoolExpandDims:output:0*A
_output_shapes/
-:+???????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
SqueezeSqueezeMaxPool:output:0*
T0*=
_output_shapes+
):'???????????????????????????*
squeeze_dims
2	
Squeezez
IdentityIdentitySqueeze:output:0*
T0*=
_output_shapes+
):'???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?

?
D__inference_embedding_layer_call_and_return_conditional_losses_16739

inputs	*
embedding_lookup_16733:
??
identity??embedding_lookup?
embedding_lookupResourceGatherembedding_lookup_16733inputs",/job:localhost/replica:0/task:0/device:GPU:0*
Tindices0	*)
_class
loc:@embedding_lookup/16733*,
_output_shapes
:?????????!?*
dtype02
embedding_lookup?
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*)
_class
loc:@embedding_lookup/16733*,
_output_shapes
:?????????!?2
embedding_lookup/Identity?
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:?????????!?2
embedding_lookup/Identity_1?
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*,
_output_shapes
:?????????!?2

Identitya
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????!: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:?????????!
 
_user_specified_nameinputs
߆
?
E__inference_model_LSTM_layer_call_and_return_conditional_losses_15798
input_1O
Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handleP
Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value	,
(text_vectorization_string_lookup_equal_y/
+text_vectorization_string_lookup_selectv2_t	#
embedding_15776:
??#
conv1d_15779:? 
conv1d_15781: 

lstm_15785:	 ?

lstm_15787:	?

lstm_15789:
?? 
dense_2_15792:	?
dense_2_15794:
identity??conv1d/StatefulPartitionedCall?dense_2/StatefulPartitionedCall?!embedding/StatefulPartitionedCall?lstm/StatefulPartitionedCall?>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2?
text_vectorization/StringLowerStringLowerinput_1*'
_output_shapes
:?????????2 
text_vectorization/StringLower?
%text_vectorization/StaticRegexReplaceStaticRegexReplace'text_vectorization/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite 2'
%text_vectorization/StaticRegexReplace?
text_vectorization/SqueezeSqueeze.text_vectorization/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????2
text_vectorization/Squeeze?
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B 2&
$text_vectorization/StringSplit/Const?
,text_vectorization/StringSplit/StringSplitV2StringSplitV2#text_vectorization/Squeeze:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:2.
,text_vectorization/StringSplit/StringSplitV2?
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        24
2text_vectorization/StringSplit/strided_slice/stack?
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       26
4text_vectorization/StringSplit/strided_slice/stack_1?
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      26
4text_vectorization/StringSplit/strided_slice/stack_2?
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2.
,text_vectorization/StringSplit/strided_slice?
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 26
4text_vectorization/StringSplit/strided_slice_1/stack?
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6text_vectorization/StringSplit/strided_slice_1/stack_1?
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6text_vectorization/StringSplit/strided_slice_1/stack_2?
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask20
.text_vectorization/StringSplit/strided_slice_1?
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:?????????2W
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2Y
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:2a
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2a
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: 2`
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod?
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : 2e
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: 2`
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: 2_
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :2a
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: 2_
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: 2_
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2?
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:?????????2d
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : 2^
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:?????????2Y
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum?
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R 2b
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2^
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:?????????2Y
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat?
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????2@
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2?
&text_vectorization/string_lookup/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0(text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:?????????2(
&text_vectorization/string_lookup/Equal?
)text_vectorization/string_lookup/SelectV2SelectV2*text_vectorization/string_lookup/Equal:z:0+text_vectorization_string_lookup_selectv2_tGtext_vectorization/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:?????????2+
)text_vectorization/string_lookup/SelectV2?
)text_vectorization/string_lookup/IdentityIdentity2text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:?????????2+
)text_vectorization/string_lookup/Identity?
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 21
/text_vectorization/RaggedToTensor/default_value?
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"????????!       2)
'text_vectorization/RaggedToTensor/Const?
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:02text_vectorization/string_lookup/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:0`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:?????????!*
num_row_partition_tensors*%
row_partition_types

ROW_SPLITS28
6text_vectorization/RaggedToTensor/RaggedTensorToTensor?
!embedding/StatefulPartitionedCallStatefulPartitionedCall?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0embedding_15776*
Tin
2	*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????!?*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_147202#
!embedding/StatefulPartitionedCall?
conv1d/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0conv1d_15779conv1d_15781*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????! *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_conv1d_layer_call_and_return_conditional_losses_147402 
conv1d/StatefulPartitionedCall?
max_pooling1d/PartitionedCallPartitionedCall'conv1d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_max_pooling1d_layer_call_and_return_conditional_losses_147532
max_pooling1d/PartitionedCall?
lstm/StatefulPartitionedCallStatefulPartitionedCall&max_pooling1d/PartitionedCall:output:0
lstm_15785
lstm_15787
lstm_15789*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_154602
lstm/StatefulPartitionedCall?
dense_2/StatefulPartitionedCallStatefulPartitionedCall%lstm/StatefulPartitionedCall:output:0dense_2_15792dense_2_15794*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_150242!
dense_2/StatefulPartitionedCall?
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp^conv1d/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall"^embedding/StatefulPartitionedCall^lstm/StatefulPartitionedCall?^text_vectorization/string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : : : : : 2@
conv1d/StatefulPartitionedCallconv1d/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall2?
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
B__inference_dense_2_layer_call_and_return_conditional_losses_15024

inputs1
matmul_readvariableop_resource:	?-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Softmaxl
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
d
H__inference_max_pooling1d_layer_call_and_return_conditional_losses_14753

inputs
identityb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
ExpandDims/dim?

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????! 2

ExpandDims?
MaxPoolMaxPoolExpandDims:output:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2	
MaxPool|
SqueezeSqueezeMaxPool:output:0*
T0*+
_output_shapes
:????????? *
squeeze_dims
2	
Squeezeh
IdentityIdentitySqueeze:output:0*
T0*+
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????! :S O
+
_output_shapes
:?????????! 
 
_user_specified_nameinputs
?
d
H__inference_max_pooling1d_layer_call_and_return_conditional_losses_16790

inputs
identityb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
ExpandDims/dim?

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????! 2

ExpandDims?
MaxPoolMaxPoolExpandDims:output:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2	
MaxPool|
SqueezeSqueezeMaxPool:output:0*
T0*+
_output_shapes
:????????? *
squeeze_dims
2	
Squeezeh
IdentityIdentitySqueeze:output:0*
T0*+
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????! :S O
+
_output_shapes
:?????????! 
 
_user_specified_nameinputs
?T
?
__inference_adapt_step_16723
iterator

iterator_19
5none_lookup_table_find_lookuptablefindv2_table_handle:
6none_lookup_table_find_lookuptablefindv2_default_value	??IteratorGetNext?(None_lookup_table_find/LookupTableFindV2?,None_lookup_table_insert/LookupTableInsertV2?
IteratorGetNextIteratorGetNextiterator*
_class
loc:@iterator*#
_output_shapes
:?????????*"
output_shapes
:?????????*
output_types
22
IteratorGetNextl
StringLowerStringLowerIteratorGetNext:components:0*#
_output_shapes
:?????????2
StringLower?
StaticRegexReplaceStaticRegexReplaceStringLower:output:0*#
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite 2
StaticRegexReplaceg
StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B 2
StringSplit/Const?
StringSplit/StringSplitV2StringSplitV2StaticRegexReplace:output:0StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:2
StringSplit/StringSplitV2?
StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
StringSplit/strided_slice/stack?
!StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2#
!StringSplit/strided_slice/stack_1?
!StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!StringSplit/strided_slice/stack_2?
StringSplit/strided_sliceStridedSlice#StringSplit/StringSplitV2:indices:0(StringSplit/strided_slice/stack:output:0*StringSplit/strided_slice/stack_1:output:0*StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2
StringSplit/strided_slice?
!StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2#
!StringSplit/strided_slice_1/stack?
#StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2%
#StringSplit/strided_slice_1/stack_1?
#StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#StringSplit/strided_slice_1/stack_2?
StringSplit/strided_slice_1StridedSlice!StringSplit/StringSplitV2:shape:0*StringSplit/strided_slice_1/stack:output:0,StringSplit/strided_slice_1/stack_1:output:0,StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask2
StringSplit/strided_slice_1?
BStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast"StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:?????????2D
BStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast?
DStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast$StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2F
DStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1?
LStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeFStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:2N
LStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape?
LStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2N
LStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const?
KStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdUStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0UStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: 2M
KStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod?
PStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : 2R
PStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y?
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreaterTStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0YStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: 2P
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater?
KStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastRStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: 2M
KStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast?
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2P
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1?
JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxFStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0WStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: 2L
JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max?
LStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :2N
LStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y?
JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2SStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0UStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: 2L
JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add?
JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulOStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: 2L
JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul?
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximumHStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: 2P
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum?
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimumHStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: 2P
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum?
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 2P
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2?
OStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountFStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0WStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:?????????2Q
OStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount?
IStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : 2K
IStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis?
DStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumVStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:?????????2F
DStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum?
MStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R 2O
MStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0?
IStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2K
IStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis?
DStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2VStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:?????????2F
DStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat?
UniqueWithCountsUniqueWithCounts"StringSplit/StringSplitV2:values:0*
T0*A
_output_shapes/
-:?????????:?????????:?????????*
out_idx0	2
UniqueWithCounts?
(None_lookup_table_find/LookupTableFindV2LookupTableFindV25none_lookup_table_find_lookuptablefindv2_table_handleUniqueWithCounts:y:06none_lookup_table_find_lookuptablefindv2_default_value",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
:2*
(None_lookup_table_find/LookupTableFindV2?
addAddV2UniqueWithCounts:count:01None_lookup_table_find/LookupTableFindV2:values:0*
T0	*
_output_shapes
:2
add?
,None_lookup_table_insert/LookupTableInsertV2LookupTableInsertV25none_lookup_table_find_lookuptablefindv2_table_handleUniqueWithCounts:y:0add:z:0)^None_lookup_table_find/LookupTableFindV2",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
 2.
,None_lookup_table_insert/LookupTableInsertV2*(
_construction_contextkEagerRuntime*
_input_shapes

: : : : 2"
IteratorGetNextIteratorGetNext2T
(None_lookup_table_find/LookupTableFindV2(None_lookup_table_find/LookupTableFindV22\
,None_lookup_table_insert/LookupTableInsertV2,None_lookup_table_insert/LookupTableInsertV2:( $
"
_user_specified_name
iterator:@<

_output_shapes
: 
"
_user_specified_name
iterator:

_output_shapes
: 
?
,
__inference__destroyer_18394
identityP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
ConstQ
IdentityIdentityConst:output:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
??
?
?__inference_lstm_layer_call_and_return_conditional_losses_18094

inputs:
'lstm_cell_split_readvariableop_resource:	 ?8
)lstm_cell_split_1_readvariableop_resource:	?5
!lstm_cell_readvariableop_resource:
??
identity??lstm_cell/ReadVariableOp?lstm_cell/ReadVariableOp_1?lstm_cell/ReadVariableOp_2?lstm_cell/ReadVariableOp_3?lstm_cell/split/ReadVariableOp? lstm_cell/split_1/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:????????? 2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_2~
lstm_cell/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
lstm_cell/ones_like/Shape{
lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell/ones_like/Const?
lstm_cell/ones_likeFill"lstm_cell/ones_like/Shape:output:0"lstm_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell/ones_likew
lstm_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell/dropout/Const?
lstm_cell/dropout/MulMullstm_cell/ones_like:output:0 lstm_cell/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell/dropout/Mul~
lstm_cell/dropout/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell/dropout/Shape?
.lstm_cell/dropout/random_uniform/RandomUniformRandomUniform lstm_cell/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2??>20
.lstm_cell/dropout/random_uniform/RandomUniform?
 lstm_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2"
 lstm_cell/dropout/GreaterEqual/y?
lstm_cell/dropout/GreaterEqualGreaterEqual7lstm_cell/dropout/random_uniform/RandomUniform:output:0)lstm_cell/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2 
lstm_cell/dropout/GreaterEqual?
lstm_cell/dropout/CastCast"lstm_cell/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell/dropout/Cast?
lstm_cell/dropout/Mul_1Mullstm_cell/dropout/Mul:z:0lstm_cell/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell/dropout/Mul_1{
lstm_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell/dropout_1/Const?
lstm_cell/dropout_1/MulMullstm_cell/ones_like:output:0"lstm_cell/dropout_1/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell/dropout_1/Mul?
lstm_cell/dropout_1/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell/dropout_1/Shape?
0lstm_cell/dropout_1/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_1/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???22
0lstm_cell/dropout_1/random_uniform/RandomUniform?
"lstm_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2$
"lstm_cell/dropout_1/GreaterEqual/y?
 lstm_cell/dropout_1/GreaterEqualGreaterEqual9lstm_cell/dropout_1/random_uniform/RandomUniform:output:0+lstm_cell/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2"
 lstm_cell/dropout_1/GreaterEqual?
lstm_cell/dropout_1/CastCast$lstm_cell/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell/dropout_1/Cast?
lstm_cell/dropout_1/Mul_1Mullstm_cell/dropout_1/Mul:z:0lstm_cell/dropout_1/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell/dropout_1/Mul_1{
lstm_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell/dropout_2/Const?
lstm_cell/dropout_2/MulMullstm_cell/ones_like:output:0"lstm_cell/dropout_2/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell/dropout_2/Mul?
lstm_cell/dropout_2/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell/dropout_2/Shape?
0lstm_cell/dropout_2/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_2/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???22
0lstm_cell/dropout_2/random_uniform/RandomUniform?
"lstm_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2$
"lstm_cell/dropout_2/GreaterEqual/y?
 lstm_cell/dropout_2/GreaterEqualGreaterEqual9lstm_cell/dropout_2/random_uniform/RandomUniform:output:0+lstm_cell/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2"
 lstm_cell/dropout_2/GreaterEqual?
lstm_cell/dropout_2/CastCast$lstm_cell/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell/dropout_2/Cast?
lstm_cell/dropout_2/Mul_1Mullstm_cell/dropout_2/Mul:z:0lstm_cell/dropout_2/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell/dropout_2/Mul_1{
lstm_cell/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell/dropout_3/Const?
lstm_cell/dropout_3/MulMullstm_cell/ones_like:output:0"lstm_cell/dropout_3/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell/dropout_3/Mul?
lstm_cell/dropout_3/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell/dropout_3/Shape?
0lstm_cell/dropout_3/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_3/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2ԭ?22
0lstm_cell/dropout_3/random_uniform/RandomUniform?
"lstm_cell/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2$
"lstm_cell/dropout_3/GreaterEqual/y?
 lstm_cell/dropout_3/GreaterEqualGreaterEqual9lstm_cell/dropout_3/random_uniform/RandomUniform:output:0+lstm_cell/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2"
 lstm_cell/dropout_3/GreaterEqual?
lstm_cell/dropout_3/CastCast$lstm_cell/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell/dropout_3/Cast?
lstm_cell/dropout_3/Mul_1Mullstm_cell/dropout_3/Mul:z:0lstm_cell/dropout_3/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell/dropout_3/Mul_1x
lstm_cell/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell/ones_like_1/Shape
lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell/ones_like_1/Const?
lstm_cell/ones_like_1Fill$lstm_cell/ones_like_1/Shape:output:0$lstm_cell/ones_like_1/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/ones_like_1{
lstm_cell/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell/dropout_4/Const?
lstm_cell/dropout_4/MulMullstm_cell/ones_like_1:output:0"lstm_cell/dropout_4/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/dropout_4/Mul?
lstm_cell/dropout_4/ShapeShapelstm_cell/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell/dropout_4/Shape?
0lstm_cell/dropout_4/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_4/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2??622
0lstm_cell/dropout_4/random_uniform/RandomUniform?
"lstm_cell/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2$
"lstm_cell/dropout_4/GreaterEqual/y?
 lstm_cell/dropout_4/GreaterEqualGreaterEqual9lstm_cell/dropout_4/random_uniform/RandomUniform:output:0+lstm_cell/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2"
 lstm_cell/dropout_4/GreaterEqual?
lstm_cell/dropout_4/CastCast$lstm_cell/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
lstm_cell/dropout_4/Cast?
lstm_cell/dropout_4/Mul_1Mullstm_cell/dropout_4/Mul:z:0lstm_cell/dropout_4/Cast:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell/dropout_4/Mul_1{
lstm_cell/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell/dropout_5/Const?
lstm_cell/dropout_5/MulMullstm_cell/ones_like_1:output:0"lstm_cell/dropout_5/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/dropout_5/Mul?
lstm_cell/dropout_5/ShapeShapelstm_cell/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell/dropout_5/Shape?
0lstm_cell/dropout_5/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_5/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???22
0lstm_cell/dropout_5/random_uniform/RandomUniform?
"lstm_cell/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2$
"lstm_cell/dropout_5/GreaterEqual/y?
 lstm_cell/dropout_5/GreaterEqualGreaterEqual9lstm_cell/dropout_5/random_uniform/RandomUniform:output:0+lstm_cell/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2"
 lstm_cell/dropout_5/GreaterEqual?
lstm_cell/dropout_5/CastCast$lstm_cell/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
lstm_cell/dropout_5/Cast?
lstm_cell/dropout_5/Mul_1Mullstm_cell/dropout_5/Mul:z:0lstm_cell/dropout_5/Cast:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell/dropout_5/Mul_1{
lstm_cell/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell/dropout_6/Const?
lstm_cell/dropout_6/MulMullstm_cell/ones_like_1:output:0"lstm_cell/dropout_6/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/dropout_6/Mul?
lstm_cell/dropout_6/ShapeShapelstm_cell/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell/dropout_6/Shape?
0lstm_cell/dropout_6/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_6/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2?ǫ22
0lstm_cell/dropout_6/random_uniform/RandomUniform?
"lstm_cell/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2$
"lstm_cell/dropout_6/GreaterEqual/y?
 lstm_cell/dropout_6/GreaterEqualGreaterEqual9lstm_cell/dropout_6/random_uniform/RandomUniform:output:0+lstm_cell/dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2"
 lstm_cell/dropout_6/GreaterEqual?
lstm_cell/dropout_6/CastCast$lstm_cell/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
lstm_cell/dropout_6/Cast?
lstm_cell/dropout_6/Mul_1Mullstm_cell/dropout_6/Mul:z:0lstm_cell/dropout_6/Cast:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell/dropout_6/Mul_1{
lstm_cell/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell/dropout_7/Const?
lstm_cell/dropout_7/MulMullstm_cell/ones_like_1:output:0"lstm_cell/dropout_7/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/dropout_7/Mul?
lstm_cell/dropout_7/ShapeShapelstm_cell/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell/dropout_7/Shape?
0lstm_cell/dropout_7/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_7/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2?Ý22
0lstm_cell/dropout_7/random_uniform/RandomUniform?
"lstm_cell/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2$
"lstm_cell/dropout_7/GreaterEqual/y?
 lstm_cell/dropout_7/GreaterEqualGreaterEqual9lstm_cell/dropout_7/random_uniform/RandomUniform:output:0+lstm_cell/dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2"
 lstm_cell/dropout_7/GreaterEqual?
lstm_cell/dropout_7/CastCast$lstm_cell/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
lstm_cell/dropout_7/Cast?
lstm_cell/dropout_7/Mul_1Mullstm_cell/dropout_7/Mul:z:0lstm_cell/dropout_7/Cast:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell/dropout_7/Mul_1?
lstm_cell/mulMulstrided_slice_2:output:0lstm_cell/dropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell/mul?
lstm_cell/mul_1Mulstrided_slice_2:output:0lstm_cell/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell/mul_1?
lstm_cell/mul_2Mulstrided_slice_2:output:0lstm_cell/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell/mul_2?
lstm_cell/mul_3Mulstrided_slice_2:output:0lstm_cell/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell/mul_3x
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell/split/split_dim?
lstm_cell/split/ReadVariableOpReadVariableOp'lstm_cell_split_readvariableop_resource*
_output_shapes
:	 ?*
dtype02 
lstm_cell/split/ReadVariableOp?
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0&lstm_cell/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	 ?:	 ?:	 ?:	 ?*
	num_split2
lstm_cell/split?
lstm_cell/MatMulMatMullstm_cell/mul:z:0lstm_cell/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/MatMul?
lstm_cell/MatMul_1MatMullstm_cell/mul_1:z:0lstm_cell/split:output:1*
T0*(
_output_shapes
:??????????2
lstm_cell/MatMul_1?
lstm_cell/MatMul_2MatMullstm_cell/mul_2:z:0lstm_cell/split:output:2*
T0*(
_output_shapes
:??????????2
lstm_cell/MatMul_2?
lstm_cell/MatMul_3MatMullstm_cell/mul_3:z:0lstm_cell/split:output:3*
T0*(
_output_shapes
:??????????2
lstm_cell/MatMul_3|
lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_cell/split_1/split_dim?
 lstm_cell/split_1/ReadVariableOpReadVariableOp)lstm_cell_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 lstm_cell/split_1/ReadVariableOp?
lstm_cell/split_1Split$lstm_cell/split_1/split_dim:output:0(lstm_cell/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:?:?:?:?*
	num_split2
lstm_cell/split_1?
lstm_cell/BiasAddBiasAddlstm_cell/MatMul:product:0lstm_cell/split_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/BiasAdd?
lstm_cell/BiasAdd_1BiasAddlstm_cell/MatMul_1:product:0lstm_cell/split_1:output:1*
T0*(
_output_shapes
:??????????2
lstm_cell/BiasAdd_1?
lstm_cell/BiasAdd_2BiasAddlstm_cell/MatMul_2:product:0lstm_cell/split_1:output:2*
T0*(
_output_shapes
:??????????2
lstm_cell/BiasAdd_2?
lstm_cell/BiasAdd_3BiasAddlstm_cell/MatMul_3:product:0lstm_cell/split_1:output:3*
T0*(
_output_shapes
:??????????2
lstm_cell/BiasAdd_3?
lstm_cell/mul_4Mulzeros:output:0lstm_cell/dropout_4/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul_4?
lstm_cell/mul_5Mulzeros:output:0lstm_cell/dropout_5/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul_5?
lstm_cell/mul_6Mulzeros:output:0lstm_cell/dropout_6/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul_6?
lstm_cell/mul_7Mulzeros:output:0lstm_cell/dropout_7/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul_7?
lstm_cell/ReadVariableOpReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
??*
dtype02
lstm_cell/ReadVariableOp?
lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
lstm_cell/strided_slice/stack?
lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2!
lstm_cell/strided_slice/stack_1?
lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2!
lstm_cell/strided_slice/stack_2?
lstm_cell/strided_sliceStridedSlice lstm_cell/ReadVariableOp:value:0&lstm_cell/strided_slice/stack:output:0(lstm_cell/strided_slice/stack_1:output:0(lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
lstm_cell/strided_slice?
lstm_cell/MatMul_4MatMullstm_cell/mul_4:z:0 lstm_cell/strided_slice:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/MatMul_4?
lstm_cell/addAddV2lstm_cell/BiasAdd:output:0lstm_cell/MatMul_4:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell/addw
lstm_cell/SigmoidSigmoidlstm_cell/add:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell/Sigmoid?
lstm_cell/ReadVariableOp_1ReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
??*
dtype02
lstm_cell/ReadVariableOp_1?
lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2!
lstm_cell/strided_slice_1/stack?
!lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2#
!lstm_cell/strided_slice_1/stack_1?
!lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell/strided_slice_1/stack_2?
lstm_cell/strided_slice_1StridedSlice"lstm_cell/ReadVariableOp_1:value:0(lstm_cell/strided_slice_1/stack:output:0*lstm_cell/strided_slice_1/stack_1:output:0*lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
lstm_cell/strided_slice_1?
lstm_cell/MatMul_5MatMullstm_cell/mul_5:z:0"lstm_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/MatMul_5?
lstm_cell/add_1AddV2lstm_cell/BiasAdd_1:output:0lstm_cell/MatMul_5:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell/add_1}
lstm_cell/Sigmoid_1Sigmoidlstm_cell/add_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell/Sigmoid_1?
lstm_cell/mul_8Mullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul_8?
lstm_cell/ReadVariableOp_2ReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
??*
dtype02
lstm_cell/ReadVariableOp_2?
lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2!
lstm_cell/strided_slice_2/stack?
!lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?  2#
!lstm_cell/strided_slice_2/stack_1?
!lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell/strided_slice_2/stack_2?
lstm_cell/strided_slice_2StridedSlice"lstm_cell/ReadVariableOp_2:value:0(lstm_cell/strided_slice_2/stack:output:0*lstm_cell/strided_slice_2/stack_1:output:0*lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
lstm_cell/strided_slice_2?
lstm_cell/MatMul_6MatMullstm_cell/mul_6:z:0"lstm_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/MatMul_6?
lstm_cell/add_2AddV2lstm_cell/BiasAdd_2:output:0lstm_cell/MatMul_6:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell/add_2p
lstm_cell/TanhTanhlstm_cell/add_2:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell/Tanh?
lstm_cell/mul_9Mullstm_cell/Sigmoid:y:0lstm_cell/Tanh:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul_9?
lstm_cell/add_3AddV2lstm_cell/mul_8:z:0lstm_cell/mul_9:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell/add_3?
lstm_cell/ReadVariableOp_3ReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
??*
dtype02
lstm_cell/ReadVariableOp_3?
lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?  2!
lstm_cell/strided_slice_3/stack?
!lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2#
!lstm_cell/strided_slice_3/stack_1?
!lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell/strided_slice_3/stack_2?
lstm_cell/strided_slice_3StridedSlice"lstm_cell/ReadVariableOp_3:value:0(lstm_cell/strided_slice_3/stack:output:0*lstm_cell/strided_slice_3/stack_1:output:0*lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
lstm_cell/strided_slice_3?
lstm_cell/MatMul_7MatMullstm_cell/mul_7:z:0"lstm_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/MatMul_7?
lstm_cell/add_4AddV2lstm_cell/BiasAdd_3:output:0lstm_cell/MatMul_7:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell/add_4}
lstm_cell/Sigmoid_2Sigmoidlstm_cell/add_4:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell/Sigmoid_2t
lstm_cell/Tanh_1Tanhlstm_cell/add_3:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell/Tanh_1?
lstm_cell/mul_10Mullstm_cell/Sigmoid_2:y:0lstm_cell/Tanh_1:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul_10?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0'lstm_cell_split_readvariableop_resource)lstm_cell_split_1_readvariableop_resource!lstm_cell_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_17896*
condR
while_cond_17895*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimet
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp^lstm_cell/ReadVariableOp^lstm_cell/ReadVariableOp_1^lstm_cell/ReadVariableOp_2^lstm_cell/ReadVariableOp_3^lstm_cell/split/ReadVariableOp!^lstm_cell/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:????????? : : : 24
lstm_cell/ReadVariableOplstm_cell/ReadVariableOp28
lstm_cell/ReadVariableOp_1lstm_cell/ReadVariableOp_128
lstm_cell/ReadVariableOp_2lstm_cell/ReadVariableOp_228
lstm_cell/ReadVariableOp_3lstm_cell/ReadVariableOp_32@
lstm_cell/split/ReadVariableOplstm_cell/split/ReadVariableOp2D
 lstm_cell/split_1/ReadVariableOp lstm_cell/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:????????? 
 
_user_specified_nameinputs
??
?
!__inference__traced_restore_18781
file_prefix9
%assignvariableop_embedding_embeddings:
??7
 assignvariableop_1_conv1d_kernel:? ,
assignvariableop_2_conv1d_bias: 4
!assignvariableop_3_dense_2_kernel:	?-
assignvariableop_4_dense_2_bias:&
assignvariableop_5_adam_iter:	 (
assignvariableop_6_adam_beta_1: (
assignvariableop_7_adam_beta_2: '
assignvariableop_8_adam_decay: /
%assignvariableop_9_adam_learning_rate: <
)assignvariableop_10_lstm_lstm_cell_kernel:	 ?G
3assignvariableop_11_lstm_lstm_cell_recurrent_kernel:
??6
'assignvariableop_12_lstm_lstm_cell_bias:	?M
Cmutablehashtable_table_restore_lookuptableimportv2_mutablehashtable: #
assignvariableop_13_total: #
assignvariableop_14_count: -
assignvariableop_15_accumulator:/
!assignvariableop_16_accumulator_1:/
!assignvariableop_17_accumulator_2:/
!assignvariableop_18_accumulator_3:%
assignvariableop_19_total_1: %
assignvariableop_20_count_1: 0
"assignvariableop_21_true_positives:1
#assignvariableop_22_false_positives:2
$assignvariableop_23_true_positives_1:1
#assignvariableop_24_false_negatives:3
$assignvariableop_25_true_positives_2:	?1
"assignvariableop_26_true_negatives:	?4
%assignvariableop_27_false_positives_1:	?4
%assignvariableop_28_false_negatives_1:	?%
assignvariableop_29_total_2: %
assignvariableop_30_count_2: C
/assignvariableop_31_adam_embedding_embeddings_m:
???
(assignvariableop_32_adam_conv1d_kernel_m:? 4
&assignvariableop_33_adam_conv1d_bias_m: <
)assignvariableop_34_adam_dense_2_kernel_m:	?5
'assignvariableop_35_adam_dense_2_bias_m:C
0assignvariableop_36_adam_lstm_lstm_cell_kernel_m:	 ?N
:assignvariableop_37_adam_lstm_lstm_cell_recurrent_kernel_m:
??=
.assignvariableop_38_adam_lstm_lstm_cell_bias_m:	?C
/assignvariableop_39_adam_embedding_embeddings_v:
???
(assignvariableop_40_adam_conv1d_kernel_v:? 4
&assignvariableop_41_adam_conv1d_bias_v: <
)assignvariableop_42_adam_dense_2_kernel_v:	?5
'assignvariableop_43_adam_dense_2_bias_v:C
0assignvariableop_44_adam_lstm_lstm_cell_kernel_v:	 ?N
:assignvariableop_45_adam_lstm_lstm_cell_recurrent_kernel_v:
??=
.assignvariableop_46_adam_lstm_lstm_cell_bias_v:	?
identity_48??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_43?AssignVariableOp_44?AssignVariableOp_45?AssignVariableOp_46?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?2MutableHashTable_table_restore/LookupTableImportV2?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:2*
dtype0*?
value?B?2B:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEBLlayer_with_weights-0/_index_lookup_layer/token_counts/.ATTRIBUTES/table-keysBNlayer_with_weights-0/_index_lookup_layer/token_counts/.ATTRIBUTES/table-valuesB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB:keras_api/metrics/1/accumulator/.ATTRIBUTES/VARIABLE_VALUEB:keras_api/metrics/2/accumulator/.ATTRIBUTES/VARIABLE_VALUEB:keras_api/metrics/3/accumulator/.ATTRIBUTES/VARIABLE_VALUEB:keras_api/metrics/4/accumulator/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/5/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/5/count/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/6/true_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/6/false_positives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/7/true_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/7/false_negatives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/8/true_positives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/8/true_negatives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/8/false_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/8/false_negatives/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/9/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/9/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:2*
dtype0*w
valuenBl2B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::::::::::::*@
dtypes6
422		2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp%assignvariableop_embedding_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp assignvariableop_1_conv1d_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOpassignvariableop_2_conv1d_biasIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp!assignvariableop_3_dense_2_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOpassignvariableop_4_dense_2_biasIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_iterIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_beta_1Identity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_beta_2Identity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_decayIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp%assignvariableop_9_adam_learning_rateIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp)assignvariableop_10_lstm_lstm_cell_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp3assignvariableop_11_lstm_lstm_cell_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp'assignvariableop_12_lstm_lstm_cell_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12?
2MutableHashTable_table_restore/LookupTableImportV2LookupTableImportV2Cmutablehashtable_table_restore_lookuptableimportv2_mutablehashtableRestoreV2:tensors:13RestoreV2:tensors:14*	
Tin0*

Tout0	*#
_class
loc:@MutableHashTable*
_output_shapes
 24
2MutableHashTable_table_restore/LookupTableImportV2n
Identity_13IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOpassignvariableop_13_totalIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOpassignvariableop_14_countIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOpassignvariableop_15_accumulatorIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp!assignvariableop_16_accumulator_1Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp!assignvariableop_17_accumulator_2Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp!assignvariableop_18_accumulator_3Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOpassignvariableop_19_total_1Identity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOpassignvariableop_20_count_1Identity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp"assignvariableop_21_true_positivesIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp#assignvariableop_22_false_positivesIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp$assignvariableop_23_true_positives_1Identity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp#assignvariableop_24_false_negativesIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp$assignvariableop_25_true_positives_2Identity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp"assignvariableop_26_true_negativesIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp%assignvariableop_27_false_positives_1Identity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp%assignvariableop_28_false_negatives_1Identity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOpassignvariableop_29_total_2Identity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOpassignvariableop_30_count_2Identity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp/assignvariableop_31_adam_embedding_embeddings_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp(assignvariableop_32_adam_conv1d_kernel_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp&assignvariableop_33_adam_conv1d_bias_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp)assignvariableop_34_adam_dense_2_kernel_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp'assignvariableop_35_adam_dense_2_bias_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp0assignvariableop_36_adam_lstm_lstm_cell_kernel_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOp:assignvariableop_37_adam_lstm_lstm_cell_recurrent_kernel_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOp.assignvariableop_38_adam_lstm_lstm_cell_bias_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOp/assignvariableop_39_adam_embedding_embeddings_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40?
AssignVariableOp_40AssignVariableOp(assignvariableop_40_adam_conv1d_kernel_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41?
AssignVariableOp_41AssignVariableOp&assignvariableop_41_adam_conv1d_bias_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42?
AssignVariableOp_42AssignVariableOp)assignvariableop_42_adam_dense_2_kernel_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43?
AssignVariableOp_43AssignVariableOp'assignvariableop_43_adam_dense_2_bias_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44?
AssignVariableOp_44AssignVariableOp0assignvariableop_44_adam_lstm_lstm_cell_kernel_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45?
AssignVariableOp_45AssignVariableOp:assignvariableop_45_adam_lstm_lstm_cell_recurrent_kernel_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46?
AssignVariableOp_46AssignVariableOp.assignvariableop_46_adam_lstm_lstm_cell_bias_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_469
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?	
Identity_47Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_93^MutableHashTable_table_restore/LookupTableImportV2^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_47f
Identity_48IdentityIdentity_47:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_48?	
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_93^MutableHashTable_table_restore/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_48Identity_48:output:0*u
_input_shapesd
b: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
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
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92h
2MutableHashTable_table_restore/LookupTableImportV22MutableHashTable_table_restore/LookupTableImportV2:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:)%
#
_class
loc:@MutableHashTable
?
?
$__inference_lstm_layer_call_fn_16801
inputs_0
unknown:	 ?
	unknown_0:	?
	unknown_1:
??
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_140702
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:?????????????????? : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :?????????????????? 
"
_user_specified_name
inputs/0
?
?
while_cond_14324
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_14324___redundant_placeholder03
/while_while_cond_14324___redundant_placeholder13
/while_while_cond_14324___redundant_placeholder23
/while_while_cond_14324___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?
?
while_cond_15261
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_15261___redundant_placeholder03
/while_while_cond_15261___redundant_placeholder13
/while_while_cond_15261___redundant_placeholder23
/while_while_cond_15261___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?M
?
D__inference_lstm_cell_layer_call_and_return_conditional_losses_18230

inputs
states_0
states_10
split_readvariableop_resource:	 ?.
split_1_readvariableop_resource:	?+
readvariableop_resource:
??
identity

identity_1

identity_2??ReadVariableOp?ReadVariableOp_1?ReadVariableOp_2?ReadVariableOp_3?split/ReadVariableOp?split_1/ReadVariableOpX
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
ones_like/Const?
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
	ones_like^
ones_like_1/ShapeShapestates_0*
T0*
_output_shapes
:2
ones_like_1/Shapek
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
ones_like_1/Const?
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*(
_output_shapes
:??????????2
ones_like_1_
mulMulinputsones_like:output:0*
T0*'
_output_shapes
:????????? 2
mulc
mul_1Mulinputsones_like:output:0*
T0*'
_output_shapes
:????????? 2
mul_1c
mul_2Mulinputsones_like:output:0*
T0*'
_output_shapes
:????????? 2
mul_2c
mul_3Mulinputsones_like:output:0*
T0*'
_output_shapes
:????????? 2
mul_3d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
split/ReadVariableOp?
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	 ?:	 ?:	 ?:	 ?*
	num_split2
splitf
MatMulMatMulmul:z:0split:output:0*
T0*(
_output_shapes
:??????????2
MatMull
MatMul_1MatMul	mul_1:z:0split:output:1*
T0*(
_output_shapes
:??????????2

MatMul_1l
MatMul_2MatMul	mul_2:z:0split:output:2*
T0*(
_output_shapes
:??????????2

MatMul_2l
MatMul_3MatMul	mul_3:z:0split:output:3*
T0*(
_output_shapes
:??????????2

MatMul_3h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_1/split_dim?
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:?*
dtype02
split_1/ReadVariableOp?
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:?:?:?:?*
	num_split2	
split_1t
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*(
_output_shapes
:??????????2	
BiasAddz
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*(
_output_shapes
:??????????2
	BiasAdd_1z
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*(
_output_shapes
:??????????2
	BiasAdd_2z
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*(
_output_shapes
:??????????2
	BiasAdd_3h
mul_4Mulstates_0ones_like_1:output:0*
T0*(
_output_shapes
:??????????2
mul_4h
mul_5Mulstates_0ones_like_1:output:0*
T0*(
_output_shapes
:??????????2
mul_5h
mul_6Mulstates_0ones_like_1:output:0*
T0*(
_output_shapes
:??????????2
mul_6h
mul_7Mulstates_0ones_like_1:output:0*
T0*(
_output_shapes
:??????????2
mul_7z
ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
??*
dtype02
ReadVariableOp{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2?
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
strided_slicet
MatMul_4MatMul	mul_4:z:0strided_slice:output:0*
T0*(
_output_shapes
:??????????2

MatMul_4l
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*(
_output_shapes
:??????????2
addY
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:??????????2	
Sigmoid~
ReadVariableOp_1ReadVariableOpreadvariableop_resource* 
_output_shapes
:
??*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2
strided_slice_1/stack?
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_1/stack_1?
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2?
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
strided_slice_1v
MatMul_5MatMul	mul_5:z:0strided_slice_1:output:0*
T0*(
_output_shapes
:??????????2

MatMul_5r
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*(
_output_shapes
:??????????2
add_1_
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:??????????2
	Sigmoid_1a
mul_8MulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:??????????2
mul_8~
ReadVariableOp_2ReadVariableOpreadvariableop_resource* 
_output_shapes
:
??*
dtype02
ReadVariableOp_2
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_2/stack?
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?  2
strided_slice_2/stack_1?
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2?
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
strided_slice_2v
MatMul_6MatMul	mul_6:z:0strided_slice_2:output:0*
T0*(
_output_shapes
:??????????2

MatMul_6r
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*(
_output_shapes
:??????????2
add_2R
TanhTanh	add_2:z:0*
T0*(
_output_shapes
:??????????2
Tanh_
mul_9MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:??????????2
mul_9`
add_3AddV2	mul_8:z:0	mul_9:z:0*
T0*(
_output_shapes
:??????????2
add_3~
ReadVariableOp_3ReadVariableOpreadvariableop_resource* 
_output_shapes
:
??*
dtype02
ReadVariableOp_3
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?  2
strided_slice_3/stack?
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stack_1?
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack_2?
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
strided_slice_3v
MatMul_7MatMul	mul_7:z:0strided_slice_3:output:0*
T0*(
_output_shapes
:??????????2

MatMul_7r
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*(
_output_shapes
:??????????2
add_4_
	Sigmoid_2Sigmoid	add_4:z:0*
T0*(
_output_shapes
:??????????2
	Sigmoid_2V
Tanh_1Tanh	add_3:z:0*
T0*(
_output_shapes
:??????????2
Tanh_1e
mul_10MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:??????????2
mul_10f
IdentityIdentity
mul_10:z:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityj

Identity_1Identity
mul_10:z:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity_1i

Identity_2Identity	add_3:z:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity_2?
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:????????? :??????????:??????????: : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/0:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/1
??
?	
while_body_17266
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0B
/while_lstm_cell_split_readvariableop_resource_0:	 ?@
1while_lstm_cell_split_1_readvariableop_resource_0:	?=
)while_lstm_cell_readvariableop_resource_0:
??
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor@
-while_lstm_cell_split_readvariableop_resource:	 ?>
/while_lstm_cell_split_1_readvariableop_resource:	?;
'while_lstm_cell_readvariableop_resource:
????while/lstm_cell/ReadVariableOp? while/lstm_cell/ReadVariableOp_1? while/lstm_cell/ReadVariableOp_2? while/lstm_cell/ReadVariableOp_3?$while/lstm_cell/split/ReadVariableOp?&while/lstm_cell/split_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:????????? *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
while/lstm_cell/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2!
while/lstm_cell/ones_like/Shape?
while/lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/lstm_cell/ones_like/Const?
while/lstm_cell/ones_likeFill(while/lstm_cell/ones_like/Shape:output:0(while/lstm_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell/ones_like?
while/lstm_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
while/lstm_cell/dropout/Const?
while/lstm_cell/dropout/MulMul"while/lstm_cell/ones_like:output:0&while/lstm_cell/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell/dropout/Mul?
while/lstm_cell/dropout/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
:2
while/lstm_cell/dropout/Shape?
4while/lstm_cell/dropout/random_uniform/RandomUniformRandomUniform&while/lstm_cell/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2ӏ?26
4while/lstm_cell/dropout/random_uniform/RandomUniform?
&while/lstm_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2(
&while/lstm_cell/dropout/GreaterEqual/y?
$while/lstm_cell/dropout/GreaterEqualGreaterEqual=while/lstm_cell/dropout/random_uniform/RandomUniform:output:0/while/lstm_cell/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2&
$while/lstm_cell/dropout/GreaterEqual?
while/lstm_cell/dropout/CastCast(while/lstm_cell/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
while/lstm_cell/dropout/Cast?
while/lstm_cell/dropout/Mul_1Mulwhile/lstm_cell/dropout/Mul:z:0 while/lstm_cell/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell/dropout/Mul_1?
while/lstm_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/lstm_cell/dropout_1/Const?
while/lstm_cell/dropout_1/MulMul"while/lstm_cell/ones_like:output:0(while/lstm_cell/dropout_1/Const:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell/dropout_1/Mul?
while/lstm_cell/dropout_1/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
:2!
while/lstm_cell/dropout_1/Shape?
6while/lstm_cell/dropout_1/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_1/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2?˺28
6while/lstm_cell/dropout_1/random_uniform/RandomUniform?
(while/lstm_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2*
(while/lstm_cell/dropout_1/GreaterEqual/y?
&while/lstm_cell/dropout_1/GreaterEqualGreaterEqual?while/lstm_cell/dropout_1/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2(
&while/lstm_cell/dropout_1/GreaterEqual?
while/lstm_cell/dropout_1/CastCast*while/lstm_cell/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2 
while/lstm_cell/dropout_1/Cast?
while/lstm_cell/dropout_1/Mul_1Mul!while/lstm_cell/dropout_1/Mul:z:0"while/lstm_cell/dropout_1/Cast:y:0*
T0*'
_output_shapes
:????????? 2!
while/lstm_cell/dropout_1/Mul_1?
while/lstm_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/lstm_cell/dropout_2/Const?
while/lstm_cell/dropout_2/MulMul"while/lstm_cell/ones_like:output:0(while/lstm_cell/dropout_2/Const:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell/dropout_2/Mul?
while/lstm_cell/dropout_2/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
:2!
while/lstm_cell/dropout_2/Shape?
6while/lstm_cell/dropout_2/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_2/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed228
6while/lstm_cell/dropout_2/random_uniform/RandomUniform?
(while/lstm_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2*
(while/lstm_cell/dropout_2/GreaterEqual/y?
&while/lstm_cell/dropout_2/GreaterEqualGreaterEqual?while/lstm_cell/dropout_2/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2(
&while/lstm_cell/dropout_2/GreaterEqual?
while/lstm_cell/dropout_2/CastCast*while/lstm_cell/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2 
while/lstm_cell/dropout_2/Cast?
while/lstm_cell/dropout_2/Mul_1Mul!while/lstm_cell/dropout_2/Mul:z:0"while/lstm_cell/dropout_2/Cast:y:0*
T0*'
_output_shapes
:????????? 2!
while/lstm_cell/dropout_2/Mul_1?
while/lstm_cell/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/lstm_cell/dropout_3/Const?
while/lstm_cell/dropout_3/MulMul"while/lstm_cell/ones_like:output:0(while/lstm_cell/dropout_3/Const:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell/dropout_3/Mul?
while/lstm_cell/dropout_3/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
:2!
while/lstm_cell/dropout_3/Shape?
6while/lstm_cell/dropout_3/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_3/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???28
6while/lstm_cell/dropout_3/random_uniform/RandomUniform?
(while/lstm_cell/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2*
(while/lstm_cell/dropout_3/GreaterEqual/y?
&while/lstm_cell/dropout_3/GreaterEqualGreaterEqual?while/lstm_cell/dropout_3/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2(
&while/lstm_cell/dropout_3/GreaterEqual?
while/lstm_cell/dropout_3/CastCast*while/lstm_cell/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2 
while/lstm_cell/dropout_3/Cast?
while/lstm_cell/dropout_3/Mul_1Mul!while/lstm_cell/dropout_3/Mul:z:0"while/lstm_cell/dropout_3/Cast:y:0*
T0*'
_output_shapes
:????????? 2!
while/lstm_cell/dropout_3/Mul_1?
!while/lstm_cell/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2#
!while/lstm_cell/ones_like_1/Shape?
!while/lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!while/lstm_cell/ones_like_1/Const?
while/lstm_cell/ones_like_1Fill*while/lstm_cell/ones_like_1/Shape:output:0*while/lstm_cell/ones_like_1/Const:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/ones_like_1?
while/lstm_cell/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/lstm_cell/dropout_4/Const?
while/lstm_cell/dropout_4/MulMul$while/lstm_cell/ones_like_1:output:0(while/lstm_cell/dropout_4/Const:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/dropout_4/Mul?
while/lstm_cell/dropout_4/ShapeShape$while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
:2!
while/lstm_cell/dropout_4/Shape?
6while/lstm_cell/dropout_4/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_4/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2??28
6while/lstm_cell/dropout_4/random_uniform/RandomUniform?
(while/lstm_cell/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2*
(while/lstm_cell/dropout_4/GreaterEqual/y?
&while/lstm_cell/dropout_4/GreaterEqualGreaterEqual?while/lstm_cell/dropout_4/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2(
&while/lstm_cell/dropout_4/GreaterEqual?
while/lstm_cell/dropout_4/CastCast*while/lstm_cell/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2 
while/lstm_cell/dropout_4/Cast?
while/lstm_cell/dropout_4/Mul_1Mul!while/lstm_cell/dropout_4/Mul:z:0"while/lstm_cell/dropout_4/Cast:y:0*
T0*(
_output_shapes
:??????????2!
while/lstm_cell/dropout_4/Mul_1?
while/lstm_cell/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/lstm_cell/dropout_5/Const?
while/lstm_cell/dropout_5/MulMul$while/lstm_cell/ones_like_1:output:0(while/lstm_cell/dropout_5/Const:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/dropout_5/Mul?
while/lstm_cell/dropout_5/ShapeShape$while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
:2!
while/lstm_cell/dropout_5/Shape?
6while/lstm_cell/dropout_5/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_5/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???28
6while/lstm_cell/dropout_5/random_uniform/RandomUniform?
(while/lstm_cell/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2*
(while/lstm_cell/dropout_5/GreaterEqual/y?
&while/lstm_cell/dropout_5/GreaterEqualGreaterEqual?while/lstm_cell/dropout_5/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2(
&while/lstm_cell/dropout_5/GreaterEqual?
while/lstm_cell/dropout_5/CastCast*while/lstm_cell/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2 
while/lstm_cell/dropout_5/Cast?
while/lstm_cell/dropout_5/Mul_1Mul!while/lstm_cell/dropout_5/Mul:z:0"while/lstm_cell/dropout_5/Cast:y:0*
T0*(
_output_shapes
:??????????2!
while/lstm_cell/dropout_5/Mul_1?
while/lstm_cell/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/lstm_cell/dropout_6/Const?
while/lstm_cell/dropout_6/MulMul$while/lstm_cell/ones_like_1:output:0(while/lstm_cell/dropout_6/Const:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/dropout_6/Mul?
while/lstm_cell/dropout_6/ShapeShape$while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
:2!
while/lstm_cell/dropout_6/Shape?
6while/lstm_cell/dropout_6/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_6/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???28
6while/lstm_cell/dropout_6/random_uniform/RandomUniform?
(while/lstm_cell/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2*
(while/lstm_cell/dropout_6/GreaterEqual/y?
&while/lstm_cell/dropout_6/GreaterEqualGreaterEqual?while/lstm_cell/dropout_6/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2(
&while/lstm_cell/dropout_6/GreaterEqual?
while/lstm_cell/dropout_6/CastCast*while/lstm_cell/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2 
while/lstm_cell/dropout_6/Cast?
while/lstm_cell/dropout_6/Mul_1Mul!while/lstm_cell/dropout_6/Mul:z:0"while/lstm_cell/dropout_6/Cast:y:0*
T0*(
_output_shapes
:??????????2!
while/lstm_cell/dropout_6/Mul_1?
while/lstm_cell/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/lstm_cell/dropout_7/Const?
while/lstm_cell/dropout_7/MulMul$while/lstm_cell/ones_like_1:output:0(while/lstm_cell/dropout_7/Const:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/dropout_7/Mul?
while/lstm_cell/dropout_7/ShapeShape$while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
:2!
while/lstm_cell/dropout_7/Shape?
6while/lstm_cell/dropout_7/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_7/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2??L28
6while/lstm_cell/dropout_7/random_uniform/RandomUniform?
(while/lstm_cell/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2*
(while/lstm_cell/dropout_7/GreaterEqual/y?
&while/lstm_cell/dropout_7/GreaterEqualGreaterEqual?while/lstm_cell/dropout_7/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2(
&while/lstm_cell/dropout_7/GreaterEqual?
while/lstm_cell/dropout_7/CastCast*while/lstm_cell/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2 
while/lstm_cell/dropout_7/Cast?
while/lstm_cell/dropout_7/Mul_1Mul!while/lstm_cell/dropout_7/Mul:z:0"while/lstm_cell/dropout_7/Cast:y:0*
T0*(
_output_shapes
:??????????2!
while/lstm_cell/dropout_7/Mul_1?
while/lstm_cell/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell/dropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell/mul?
while/lstm_cell/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0#while/lstm_cell/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell/mul_1?
while/lstm_cell/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0#while/lstm_cell/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell/mul_2?
while/lstm_cell/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0#while/lstm_cell/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell/mul_3?
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2!
while/lstm_cell/split/split_dim?
$while/lstm_cell/split/ReadVariableOpReadVariableOp/while_lstm_cell_split_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02&
$while/lstm_cell/split/ReadVariableOp?
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0,while/lstm_cell/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	 ?:	 ?:	 ?:	 ?*
	num_split2
while/lstm_cell/split?
while/lstm_cell/MatMulMatMulwhile/lstm_cell/mul:z:0while/lstm_cell/split:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/MatMul?
while/lstm_cell/MatMul_1MatMulwhile/lstm_cell/mul_1:z:0while/lstm_cell/split:output:1*
T0*(
_output_shapes
:??????????2
while/lstm_cell/MatMul_1?
while/lstm_cell/MatMul_2MatMulwhile/lstm_cell/mul_2:z:0while/lstm_cell/split:output:2*
T0*(
_output_shapes
:??????????2
while/lstm_cell/MatMul_2?
while/lstm_cell/MatMul_3MatMulwhile/lstm_cell/mul_3:z:0while/lstm_cell/split:output:3*
T0*(
_output_shapes
:??????????2
while/lstm_cell/MatMul_3?
!while/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2#
!while/lstm_cell/split_1/split_dim?
&while/lstm_cell/split_1/ReadVariableOpReadVariableOp1while_lstm_cell_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype02(
&while/lstm_cell/split_1/ReadVariableOp?
while/lstm_cell/split_1Split*while/lstm_cell/split_1/split_dim:output:0.while/lstm_cell/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:?:?:?:?*
	num_split2
while/lstm_cell/split_1?
while/lstm_cell/BiasAddBiasAdd while/lstm_cell/MatMul:product:0 while/lstm_cell/split_1:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/BiasAdd?
while/lstm_cell/BiasAdd_1BiasAdd"while/lstm_cell/MatMul_1:product:0 while/lstm_cell/split_1:output:1*
T0*(
_output_shapes
:??????????2
while/lstm_cell/BiasAdd_1?
while/lstm_cell/BiasAdd_2BiasAdd"while/lstm_cell/MatMul_2:product:0 while/lstm_cell/split_1:output:2*
T0*(
_output_shapes
:??????????2
while/lstm_cell/BiasAdd_2?
while/lstm_cell/BiasAdd_3BiasAdd"while/lstm_cell/MatMul_3:product:0 while/lstm_cell/split_1:output:3*
T0*(
_output_shapes
:??????????2
while/lstm_cell/BiasAdd_3?
while/lstm_cell/mul_4Mulwhile_placeholder_2#while/lstm_cell/dropout_4/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul_4?
while/lstm_cell/mul_5Mulwhile_placeholder_2#while/lstm_cell/dropout_5/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul_5?
while/lstm_cell/mul_6Mulwhile_placeholder_2#while/lstm_cell/dropout_6/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul_6?
while/lstm_cell/mul_7Mulwhile_placeholder_2#while/lstm_cell/dropout_7/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul_7?
while/lstm_cell/ReadVariableOpReadVariableOp)while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02 
while/lstm_cell/ReadVariableOp?
#while/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2%
#while/lstm_cell/strided_slice/stack?
%while/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2'
%while/lstm_cell/strided_slice/stack_1?
%while/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2'
%while/lstm_cell/strided_slice/stack_2?
while/lstm_cell/strided_sliceStridedSlice&while/lstm_cell/ReadVariableOp:value:0,while/lstm_cell/strided_slice/stack:output:0.while/lstm_cell/strided_slice/stack_1:output:0.while/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
while/lstm_cell/strided_slice?
while/lstm_cell/MatMul_4MatMulwhile/lstm_cell/mul_4:z:0&while/lstm_cell/strided_slice:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/MatMul_4?
while/lstm_cell/addAddV2 while/lstm_cell/BiasAdd:output:0"while/lstm_cell/MatMul_4:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/add?
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/add:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/Sigmoid?
 while/lstm_cell/ReadVariableOp_1ReadVariableOp)while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02"
 while/lstm_cell/ReadVariableOp_1?
%while/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2'
%while/lstm_cell/strided_slice_1/stack?
'while/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2)
'while/lstm_cell/strided_slice_1/stack_1?
'while/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell/strided_slice_1/stack_2?
while/lstm_cell/strided_slice_1StridedSlice(while/lstm_cell/ReadVariableOp_1:value:0.while/lstm_cell/strided_slice_1/stack:output:00while/lstm_cell/strided_slice_1/stack_1:output:00while/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2!
while/lstm_cell/strided_slice_1?
while/lstm_cell/MatMul_5MatMulwhile/lstm_cell/mul_5:z:0(while/lstm_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/MatMul_5?
while/lstm_cell/add_1AddV2"while/lstm_cell/BiasAdd_1:output:0"while/lstm_cell/MatMul_5:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/add_1?
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/Sigmoid_1?
while/lstm_cell/mul_8Mulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul_8?
 while/lstm_cell/ReadVariableOp_2ReadVariableOp)while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02"
 while/lstm_cell/ReadVariableOp_2?
%while/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2'
%while/lstm_cell/strided_slice_2/stack?
'while/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?  2)
'while/lstm_cell/strided_slice_2/stack_1?
'while/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell/strided_slice_2/stack_2?
while/lstm_cell/strided_slice_2StridedSlice(while/lstm_cell/ReadVariableOp_2:value:0.while/lstm_cell/strided_slice_2/stack:output:00while/lstm_cell/strided_slice_2/stack_1:output:00while/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2!
while/lstm_cell/strided_slice_2?
while/lstm_cell/MatMul_6MatMulwhile/lstm_cell/mul_6:z:0(while/lstm_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/MatMul_6?
while/lstm_cell/add_2AddV2"while/lstm_cell/BiasAdd_2:output:0"while/lstm_cell/MatMul_6:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/add_2?
while/lstm_cell/TanhTanhwhile/lstm_cell/add_2:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/Tanh?
while/lstm_cell/mul_9Mulwhile/lstm_cell/Sigmoid:y:0while/lstm_cell/Tanh:y:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul_9?
while/lstm_cell/add_3AddV2while/lstm_cell/mul_8:z:0while/lstm_cell/mul_9:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/add_3?
 while/lstm_cell/ReadVariableOp_3ReadVariableOp)while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02"
 while/lstm_cell/ReadVariableOp_3?
%while/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?  2'
%while/lstm_cell/strided_slice_3/stack?
'while/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2)
'while/lstm_cell/strided_slice_3/stack_1?
'while/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell/strided_slice_3/stack_2?
while/lstm_cell/strided_slice_3StridedSlice(while/lstm_cell/ReadVariableOp_3:value:0.while/lstm_cell/strided_slice_3/stack:output:00while/lstm_cell/strided_slice_3/stack_1:output:00while/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2!
while/lstm_cell/strided_slice_3?
while/lstm_cell/MatMul_7MatMulwhile/lstm_cell/mul_7:z:0(while/lstm_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/MatMul_7?
while/lstm_cell/add_4AddV2"while/lstm_cell/BiasAdd_3:output:0"while/lstm_cell/MatMul_7:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/add_4?
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/add_4:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/Sigmoid_2?
while/lstm_cell/Tanh_1Tanhwhile/lstm_cell/add_3:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/Tanh_1?
while/lstm_cell/mul_10Mulwhile/lstm_cell/Sigmoid_2:y:0while/lstm_cell/Tanh_1:y:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul_10?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_10:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell/mul_10:z:0^while/NoOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell/add_3:z:0^while/NoOp*
T0*(
_output_shapes
:??????????2
while/Identity_5?

while/NoOpNoOp^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"T
'while_lstm_cell_readvariableop_resource)while_lstm_cell_readvariableop_resource_0"d
/while_lstm_cell_split_1_readvariableop_resource1while_lstm_cell_split_1_readvariableop_resource_0"`
-while_lstm_cell_split_readvariableop_resource/while_lstm_cell_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2@
while/lstm_cell/ReadVariableOpwhile/lstm_cell/ReadVariableOp2D
 while/lstm_cell/ReadVariableOp_1 while/lstm_cell/ReadVariableOp_12D
 while/lstm_cell/ReadVariableOp_2 while/lstm_cell/ReadVariableOp_22D
 while/lstm_cell/ReadVariableOp_3 while/lstm_cell/ReadVariableOp_32L
$while/lstm_cell/split/ReadVariableOp$while/lstm_cell/split/ReadVariableOp2P
&while/lstm_cell/split_1/ReadVariableOp&while/lstm_cell/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
ل
?	
while_body_17581
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0B
/while_lstm_cell_split_readvariableop_resource_0:	 ?@
1while_lstm_cell_split_1_readvariableop_resource_0:	?=
)while_lstm_cell_readvariableop_resource_0:
??
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor@
-while_lstm_cell_split_readvariableop_resource:	 ?>
/while_lstm_cell_split_1_readvariableop_resource:	?;
'while_lstm_cell_readvariableop_resource:
????while/lstm_cell/ReadVariableOp? while/lstm_cell/ReadVariableOp_1? while/lstm_cell/ReadVariableOp_2? while/lstm_cell/ReadVariableOp_3?$while/lstm_cell/split/ReadVariableOp?&while/lstm_cell/split_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:????????? *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
while/lstm_cell/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2!
while/lstm_cell/ones_like/Shape?
while/lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/lstm_cell/ones_like/Const?
while/lstm_cell/ones_likeFill(while/lstm_cell/ones_like/Shape:output:0(while/lstm_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell/ones_like?
!while/lstm_cell/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2#
!while/lstm_cell/ones_like_1/Shape?
!while/lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!while/lstm_cell/ones_like_1/Const?
while/lstm_cell/ones_like_1Fill*while/lstm_cell/ones_like_1/Shape:output:0*while/lstm_cell/ones_like_1/Const:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/ones_like_1?
while/lstm_cell/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell/mul?
while/lstm_cell/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell/mul_1?
while/lstm_cell/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell/mul_2?
while/lstm_cell/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell/mul_3?
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2!
while/lstm_cell/split/split_dim?
$while/lstm_cell/split/ReadVariableOpReadVariableOp/while_lstm_cell_split_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02&
$while/lstm_cell/split/ReadVariableOp?
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0,while/lstm_cell/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	 ?:	 ?:	 ?:	 ?*
	num_split2
while/lstm_cell/split?
while/lstm_cell/MatMulMatMulwhile/lstm_cell/mul:z:0while/lstm_cell/split:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/MatMul?
while/lstm_cell/MatMul_1MatMulwhile/lstm_cell/mul_1:z:0while/lstm_cell/split:output:1*
T0*(
_output_shapes
:??????????2
while/lstm_cell/MatMul_1?
while/lstm_cell/MatMul_2MatMulwhile/lstm_cell/mul_2:z:0while/lstm_cell/split:output:2*
T0*(
_output_shapes
:??????????2
while/lstm_cell/MatMul_2?
while/lstm_cell/MatMul_3MatMulwhile/lstm_cell/mul_3:z:0while/lstm_cell/split:output:3*
T0*(
_output_shapes
:??????????2
while/lstm_cell/MatMul_3?
!while/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2#
!while/lstm_cell/split_1/split_dim?
&while/lstm_cell/split_1/ReadVariableOpReadVariableOp1while_lstm_cell_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype02(
&while/lstm_cell/split_1/ReadVariableOp?
while/lstm_cell/split_1Split*while/lstm_cell/split_1/split_dim:output:0.while/lstm_cell/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:?:?:?:?*
	num_split2
while/lstm_cell/split_1?
while/lstm_cell/BiasAddBiasAdd while/lstm_cell/MatMul:product:0 while/lstm_cell/split_1:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/BiasAdd?
while/lstm_cell/BiasAdd_1BiasAdd"while/lstm_cell/MatMul_1:product:0 while/lstm_cell/split_1:output:1*
T0*(
_output_shapes
:??????????2
while/lstm_cell/BiasAdd_1?
while/lstm_cell/BiasAdd_2BiasAdd"while/lstm_cell/MatMul_2:product:0 while/lstm_cell/split_1:output:2*
T0*(
_output_shapes
:??????????2
while/lstm_cell/BiasAdd_2?
while/lstm_cell/BiasAdd_3BiasAdd"while/lstm_cell/MatMul_3:product:0 while/lstm_cell/split_1:output:3*
T0*(
_output_shapes
:??????????2
while/lstm_cell/BiasAdd_3?
while/lstm_cell/mul_4Mulwhile_placeholder_2$while/lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul_4?
while/lstm_cell/mul_5Mulwhile_placeholder_2$while/lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul_5?
while/lstm_cell/mul_6Mulwhile_placeholder_2$while/lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul_6?
while/lstm_cell/mul_7Mulwhile_placeholder_2$while/lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul_7?
while/lstm_cell/ReadVariableOpReadVariableOp)while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02 
while/lstm_cell/ReadVariableOp?
#while/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2%
#while/lstm_cell/strided_slice/stack?
%while/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2'
%while/lstm_cell/strided_slice/stack_1?
%while/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2'
%while/lstm_cell/strided_slice/stack_2?
while/lstm_cell/strided_sliceStridedSlice&while/lstm_cell/ReadVariableOp:value:0,while/lstm_cell/strided_slice/stack:output:0.while/lstm_cell/strided_slice/stack_1:output:0.while/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
while/lstm_cell/strided_slice?
while/lstm_cell/MatMul_4MatMulwhile/lstm_cell/mul_4:z:0&while/lstm_cell/strided_slice:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/MatMul_4?
while/lstm_cell/addAddV2 while/lstm_cell/BiasAdd:output:0"while/lstm_cell/MatMul_4:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/add?
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/add:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/Sigmoid?
 while/lstm_cell/ReadVariableOp_1ReadVariableOp)while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02"
 while/lstm_cell/ReadVariableOp_1?
%while/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2'
%while/lstm_cell/strided_slice_1/stack?
'while/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2)
'while/lstm_cell/strided_slice_1/stack_1?
'while/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell/strided_slice_1/stack_2?
while/lstm_cell/strided_slice_1StridedSlice(while/lstm_cell/ReadVariableOp_1:value:0.while/lstm_cell/strided_slice_1/stack:output:00while/lstm_cell/strided_slice_1/stack_1:output:00while/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2!
while/lstm_cell/strided_slice_1?
while/lstm_cell/MatMul_5MatMulwhile/lstm_cell/mul_5:z:0(while/lstm_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/MatMul_5?
while/lstm_cell/add_1AddV2"while/lstm_cell/BiasAdd_1:output:0"while/lstm_cell/MatMul_5:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/add_1?
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/Sigmoid_1?
while/lstm_cell/mul_8Mulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul_8?
 while/lstm_cell/ReadVariableOp_2ReadVariableOp)while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02"
 while/lstm_cell/ReadVariableOp_2?
%while/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2'
%while/lstm_cell/strided_slice_2/stack?
'while/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?  2)
'while/lstm_cell/strided_slice_2/stack_1?
'while/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell/strided_slice_2/stack_2?
while/lstm_cell/strided_slice_2StridedSlice(while/lstm_cell/ReadVariableOp_2:value:0.while/lstm_cell/strided_slice_2/stack:output:00while/lstm_cell/strided_slice_2/stack_1:output:00while/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2!
while/lstm_cell/strided_slice_2?
while/lstm_cell/MatMul_6MatMulwhile/lstm_cell/mul_6:z:0(while/lstm_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/MatMul_6?
while/lstm_cell/add_2AddV2"while/lstm_cell/BiasAdd_2:output:0"while/lstm_cell/MatMul_6:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/add_2?
while/lstm_cell/TanhTanhwhile/lstm_cell/add_2:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/Tanh?
while/lstm_cell/mul_9Mulwhile/lstm_cell/Sigmoid:y:0while/lstm_cell/Tanh:y:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul_9?
while/lstm_cell/add_3AddV2while/lstm_cell/mul_8:z:0while/lstm_cell/mul_9:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/add_3?
 while/lstm_cell/ReadVariableOp_3ReadVariableOp)while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02"
 while/lstm_cell/ReadVariableOp_3?
%while/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?  2'
%while/lstm_cell/strided_slice_3/stack?
'while/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2)
'while/lstm_cell/strided_slice_3/stack_1?
'while/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell/strided_slice_3/stack_2?
while/lstm_cell/strided_slice_3StridedSlice(while/lstm_cell/ReadVariableOp_3:value:0.while/lstm_cell/strided_slice_3/stack:output:00while/lstm_cell/strided_slice_3/stack_1:output:00while/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2!
while/lstm_cell/strided_slice_3?
while/lstm_cell/MatMul_7MatMulwhile/lstm_cell/mul_7:z:0(while/lstm_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/MatMul_7?
while/lstm_cell/add_4AddV2"while/lstm_cell/BiasAdd_3:output:0"while/lstm_cell/MatMul_7:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/add_4?
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/add_4:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/Sigmoid_2?
while/lstm_cell/Tanh_1Tanhwhile/lstm_cell/add_3:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/Tanh_1?
while/lstm_cell/mul_10Mulwhile/lstm_cell/Sigmoid_2:y:0while/lstm_cell/Tanh_1:y:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul_10?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_10:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell/mul_10:z:0^while/NoOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell/add_3:z:0^while/NoOp*
T0*(
_output_shapes
:??????????2
while/Identity_5?

while/NoOpNoOp^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"T
'while_lstm_cell_readvariableop_resource)while_lstm_cell_readvariableop_resource_0"d
/while_lstm_cell_split_1_readvariableop_resource1while_lstm_cell_split_1_readvariableop_resource_0"`
-while_lstm_cell_split_readvariableop_resource/while_lstm_cell_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2@
while/lstm_cell/ReadVariableOpwhile/lstm_cell/ReadVariableOp2D
 while/lstm_cell/ReadVariableOp_1 while/lstm_cell/ReadVariableOp_12D
 while/lstm_cell/ReadVariableOp_2 while/lstm_cell/ReadVariableOp_22D
 while/lstm_cell/ReadVariableOp_3 while/lstm_cell/ReadVariableOp_32L
$while/lstm_cell/split/ReadVariableOp$while/lstm_cell/split/ReadVariableOp2P
&while/lstm_cell/split_1/ReadVariableOp&while/lstm_cell/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
,
__inference__destroyer_18409
identityP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
ConstQ
IdentityIdentityConst:output:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?c
?
__inference__traced_save_18627
file_prefix3
/savev2_embedding_embeddings_read_readvariableop,
(savev2_conv1d_kernel_read_readvariableop*
&savev2_conv1d_bias_read_readvariableop-
)savev2_dense_2_kernel_read_readvariableop+
'savev2_dense_2_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop4
0savev2_lstm_lstm_cell_kernel_read_readvariableop>
:savev2_lstm_lstm_cell_recurrent_kernel_read_readvariableop2
.savev2_lstm_lstm_cell_bias_read_readvariableopJ
Fsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2L
Hsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2_1	$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop*
&savev2_accumulator_read_readvariableop,
(savev2_accumulator_1_read_readvariableop,
(savev2_accumulator_2_read_readvariableop,
(savev2_accumulator_3_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop-
)savev2_true_positives_read_readvariableop.
*savev2_false_positives_read_readvariableop/
+savev2_true_positives_1_read_readvariableop.
*savev2_false_negatives_read_readvariableop/
+savev2_true_positives_2_read_readvariableop-
)savev2_true_negatives_read_readvariableop0
,savev2_false_positives_1_read_readvariableop0
,savev2_false_negatives_1_read_readvariableop&
"savev2_total_2_read_readvariableop&
"savev2_count_2_read_readvariableop:
6savev2_adam_embedding_embeddings_m_read_readvariableop3
/savev2_adam_conv1d_kernel_m_read_readvariableop1
-savev2_adam_conv1d_bias_m_read_readvariableop4
0savev2_adam_dense_2_kernel_m_read_readvariableop2
.savev2_adam_dense_2_bias_m_read_readvariableop;
7savev2_adam_lstm_lstm_cell_kernel_m_read_readvariableopE
Asavev2_adam_lstm_lstm_cell_recurrent_kernel_m_read_readvariableop9
5savev2_adam_lstm_lstm_cell_bias_m_read_readvariableop:
6savev2_adam_embedding_embeddings_v_read_readvariableop3
/savev2_adam_conv1d_kernel_v_read_readvariableop1
-savev2_adam_conv1d_bias_v_read_readvariableop4
0savev2_adam_dense_2_kernel_v_read_readvariableop2
.savev2_adam_dense_2_bias_v_read_readvariableop;
7savev2_adam_lstm_lstm_cell_kernel_v_read_readvariableopE
Asavev2_adam_lstm_lstm_cell_recurrent_kernel_v_read_readvariableop9
5savev2_adam_lstm_lstm_cell_bias_v_read_readvariableop
savev2_const_6

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:2*
dtype0*?
value?B?2B:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEBLlayer_with_weights-0/_index_lookup_layer/token_counts/.ATTRIBUTES/table-keysBNlayer_with_weights-0/_index_lookup_layer/token_counts/.ATTRIBUTES/table-valuesB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB:keras_api/metrics/1/accumulator/.ATTRIBUTES/VARIABLE_VALUEB:keras_api/metrics/2/accumulator/.ATTRIBUTES/VARIABLE_VALUEB:keras_api/metrics/3/accumulator/.ATTRIBUTES/VARIABLE_VALUEB:keras_api/metrics/4/accumulator/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/5/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/5/count/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/6/true_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/6/false_positives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/7/true_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/7/false_negatives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/8/true_positives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/8/true_negatives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/8/false_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/8/false_negatives/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/9/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/9/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:2*
dtype0*w
valuenBl2B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0/savev2_embedding_embeddings_read_readvariableop(savev2_conv1d_kernel_read_readvariableop&savev2_conv1d_bias_read_readvariableop)savev2_dense_2_kernel_read_readvariableop'savev2_dense_2_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop0savev2_lstm_lstm_cell_kernel_read_readvariableop:savev2_lstm_lstm_cell_recurrent_kernel_read_readvariableop.savev2_lstm_lstm_cell_bias_read_readvariableopFsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2Hsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2_1 savev2_total_read_readvariableop savev2_count_read_readvariableop&savev2_accumulator_read_readvariableop(savev2_accumulator_1_read_readvariableop(savev2_accumulator_2_read_readvariableop(savev2_accumulator_3_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop)savev2_true_positives_read_readvariableop*savev2_false_positives_read_readvariableop+savev2_true_positives_1_read_readvariableop*savev2_false_negatives_read_readvariableop+savev2_true_positives_2_read_readvariableop)savev2_true_negatives_read_readvariableop,savev2_false_positives_1_read_readvariableop,savev2_false_negatives_1_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableop6savev2_adam_embedding_embeddings_m_read_readvariableop/savev2_adam_conv1d_kernel_m_read_readvariableop-savev2_adam_conv1d_bias_m_read_readvariableop0savev2_adam_dense_2_kernel_m_read_readvariableop.savev2_adam_dense_2_bias_m_read_readvariableop7savev2_adam_lstm_lstm_cell_kernel_m_read_readvariableopAsavev2_adam_lstm_lstm_cell_recurrent_kernel_m_read_readvariableop5savev2_adam_lstm_lstm_cell_bias_m_read_readvariableop6savev2_adam_embedding_embeddings_v_read_readvariableop/savev2_adam_conv1d_kernel_v_read_readvariableop-savev2_adam_conv1d_bias_v_read_readvariableop0savev2_adam_dense_2_kernel_v_read_readvariableop.savev2_adam_dense_2_bias_v_read_readvariableop7savev2_adam_lstm_lstm_cell_kernel_v_read_readvariableopAsavev2_adam_lstm_lstm_cell_recurrent_kernel_v_read_readvariableop5savev2_adam_lstm_lstm_cell_bias_v_read_readvariableopsavev2_const_6"/device:CPU:0*
_output_shapes
 *@
dtypes6
422		2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1c
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*?
_input_shapes?
?: :
??:? : :	?:: : : : : :	 ?:
??:?::: : ::::: : :::::?:?:?:?: : :
??:? : :	?::	 ?:
??:?:
??:? : :	?::	 ?:
??:?: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
??:)%
#
_output_shapes
:? : 

_output_shapes
: :%!

_output_shapes
:	?: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :%!

_output_shapes
:	 ?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:

_output_shapes
::

_output_shapes
::

_output_shapes
: :

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?: 

_output_shapes
: :!

_output_shapes
: :&""
 
_output_shapes
:
??:)#%
#
_output_shapes
:? : $

_output_shapes
: :%%!

_output_shapes
:	?: &

_output_shapes
::%'!

_output_shapes
:	 ?:&("
 
_output_shapes
:
??:!)

_output_shapes	
:?:&*"
 
_output_shapes
:
??:)+%
#
_output_shapes
:? : ,

_output_shapes
: :%-!

_output_shapes
:	?: .

_output_shapes
::%/!

_output_shapes
:	 ?:&0"
 
_output_shapes
:
??:!1

_output_shapes	
:?:2

_output_shapes
: 
??
?
 __inference__wrapped_model_13834
input_1Z
Vmodel_lstm_text_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handle[
Wmodel_lstm_text_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value	7
3model_lstm_text_vectorization_string_lookup_equal_y:
6model_lstm_text_vectorization_string_lookup_selectv2_t	?
+model_lstm_embedding_embedding_lookup_13558:
??T
=model_lstm_conv1d_conv1d_expanddims_1_readvariableop_resource:? ?
1model_lstm_conv1d_biasadd_readvariableop_resource: J
7model_lstm_lstm_lstm_cell_split_readvariableop_resource:	 ?H
9model_lstm_lstm_lstm_cell_split_1_readvariableop_resource:	?E
1model_lstm_lstm_lstm_cell_readvariableop_resource:
??D
1model_lstm_dense_2_matmul_readvariableop_resource:	?@
2model_lstm_dense_2_biasadd_readvariableop_resource:
identity??(model_LSTM/conv1d/BiasAdd/ReadVariableOp?4model_LSTM/conv1d/conv1d/ExpandDims_1/ReadVariableOp?)model_LSTM/dense_2/BiasAdd/ReadVariableOp?(model_LSTM/dense_2/MatMul/ReadVariableOp?%model_LSTM/embedding/embedding_lookup?(model_LSTM/lstm/lstm_cell/ReadVariableOp?*model_LSTM/lstm/lstm_cell/ReadVariableOp_1?*model_LSTM/lstm/lstm_cell/ReadVariableOp_2?*model_LSTM/lstm/lstm_cell/ReadVariableOp_3?.model_LSTM/lstm/lstm_cell/split/ReadVariableOp?0model_LSTM/lstm/lstm_cell/split_1/ReadVariableOp?model_LSTM/lstm/while?Imodel_LSTM/text_vectorization/string_lookup/None_Lookup/LookupTableFindV2?
)model_LSTM/text_vectorization/StringLowerStringLowerinput_1*'
_output_shapes
:?????????2+
)model_LSTM/text_vectorization/StringLower?
0model_LSTM/text_vectorization/StaticRegexReplaceStaticRegexReplace2model_LSTM/text_vectorization/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite 22
0model_LSTM/text_vectorization/StaticRegexReplace?
%model_LSTM/text_vectorization/SqueezeSqueeze9model_LSTM/text_vectorization/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????2'
%model_LSTM/text_vectorization/Squeeze?
/model_LSTM/text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B 21
/model_LSTM/text_vectorization/StringSplit/Const?
7model_LSTM/text_vectorization/StringSplit/StringSplitV2StringSplitV2.model_LSTM/text_vectorization/Squeeze:output:08model_LSTM/text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:29
7model_LSTM/text_vectorization/StringSplit/StringSplitV2?
=model_LSTM/text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2?
=model_LSTM/text_vectorization/StringSplit/strided_slice/stack?
?model_LSTM/text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2A
?model_LSTM/text_vectorization/StringSplit/strided_slice/stack_1?
?model_LSTM/text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2A
?model_LSTM/text_vectorization/StringSplit/strided_slice/stack_2?
7model_LSTM/text_vectorization/StringSplit/strided_sliceStridedSliceAmodel_LSTM/text_vectorization/StringSplit/StringSplitV2:indices:0Fmodel_LSTM/text_vectorization/StringSplit/strided_slice/stack:output:0Hmodel_LSTM/text_vectorization/StringSplit/strided_slice/stack_1:output:0Hmodel_LSTM/text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask29
7model_LSTM/text_vectorization/StringSplit/strided_slice?
?model_LSTM/text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2A
?model_LSTM/text_vectorization/StringSplit/strided_slice_1/stack?
Amodel_LSTM/text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2C
Amodel_LSTM/text_vectorization/StringSplit/strided_slice_1/stack_1?
Amodel_LSTM/text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2C
Amodel_LSTM/text_vectorization/StringSplit/strided_slice_1/stack_2?
9model_LSTM/text_vectorization/StringSplit/strided_slice_1StridedSlice?model_LSTM/text_vectorization/StringSplit/StringSplitV2:shape:0Hmodel_LSTM/text_vectorization/StringSplit/strided_slice_1/stack:output:0Jmodel_LSTM/text_vectorization/StringSplit/strided_slice_1/stack_1:output:0Jmodel_LSTM/text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask2;
9model_LSTM/text_vectorization/StringSplit/strided_slice_1?
`model_LSTM/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast@model_LSTM/text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:?????????2b
`model_LSTM/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast?
bmodel_LSTM/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1CastBmodel_LSTM/text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2d
bmodel_LSTM/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1?
jmodel_LSTM/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapedmodel_LSTM/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:2l
jmodel_LSTM/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape?
jmodel_LSTM/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2l
jmodel_LSTM/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const?
imodel_LSTM/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdsmodel_LSTM/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0smodel_LSTM/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: 2k
imodel_LSTM/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod?
nmodel_LSTM/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : 2p
nmodel_LSTM/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y?
lmodel_LSTM/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreaterrmodel_LSTM/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0wmodel_LSTM/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: 2n
lmodel_LSTM/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater?
imodel_LSTM/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastpmodel_LSTM/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: 2k
imodel_LSTM/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast?
lmodel_LSTM/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2n
lmodel_LSTM/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1?
hmodel_LSTM/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxdmodel_LSTM/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0umodel_LSTM/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: 2j
hmodel_LSTM/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max?
jmodel_LSTM/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :2l
jmodel_LSTM/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y?
hmodel_LSTM/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2qmodel_LSTM/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0smodel_LSTM/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: 2j
hmodel_LSTM/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add?
hmodel_LSTM/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulmmodel_LSTM/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0lmodel_LSTM/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: 2j
hmodel_LSTM/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul?
lmodel_LSTM/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximumfmodel_LSTM/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0lmodel_LSTM/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: 2n
lmodel_LSTM/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum?
lmodel_LSTM/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimumfmodel_LSTM/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0pmodel_LSTM/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: 2n
lmodel_LSTM/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum?
lmodel_LSTM/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 2n
lmodel_LSTM/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2?
mmodel_LSTM/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountdmodel_LSTM/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0pmodel_LSTM/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0umodel_LSTM/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:?????????2o
mmodel_LSTM/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount?
gmodel_LSTM/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : 2i
gmodel_LSTM/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis?
bmodel_LSTM/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumtmodel_LSTM/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0pmodel_LSTM/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:?????????2d
bmodel_LSTM/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum?
kmodel_LSTM/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R 2m
kmodel_LSTM/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0?
gmodel_LSTM/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2i
gmodel_LSTM/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis?
bmodel_LSTM/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2tmodel_LSTM/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0hmodel_LSTM/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0pmodel_LSTM/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:?????????2d
bmodel_LSTM/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat?
Imodel_LSTM/text_vectorization/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2Vmodel_lstm_text_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handle@model_LSTM/text_vectorization/StringSplit/StringSplitV2:values:0Wmodel_lstm_text_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????2K
Imodel_LSTM/text_vectorization/string_lookup/None_Lookup/LookupTableFindV2?
1model_LSTM/text_vectorization/string_lookup/EqualEqual@model_LSTM/text_vectorization/StringSplit/StringSplitV2:values:03model_lstm_text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:?????????23
1model_LSTM/text_vectorization/string_lookup/Equal?
4model_LSTM/text_vectorization/string_lookup/SelectV2SelectV25model_LSTM/text_vectorization/string_lookup/Equal:z:06model_lstm_text_vectorization_string_lookup_selectv2_tRmodel_LSTM/text_vectorization/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:?????????26
4model_LSTM/text_vectorization/string_lookup/SelectV2?
4model_LSTM/text_vectorization/string_lookup/IdentityIdentity=model_LSTM/text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:?????????26
4model_LSTM/text_vectorization/string_lookup/Identity?
:model_LSTM/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 2<
:model_LSTM/text_vectorization/RaggedToTensor/default_value?
2model_LSTM/text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"????????!       24
2model_LSTM/text_vectorization/RaggedToTensor/Const?
Amodel_LSTM/text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor;model_LSTM/text_vectorization/RaggedToTensor/Const:output:0=model_LSTM/text_vectorization/string_lookup/Identity:output:0Cmodel_LSTM/text_vectorization/RaggedToTensor/default_value:output:0kmodel_LSTM/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:?????????!*
num_row_partition_tensors*%
row_partition_types

ROW_SPLITS2C
Amodel_LSTM/text_vectorization/RaggedToTensor/RaggedTensorToTensor?
%model_LSTM/embedding/embedding_lookupResourceGather+model_lstm_embedding_embedding_lookup_13558Jmodel_LSTM/text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0",/job:localhost/replica:0/task:0/device:GPU:0*
Tindices0	*>
_class4
20loc:@model_LSTM/embedding/embedding_lookup/13558*,
_output_shapes
:?????????!?*
dtype02'
%model_LSTM/embedding/embedding_lookup?
.model_LSTM/embedding/embedding_lookup/IdentityIdentity.model_LSTM/embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*>
_class4
20loc:@model_LSTM/embedding/embedding_lookup/13558*,
_output_shapes
:?????????!?20
.model_LSTM/embedding/embedding_lookup/Identity?
0model_LSTM/embedding/embedding_lookup/Identity_1Identity7model_LSTM/embedding/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:?????????!?22
0model_LSTM/embedding/embedding_lookup/Identity_1?
'model_LSTM/conv1d/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2)
'model_LSTM/conv1d/conv1d/ExpandDims/dim?
#model_LSTM/conv1d/conv1d/ExpandDims
ExpandDims9model_LSTM/embedding/embedding_lookup/Identity_1:output:00model_LSTM/conv1d/conv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:?????????!?2%
#model_LSTM/conv1d/conv1d/ExpandDims?
4model_LSTM/conv1d/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp=model_lstm_conv1d_conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:? *
dtype026
4model_LSTM/conv1d/conv1d/ExpandDims_1/ReadVariableOp?
)model_LSTM/conv1d/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2+
)model_LSTM/conv1d/conv1d/ExpandDims_1/dim?
%model_LSTM/conv1d/conv1d/ExpandDims_1
ExpandDims<model_LSTM/conv1d/conv1d/ExpandDims_1/ReadVariableOp:value:02model_LSTM/conv1d/conv1d/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:? 2'
%model_LSTM/conv1d/conv1d/ExpandDims_1?
model_LSTM/conv1d/conv1dConv2D,model_LSTM/conv1d/conv1d/ExpandDims:output:0.model_LSTM/conv1d/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:?????????! *
paddingSAME*
strides
2
model_LSTM/conv1d/conv1d?
 model_LSTM/conv1d/conv1d/SqueezeSqueeze!model_LSTM/conv1d/conv1d:output:0*
T0*+
_output_shapes
:?????????! *
squeeze_dims

?????????2"
 model_LSTM/conv1d/conv1d/Squeeze?
(model_LSTM/conv1d/BiasAdd/ReadVariableOpReadVariableOp1model_lstm_conv1d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02*
(model_LSTM/conv1d/BiasAdd/ReadVariableOp?
model_LSTM/conv1d/BiasAddBiasAdd)model_LSTM/conv1d/conv1d/Squeeze:output:00model_LSTM/conv1d/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????! 2
model_LSTM/conv1d/BiasAdd?
model_LSTM/conv1d/ReluRelu"model_LSTM/conv1d/BiasAdd:output:0*
T0*+
_output_shapes
:?????????! 2
model_LSTM/conv1d/Relu?
'model_LSTM/max_pooling1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2)
'model_LSTM/max_pooling1d/ExpandDims/dim?
#model_LSTM/max_pooling1d/ExpandDims
ExpandDims$model_LSTM/conv1d/Relu:activations:00model_LSTM/max_pooling1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????! 2%
#model_LSTM/max_pooling1d/ExpandDims?
 model_LSTM/max_pooling1d/MaxPoolMaxPool,model_LSTM/max_pooling1d/ExpandDims:output:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2"
 model_LSTM/max_pooling1d/MaxPool?
 model_LSTM/max_pooling1d/SqueezeSqueeze)model_LSTM/max_pooling1d/MaxPool:output:0*
T0*+
_output_shapes
:????????? *
squeeze_dims
2"
 model_LSTM/max_pooling1d/Squeeze?
model_LSTM/lstm/ShapeShape)model_LSTM/max_pooling1d/Squeeze:output:0*
T0*
_output_shapes
:2
model_LSTM/lstm/Shape?
#model_LSTM/lstm/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#model_LSTM/lstm/strided_slice/stack?
%model_LSTM/lstm/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%model_LSTM/lstm/strided_slice/stack_1?
%model_LSTM/lstm/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%model_LSTM/lstm/strided_slice/stack_2?
model_LSTM/lstm/strided_sliceStridedSlicemodel_LSTM/lstm/Shape:output:0,model_LSTM/lstm/strided_slice/stack:output:0.model_LSTM/lstm/strided_slice/stack_1:output:0.model_LSTM/lstm/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
model_LSTM/lstm/strided_slice}
model_LSTM/lstm/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
model_LSTM/lstm/zeros/mul/y?
model_LSTM/lstm/zeros/mulMul&model_LSTM/lstm/strided_slice:output:0$model_LSTM/lstm/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
model_LSTM/lstm/zeros/mul
model_LSTM/lstm/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
model_LSTM/lstm/zeros/Less/y?
model_LSTM/lstm/zeros/LessLessmodel_LSTM/lstm/zeros/mul:z:0%model_LSTM/lstm/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
model_LSTM/lstm/zeros/Less?
model_LSTM/lstm/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2 
model_LSTM/lstm/zeros/packed/1?
model_LSTM/lstm/zeros/packedPack&model_LSTM/lstm/strided_slice:output:0'model_LSTM/lstm/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
model_LSTM/lstm/zeros/packed
model_LSTM/lstm/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
model_LSTM/lstm/zeros/Const?
model_LSTM/lstm/zerosFill%model_LSTM/lstm/zeros/packed:output:0$model_LSTM/lstm/zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
model_LSTM/lstm/zeros?
model_LSTM/lstm/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
model_LSTM/lstm/zeros_1/mul/y?
model_LSTM/lstm/zeros_1/mulMul&model_LSTM/lstm/strided_slice:output:0&model_LSTM/lstm/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
model_LSTM/lstm/zeros_1/mul?
model_LSTM/lstm/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2 
model_LSTM/lstm/zeros_1/Less/y?
model_LSTM/lstm/zeros_1/LessLessmodel_LSTM/lstm/zeros_1/mul:z:0'model_LSTM/lstm/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
model_LSTM/lstm/zeros_1/Less?
 model_LSTM/lstm/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2"
 model_LSTM/lstm/zeros_1/packed/1?
model_LSTM/lstm/zeros_1/packedPack&model_LSTM/lstm/strided_slice:output:0)model_LSTM/lstm/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2 
model_LSTM/lstm/zeros_1/packed?
model_LSTM/lstm/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
model_LSTM/lstm/zeros_1/Const?
model_LSTM/lstm/zeros_1Fill'model_LSTM/lstm/zeros_1/packed:output:0&model_LSTM/lstm/zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2
model_LSTM/lstm/zeros_1?
model_LSTM/lstm/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2 
model_LSTM/lstm/transpose/perm?
model_LSTM/lstm/transpose	Transpose)model_LSTM/max_pooling1d/Squeeze:output:0'model_LSTM/lstm/transpose/perm:output:0*
T0*+
_output_shapes
:????????? 2
model_LSTM/lstm/transpose
model_LSTM/lstm/Shape_1Shapemodel_LSTM/lstm/transpose:y:0*
T0*
_output_shapes
:2
model_LSTM/lstm/Shape_1?
%model_LSTM/lstm/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%model_LSTM/lstm/strided_slice_1/stack?
'model_LSTM/lstm/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'model_LSTM/lstm/strided_slice_1/stack_1?
'model_LSTM/lstm/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'model_LSTM/lstm/strided_slice_1/stack_2?
model_LSTM/lstm/strided_slice_1StridedSlice model_LSTM/lstm/Shape_1:output:0.model_LSTM/lstm/strided_slice_1/stack:output:00model_LSTM/lstm/strided_slice_1/stack_1:output:00model_LSTM/lstm/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2!
model_LSTM/lstm/strided_slice_1?
+model_LSTM/lstm/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2-
+model_LSTM/lstm/TensorArrayV2/element_shape?
model_LSTM/lstm/TensorArrayV2TensorListReserve4model_LSTM/lstm/TensorArrayV2/element_shape:output:0(model_LSTM/lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
model_LSTM/lstm/TensorArrayV2?
Emodel_LSTM/lstm/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2G
Emodel_LSTM/lstm/TensorArrayUnstack/TensorListFromTensor/element_shape?
7model_LSTM/lstm/TensorArrayUnstack/TensorListFromTensorTensorListFromTensormodel_LSTM/lstm/transpose:y:0Nmodel_LSTM/lstm/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type029
7model_LSTM/lstm/TensorArrayUnstack/TensorListFromTensor?
%model_LSTM/lstm/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%model_LSTM/lstm/strided_slice_2/stack?
'model_LSTM/lstm/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'model_LSTM/lstm/strided_slice_2/stack_1?
'model_LSTM/lstm/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'model_LSTM/lstm/strided_slice_2/stack_2?
model_LSTM/lstm/strided_slice_2StridedSlicemodel_LSTM/lstm/transpose:y:0.model_LSTM/lstm/strided_slice_2/stack:output:00model_LSTM/lstm/strided_slice_2/stack_1:output:00model_LSTM/lstm/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2!
model_LSTM/lstm/strided_slice_2?
)model_LSTM/lstm/lstm_cell/ones_like/ShapeShape(model_LSTM/lstm/strided_slice_2:output:0*
T0*
_output_shapes
:2+
)model_LSTM/lstm/lstm_cell/ones_like/Shape?
)model_LSTM/lstm/lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)model_LSTM/lstm/lstm_cell/ones_like/Const?
#model_LSTM/lstm/lstm_cell/ones_likeFill2model_LSTM/lstm/lstm_cell/ones_like/Shape:output:02model_LSTM/lstm/lstm_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2%
#model_LSTM/lstm/lstm_cell/ones_like?
+model_LSTM/lstm/lstm_cell/ones_like_1/ShapeShapemodel_LSTM/lstm/zeros:output:0*
T0*
_output_shapes
:2-
+model_LSTM/lstm/lstm_cell/ones_like_1/Shape?
+model_LSTM/lstm/lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2-
+model_LSTM/lstm/lstm_cell/ones_like_1/Const?
%model_LSTM/lstm/lstm_cell/ones_like_1Fill4model_LSTM/lstm/lstm_cell/ones_like_1/Shape:output:04model_LSTM/lstm/lstm_cell/ones_like_1/Const:output:0*
T0*(
_output_shapes
:??????????2'
%model_LSTM/lstm/lstm_cell/ones_like_1?
model_LSTM/lstm/lstm_cell/mulMul(model_LSTM/lstm/strided_slice_2:output:0,model_LSTM/lstm/lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
model_LSTM/lstm/lstm_cell/mul?
model_LSTM/lstm/lstm_cell/mul_1Mul(model_LSTM/lstm/strided_slice_2:output:0,model_LSTM/lstm/lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:????????? 2!
model_LSTM/lstm/lstm_cell/mul_1?
model_LSTM/lstm/lstm_cell/mul_2Mul(model_LSTM/lstm/strided_slice_2:output:0,model_LSTM/lstm/lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:????????? 2!
model_LSTM/lstm/lstm_cell/mul_2?
model_LSTM/lstm/lstm_cell/mul_3Mul(model_LSTM/lstm/strided_slice_2:output:0,model_LSTM/lstm/lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:????????? 2!
model_LSTM/lstm/lstm_cell/mul_3?
)model_LSTM/lstm/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2+
)model_LSTM/lstm/lstm_cell/split/split_dim?
.model_LSTM/lstm/lstm_cell/split/ReadVariableOpReadVariableOp7model_lstm_lstm_lstm_cell_split_readvariableop_resource*
_output_shapes
:	 ?*
dtype020
.model_LSTM/lstm/lstm_cell/split/ReadVariableOp?
model_LSTM/lstm/lstm_cell/splitSplit2model_LSTM/lstm/lstm_cell/split/split_dim:output:06model_LSTM/lstm/lstm_cell/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	 ?:	 ?:	 ?:	 ?*
	num_split2!
model_LSTM/lstm/lstm_cell/split?
 model_LSTM/lstm/lstm_cell/MatMulMatMul!model_LSTM/lstm/lstm_cell/mul:z:0(model_LSTM/lstm/lstm_cell/split:output:0*
T0*(
_output_shapes
:??????????2"
 model_LSTM/lstm/lstm_cell/MatMul?
"model_LSTM/lstm/lstm_cell/MatMul_1MatMul#model_LSTM/lstm/lstm_cell/mul_1:z:0(model_LSTM/lstm/lstm_cell/split:output:1*
T0*(
_output_shapes
:??????????2$
"model_LSTM/lstm/lstm_cell/MatMul_1?
"model_LSTM/lstm/lstm_cell/MatMul_2MatMul#model_LSTM/lstm/lstm_cell/mul_2:z:0(model_LSTM/lstm/lstm_cell/split:output:2*
T0*(
_output_shapes
:??????????2$
"model_LSTM/lstm/lstm_cell/MatMul_2?
"model_LSTM/lstm/lstm_cell/MatMul_3MatMul#model_LSTM/lstm/lstm_cell/mul_3:z:0(model_LSTM/lstm/lstm_cell/split:output:3*
T0*(
_output_shapes
:??????????2$
"model_LSTM/lstm/lstm_cell/MatMul_3?
+model_LSTM/lstm/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2-
+model_LSTM/lstm/lstm_cell/split_1/split_dim?
0model_LSTM/lstm/lstm_cell/split_1/ReadVariableOpReadVariableOp9model_lstm_lstm_lstm_cell_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype022
0model_LSTM/lstm/lstm_cell/split_1/ReadVariableOp?
!model_LSTM/lstm/lstm_cell/split_1Split4model_LSTM/lstm/lstm_cell/split_1/split_dim:output:08model_LSTM/lstm/lstm_cell/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:?:?:?:?*
	num_split2#
!model_LSTM/lstm/lstm_cell/split_1?
!model_LSTM/lstm/lstm_cell/BiasAddBiasAdd*model_LSTM/lstm/lstm_cell/MatMul:product:0*model_LSTM/lstm/lstm_cell/split_1:output:0*
T0*(
_output_shapes
:??????????2#
!model_LSTM/lstm/lstm_cell/BiasAdd?
#model_LSTM/lstm/lstm_cell/BiasAdd_1BiasAdd,model_LSTM/lstm/lstm_cell/MatMul_1:product:0*model_LSTM/lstm/lstm_cell/split_1:output:1*
T0*(
_output_shapes
:??????????2%
#model_LSTM/lstm/lstm_cell/BiasAdd_1?
#model_LSTM/lstm/lstm_cell/BiasAdd_2BiasAdd,model_LSTM/lstm/lstm_cell/MatMul_2:product:0*model_LSTM/lstm/lstm_cell/split_1:output:2*
T0*(
_output_shapes
:??????????2%
#model_LSTM/lstm/lstm_cell/BiasAdd_2?
#model_LSTM/lstm/lstm_cell/BiasAdd_3BiasAdd,model_LSTM/lstm/lstm_cell/MatMul_3:product:0*model_LSTM/lstm/lstm_cell/split_1:output:3*
T0*(
_output_shapes
:??????????2%
#model_LSTM/lstm/lstm_cell/BiasAdd_3?
model_LSTM/lstm/lstm_cell/mul_4Mulmodel_LSTM/lstm/zeros:output:0.model_LSTM/lstm/lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:??????????2!
model_LSTM/lstm/lstm_cell/mul_4?
model_LSTM/lstm/lstm_cell/mul_5Mulmodel_LSTM/lstm/zeros:output:0.model_LSTM/lstm/lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:??????????2!
model_LSTM/lstm/lstm_cell/mul_5?
model_LSTM/lstm/lstm_cell/mul_6Mulmodel_LSTM/lstm/zeros:output:0.model_LSTM/lstm/lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:??????????2!
model_LSTM/lstm/lstm_cell/mul_6?
model_LSTM/lstm/lstm_cell/mul_7Mulmodel_LSTM/lstm/zeros:output:0.model_LSTM/lstm/lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:??????????2!
model_LSTM/lstm/lstm_cell/mul_7?
(model_LSTM/lstm/lstm_cell/ReadVariableOpReadVariableOp1model_lstm_lstm_lstm_cell_readvariableop_resource* 
_output_shapes
:
??*
dtype02*
(model_LSTM/lstm/lstm_cell/ReadVariableOp?
-model_LSTM/lstm/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2/
-model_LSTM/lstm/lstm_cell/strided_slice/stack?
/model_LSTM/lstm/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   21
/model_LSTM/lstm/lstm_cell/strided_slice/stack_1?
/model_LSTM/lstm/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      21
/model_LSTM/lstm/lstm_cell/strided_slice/stack_2?
'model_LSTM/lstm/lstm_cell/strided_sliceStridedSlice0model_LSTM/lstm/lstm_cell/ReadVariableOp:value:06model_LSTM/lstm/lstm_cell/strided_slice/stack:output:08model_LSTM/lstm/lstm_cell/strided_slice/stack_1:output:08model_LSTM/lstm/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2)
'model_LSTM/lstm/lstm_cell/strided_slice?
"model_LSTM/lstm/lstm_cell/MatMul_4MatMul#model_LSTM/lstm/lstm_cell/mul_4:z:00model_LSTM/lstm/lstm_cell/strided_slice:output:0*
T0*(
_output_shapes
:??????????2$
"model_LSTM/lstm/lstm_cell/MatMul_4?
model_LSTM/lstm/lstm_cell/addAddV2*model_LSTM/lstm/lstm_cell/BiasAdd:output:0,model_LSTM/lstm/lstm_cell/MatMul_4:product:0*
T0*(
_output_shapes
:??????????2
model_LSTM/lstm/lstm_cell/add?
!model_LSTM/lstm/lstm_cell/SigmoidSigmoid!model_LSTM/lstm/lstm_cell/add:z:0*
T0*(
_output_shapes
:??????????2#
!model_LSTM/lstm/lstm_cell/Sigmoid?
*model_LSTM/lstm/lstm_cell/ReadVariableOp_1ReadVariableOp1model_lstm_lstm_lstm_cell_readvariableop_resource* 
_output_shapes
:
??*
dtype02,
*model_LSTM/lstm/lstm_cell/ReadVariableOp_1?
/model_LSTM/lstm/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   21
/model_LSTM/lstm/lstm_cell/strided_slice_1/stack?
1model_LSTM/lstm/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       23
1model_LSTM/lstm/lstm_cell/strided_slice_1/stack_1?
1model_LSTM/lstm/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1model_LSTM/lstm/lstm_cell/strided_slice_1/stack_2?
)model_LSTM/lstm/lstm_cell/strided_slice_1StridedSlice2model_LSTM/lstm/lstm_cell/ReadVariableOp_1:value:08model_LSTM/lstm/lstm_cell/strided_slice_1/stack:output:0:model_LSTM/lstm/lstm_cell/strided_slice_1/stack_1:output:0:model_LSTM/lstm/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2+
)model_LSTM/lstm/lstm_cell/strided_slice_1?
"model_LSTM/lstm/lstm_cell/MatMul_5MatMul#model_LSTM/lstm/lstm_cell/mul_5:z:02model_LSTM/lstm/lstm_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:??????????2$
"model_LSTM/lstm/lstm_cell/MatMul_5?
model_LSTM/lstm/lstm_cell/add_1AddV2,model_LSTM/lstm/lstm_cell/BiasAdd_1:output:0,model_LSTM/lstm/lstm_cell/MatMul_5:product:0*
T0*(
_output_shapes
:??????????2!
model_LSTM/lstm/lstm_cell/add_1?
#model_LSTM/lstm/lstm_cell/Sigmoid_1Sigmoid#model_LSTM/lstm/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:??????????2%
#model_LSTM/lstm/lstm_cell/Sigmoid_1?
model_LSTM/lstm/lstm_cell/mul_8Mul'model_LSTM/lstm/lstm_cell/Sigmoid_1:y:0 model_LSTM/lstm/zeros_1:output:0*
T0*(
_output_shapes
:??????????2!
model_LSTM/lstm/lstm_cell/mul_8?
*model_LSTM/lstm/lstm_cell/ReadVariableOp_2ReadVariableOp1model_lstm_lstm_lstm_cell_readvariableop_resource* 
_output_shapes
:
??*
dtype02,
*model_LSTM/lstm/lstm_cell/ReadVariableOp_2?
/model_LSTM/lstm/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       21
/model_LSTM/lstm/lstm_cell/strided_slice_2/stack?
1model_LSTM/lstm/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?  23
1model_LSTM/lstm/lstm_cell/strided_slice_2/stack_1?
1model_LSTM/lstm/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1model_LSTM/lstm/lstm_cell/strided_slice_2/stack_2?
)model_LSTM/lstm/lstm_cell/strided_slice_2StridedSlice2model_LSTM/lstm/lstm_cell/ReadVariableOp_2:value:08model_LSTM/lstm/lstm_cell/strided_slice_2/stack:output:0:model_LSTM/lstm/lstm_cell/strided_slice_2/stack_1:output:0:model_LSTM/lstm/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2+
)model_LSTM/lstm/lstm_cell/strided_slice_2?
"model_LSTM/lstm/lstm_cell/MatMul_6MatMul#model_LSTM/lstm/lstm_cell/mul_6:z:02model_LSTM/lstm/lstm_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:??????????2$
"model_LSTM/lstm/lstm_cell/MatMul_6?
model_LSTM/lstm/lstm_cell/add_2AddV2,model_LSTM/lstm/lstm_cell/BiasAdd_2:output:0,model_LSTM/lstm/lstm_cell/MatMul_6:product:0*
T0*(
_output_shapes
:??????????2!
model_LSTM/lstm/lstm_cell/add_2?
model_LSTM/lstm/lstm_cell/TanhTanh#model_LSTM/lstm/lstm_cell/add_2:z:0*
T0*(
_output_shapes
:??????????2 
model_LSTM/lstm/lstm_cell/Tanh?
model_LSTM/lstm/lstm_cell/mul_9Mul%model_LSTM/lstm/lstm_cell/Sigmoid:y:0"model_LSTM/lstm/lstm_cell/Tanh:y:0*
T0*(
_output_shapes
:??????????2!
model_LSTM/lstm/lstm_cell/mul_9?
model_LSTM/lstm/lstm_cell/add_3AddV2#model_LSTM/lstm/lstm_cell/mul_8:z:0#model_LSTM/lstm/lstm_cell/mul_9:z:0*
T0*(
_output_shapes
:??????????2!
model_LSTM/lstm/lstm_cell/add_3?
*model_LSTM/lstm/lstm_cell/ReadVariableOp_3ReadVariableOp1model_lstm_lstm_lstm_cell_readvariableop_resource* 
_output_shapes
:
??*
dtype02,
*model_LSTM/lstm/lstm_cell/ReadVariableOp_3?
/model_LSTM/lstm/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?  21
/model_LSTM/lstm/lstm_cell/strided_slice_3/stack?
1model_LSTM/lstm/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        23
1model_LSTM/lstm/lstm_cell/strided_slice_3/stack_1?
1model_LSTM/lstm/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1model_LSTM/lstm/lstm_cell/strided_slice_3/stack_2?
)model_LSTM/lstm/lstm_cell/strided_slice_3StridedSlice2model_LSTM/lstm/lstm_cell/ReadVariableOp_3:value:08model_LSTM/lstm/lstm_cell/strided_slice_3/stack:output:0:model_LSTM/lstm/lstm_cell/strided_slice_3/stack_1:output:0:model_LSTM/lstm/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2+
)model_LSTM/lstm/lstm_cell/strided_slice_3?
"model_LSTM/lstm/lstm_cell/MatMul_7MatMul#model_LSTM/lstm/lstm_cell/mul_7:z:02model_LSTM/lstm/lstm_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:??????????2$
"model_LSTM/lstm/lstm_cell/MatMul_7?
model_LSTM/lstm/lstm_cell/add_4AddV2,model_LSTM/lstm/lstm_cell/BiasAdd_3:output:0,model_LSTM/lstm/lstm_cell/MatMul_7:product:0*
T0*(
_output_shapes
:??????????2!
model_LSTM/lstm/lstm_cell/add_4?
#model_LSTM/lstm/lstm_cell/Sigmoid_2Sigmoid#model_LSTM/lstm/lstm_cell/add_4:z:0*
T0*(
_output_shapes
:??????????2%
#model_LSTM/lstm/lstm_cell/Sigmoid_2?
 model_LSTM/lstm/lstm_cell/Tanh_1Tanh#model_LSTM/lstm/lstm_cell/add_3:z:0*
T0*(
_output_shapes
:??????????2"
 model_LSTM/lstm/lstm_cell/Tanh_1?
 model_LSTM/lstm/lstm_cell/mul_10Mul'model_LSTM/lstm/lstm_cell/Sigmoid_2:y:0$model_LSTM/lstm/lstm_cell/Tanh_1:y:0*
T0*(
_output_shapes
:??????????2"
 model_LSTM/lstm/lstm_cell/mul_10?
-model_LSTM/lstm/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2/
-model_LSTM/lstm/TensorArrayV2_1/element_shape?
model_LSTM/lstm/TensorArrayV2_1TensorListReserve6model_LSTM/lstm/TensorArrayV2_1/element_shape:output:0(model_LSTM/lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02!
model_LSTM/lstm/TensorArrayV2_1n
model_LSTM/lstm/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
model_LSTM/lstm/time?
(model_LSTM/lstm/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2*
(model_LSTM/lstm/while/maximum_iterations?
"model_LSTM/lstm/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2$
"model_LSTM/lstm/while/loop_counter?
model_LSTM/lstm/whileWhile+model_LSTM/lstm/while/loop_counter:output:01model_LSTM/lstm/while/maximum_iterations:output:0model_LSTM/lstm/time:output:0(model_LSTM/lstm/TensorArrayV2_1:handle:0model_LSTM/lstm/zeros:output:0 model_LSTM/lstm/zeros_1:output:0(model_LSTM/lstm/strided_slice_1:output:0Gmodel_LSTM/lstm/TensorArrayUnstack/TensorListFromTensor:output_handle:07model_lstm_lstm_lstm_cell_split_readvariableop_resource9model_lstm_lstm_lstm_cell_split_1_readvariableop_resource1model_lstm_lstm_lstm_cell_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *,
body$R"
 model_LSTM_lstm_while_body_13693*,
cond$R"
 model_LSTM_lstm_while_cond_13692*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
model_LSTM/lstm/while?
@model_LSTM/lstm/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2B
@model_LSTM/lstm/TensorArrayV2Stack/TensorListStack/element_shape?
2model_LSTM/lstm/TensorArrayV2Stack/TensorListStackTensorListStackmodel_LSTM/lstm/while:output:3Imodel_LSTM/lstm/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype024
2model_LSTM/lstm/TensorArrayV2Stack/TensorListStack?
%model_LSTM/lstm/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2'
%model_LSTM/lstm/strided_slice_3/stack?
'model_LSTM/lstm/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2)
'model_LSTM/lstm/strided_slice_3/stack_1?
'model_LSTM/lstm/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'model_LSTM/lstm/strided_slice_3/stack_2?
model_LSTM/lstm/strided_slice_3StridedSlice;model_LSTM/lstm/TensorArrayV2Stack/TensorListStack:tensor:0.model_LSTM/lstm/strided_slice_3/stack:output:00model_LSTM/lstm/strided_slice_3/stack_1:output:00model_LSTM/lstm/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2!
model_LSTM/lstm/strided_slice_3?
 model_LSTM/lstm/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2"
 model_LSTM/lstm/transpose_1/perm?
model_LSTM/lstm/transpose_1	Transpose;model_LSTM/lstm/TensorArrayV2Stack/TensorListStack:tensor:0)model_LSTM/lstm/transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
model_LSTM/lstm/transpose_1?
model_LSTM/lstm/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
model_LSTM/lstm/runtime?
(model_LSTM/dense_2/MatMul/ReadVariableOpReadVariableOp1model_lstm_dense_2_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02*
(model_LSTM/dense_2/MatMul/ReadVariableOp?
model_LSTM/dense_2/MatMulMatMul(model_LSTM/lstm/strided_slice_3:output:00model_LSTM/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model_LSTM/dense_2/MatMul?
)model_LSTM/dense_2/BiasAdd/ReadVariableOpReadVariableOp2model_lstm_dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)model_LSTM/dense_2/BiasAdd/ReadVariableOp?
model_LSTM/dense_2/BiasAddBiasAdd#model_LSTM/dense_2/MatMul:product:01model_LSTM/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model_LSTM/dense_2/BiasAdd?
model_LSTM/dense_2/SoftmaxSoftmax#model_LSTM/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
model_LSTM/dense_2/Softmax
IdentityIdentity$model_LSTM/dense_2/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp)^model_LSTM/conv1d/BiasAdd/ReadVariableOp5^model_LSTM/conv1d/conv1d/ExpandDims_1/ReadVariableOp*^model_LSTM/dense_2/BiasAdd/ReadVariableOp)^model_LSTM/dense_2/MatMul/ReadVariableOp&^model_LSTM/embedding/embedding_lookup)^model_LSTM/lstm/lstm_cell/ReadVariableOp+^model_LSTM/lstm/lstm_cell/ReadVariableOp_1+^model_LSTM/lstm/lstm_cell/ReadVariableOp_2+^model_LSTM/lstm/lstm_cell/ReadVariableOp_3/^model_LSTM/lstm/lstm_cell/split/ReadVariableOp1^model_LSTM/lstm/lstm_cell/split_1/ReadVariableOp^model_LSTM/lstm/whileJ^model_LSTM/text_vectorization/string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : : : : : 2T
(model_LSTM/conv1d/BiasAdd/ReadVariableOp(model_LSTM/conv1d/BiasAdd/ReadVariableOp2l
4model_LSTM/conv1d/conv1d/ExpandDims_1/ReadVariableOp4model_LSTM/conv1d/conv1d/ExpandDims_1/ReadVariableOp2V
)model_LSTM/dense_2/BiasAdd/ReadVariableOp)model_LSTM/dense_2/BiasAdd/ReadVariableOp2T
(model_LSTM/dense_2/MatMul/ReadVariableOp(model_LSTM/dense_2/MatMul/ReadVariableOp2N
%model_LSTM/embedding/embedding_lookup%model_LSTM/embedding/embedding_lookup2T
(model_LSTM/lstm/lstm_cell/ReadVariableOp(model_LSTM/lstm/lstm_cell/ReadVariableOp2X
*model_LSTM/lstm/lstm_cell/ReadVariableOp_1*model_LSTM/lstm/lstm_cell/ReadVariableOp_12X
*model_LSTM/lstm/lstm_cell/ReadVariableOp_2*model_LSTM/lstm/lstm_cell/ReadVariableOp_22X
*model_LSTM/lstm/lstm_cell/ReadVariableOp_3*model_LSTM/lstm/lstm_cell/ReadVariableOp_32`
.model_LSTM/lstm/lstm_cell/split/ReadVariableOp.model_LSTM/lstm/lstm_cell/split/ReadVariableOp2d
0model_LSTM/lstm/lstm_cell/split_1/ReadVariableOp0model_LSTM/lstm/lstm_cell/split_1/ReadVariableOp2.
model_LSTM/lstm/whilemodel_LSTM/lstm/while2?
Imodel_LSTM/text_vectorization/string_lookup/None_Lookup/LookupTableFindV2Imodel_LSTM/text_vectorization/string_lookup/None_Lookup/LookupTableFindV2:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
??
?

lstm_while_body_16470&
"lstm_while_lstm_while_loop_counter,
(lstm_while_lstm_while_maximum_iterations
lstm_while_placeholder
lstm_while_placeholder_1
lstm_while_placeholder_2
lstm_while_placeholder_3%
!lstm_while_lstm_strided_slice_1_0a
]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0G
4lstm_while_lstm_cell_split_readvariableop_resource_0:	 ?E
6lstm_while_lstm_cell_split_1_readvariableop_resource_0:	?B
.lstm_while_lstm_cell_readvariableop_resource_0:
??
lstm_while_identity
lstm_while_identity_1
lstm_while_identity_2
lstm_while_identity_3
lstm_while_identity_4
lstm_while_identity_5#
lstm_while_lstm_strided_slice_1_
[lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensorE
2lstm_while_lstm_cell_split_readvariableop_resource:	 ?C
4lstm_while_lstm_cell_split_1_readvariableop_resource:	?@
,lstm_while_lstm_cell_readvariableop_resource:
????#lstm/while/lstm_cell/ReadVariableOp?%lstm/while/lstm_cell/ReadVariableOp_1?%lstm/while/lstm_cell/ReadVariableOp_2?%lstm/while/lstm_cell/ReadVariableOp_3?)lstm/while/lstm_cell/split/ReadVariableOp?+lstm/while/lstm_cell/split_1/ReadVariableOp?
<lstm/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2>
<lstm/while/TensorArrayV2Read/TensorListGetItem/element_shape?
.lstm/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0lstm_while_placeholderElstm/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:????????? *
element_dtype020
.lstm/while/TensorArrayV2Read/TensorListGetItem?
$lstm/while/lstm_cell/ones_like/ShapeShape5lstm/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2&
$lstm/while/lstm_cell/ones_like/Shape?
$lstm/while/lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2&
$lstm/while/lstm_cell/ones_like/Const?
lstm/while/lstm_cell/ones_likeFill-lstm/while/lstm_cell/ones_like/Shape:output:0-lstm/while/lstm_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2 
lstm/while/lstm_cell/ones_like?
"lstm/while/lstm_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"lstm/while/lstm_cell/dropout/Const?
 lstm/while/lstm_cell/dropout/MulMul'lstm/while/lstm_cell/ones_like:output:0+lstm/while/lstm_cell/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2"
 lstm/while/lstm_cell/dropout/Mul?
"lstm/while/lstm_cell/dropout/ShapeShape'lstm/while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
:2$
"lstm/while/lstm_cell/dropout/Shape?
9lstm/while/lstm_cell/dropout/random_uniform/RandomUniformRandomUniform+lstm/while/lstm_cell/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2??2;
9lstm/while/lstm_cell/dropout/random_uniform/RandomUniform?
+lstm/while/lstm_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2-
+lstm/while/lstm_cell/dropout/GreaterEqual/y?
)lstm/while/lstm_cell/dropout/GreaterEqualGreaterEqualBlstm/while/lstm_cell/dropout/random_uniform/RandomUniform:output:04lstm/while/lstm_cell/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2+
)lstm/while/lstm_cell/dropout/GreaterEqual?
!lstm/while/lstm_cell/dropout/CastCast-lstm/while/lstm_cell/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2#
!lstm/while/lstm_cell/dropout/Cast?
"lstm/while/lstm_cell/dropout/Mul_1Mul$lstm/while/lstm_cell/dropout/Mul:z:0%lstm/while/lstm_cell/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2$
"lstm/while/lstm_cell/dropout/Mul_1?
$lstm/while/lstm_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2&
$lstm/while/lstm_cell/dropout_1/Const?
"lstm/while/lstm_cell/dropout_1/MulMul'lstm/while/lstm_cell/ones_like:output:0-lstm/while/lstm_cell/dropout_1/Const:output:0*
T0*'
_output_shapes
:????????? 2$
"lstm/while/lstm_cell/dropout_1/Mul?
$lstm/while/lstm_cell/dropout_1/ShapeShape'lstm/while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
:2&
$lstm/while/lstm_cell/dropout_1/Shape?
;lstm/while/lstm_cell/dropout_1/random_uniform/RandomUniformRandomUniform-lstm/while/lstm_cell/dropout_1/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2?Μ2=
;lstm/while/lstm_cell/dropout_1/random_uniform/RandomUniform?
-lstm/while/lstm_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2/
-lstm/while/lstm_cell/dropout_1/GreaterEqual/y?
+lstm/while/lstm_cell/dropout_1/GreaterEqualGreaterEqualDlstm/while/lstm_cell/dropout_1/random_uniform/RandomUniform:output:06lstm/while/lstm_cell/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2-
+lstm/while/lstm_cell/dropout_1/GreaterEqual?
#lstm/while/lstm_cell/dropout_1/CastCast/lstm/while/lstm_cell/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2%
#lstm/while/lstm_cell/dropout_1/Cast?
$lstm/while/lstm_cell/dropout_1/Mul_1Mul&lstm/while/lstm_cell/dropout_1/Mul:z:0'lstm/while/lstm_cell/dropout_1/Cast:y:0*
T0*'
_output_shapes
:????????? 2&
$lstm/while/lstm_cell/dropout_1/Mul_1?
$lstm/while/lstm_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2&
$lstm/while/lstm_cell/dropout_2/Const?
"lstm/while/lstm_cell/dropout_2/MulMul'lstm/while/lstm_cell/ones_like:output:0-lstm/while/lstm_cell/dropout_2/Const:output:0*
T0*'
_output_shapes
:????????? 2$
"lstm/while/lstm_cell/dropout_2/Mul?
$lstm/while/lstm_cell/dropout_2/ShapeShape'lstm/while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
:2&
$lstm/while/lstm_cell/dropout_2/Shape?
;lstm/while/lstm_cell/dropout_2/random_uniform/RandomUniformRandomUniform-lstm/while/lstm_cell/dropout_2/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???2=
;lstm/while/lstm_cell/dropout_2/random_uniform/RandomUniform?
-lstm/while/lstm_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2/
-lstm/while/lstm_cell/dropout_2/GreaterEqual/y?
+lstm/while/lstm_cell/dropout_2/GreaterEqualGreaterEqualDlstm/while/lstm_cell/dropout_2/random_uniform/RandomUniform:output:06lstm/while/lstm_cell/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2-
+lstm/while/lstm_cell/dropout_2/GreaterEqual?
#lstm/while/lstm_cell/dropout_2/CastCast/lstm/while/lstm_cell/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2%
#lstm/while/lstm_cell/dropout_2/Cast?
$lstm/while/lstm_cell/dropout_2/Mul_1Mul&lstm/while/lstm_cell/dropout_2/Mul:z:0'lstm/while/lstm_cell/dropout_2/Cast:y:0*
T0*'
_output_shapes
:????????? 2&
$lstm/while/lstm_cell/dropout_2/Mul_1?
$lstm/while/lstm_cell/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2&
$lstm/while/lstm_cell/dropout_3/Const?
"lstm/while/lstm_cell/dropout_3/MulMul'lstm/while/lstm_cell/ones_like:output:0-lstm/while/lstm_cell/dropout_3/Const:output:0*
T0*'
_output_shapes
:????????? 2$
"lstm/while/lstm_cell/dropout_3/Mul?
$lstm/while/lstm_cell/dropout_3/ShapeShape'lstm/while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
:2&
$lstm/while/lstm_cell/dropout_3/Shape?
;lstm/while/lstm_cell/dropout_3/random_uniform/RandomUniformRandomUniform-lstm/while/lstm_cell/dropout_3/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2??f2=
;lstm/while/lstm_cell/dropout_3/random_uniform/RandomUniform?
-lstm/while/lstm_cell/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2/
-lstm/while/lstm_cell/dropout_3/GreaterEqual/y?
+lstm/while/lstm_cell/dropout_3/GreaterEqualGreaterEqualDlstm/while/lstm_cell/dropout_3/random_uniform/RandomUniform:output:06lstm/while/lstm_cell/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2-
+lstm/while/lstm_cell/dropout_3/GreaterEqual?
#lstm/while/lstm_cell/dropout_3/CastCast/lstm/while/lstm_cell/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2%
#lstm/while/lstm_cell/dropout_3/Cast?
$lstm/while/lstm_cell/dropout_3/Mul_1Mul&lstm/while/lstm_cell/dropout_3/Mul:z:0'lstm/while/lstm_cell/dropout_3/Cast:y:0*
T0*'
_output_shapes
:????????? 2&
$lstm/while/lstm_cell/dropout_3/Mul_1?
&lstm/while/lstm_cell/ones_like_1/ShapeShapelstm_while_placeholder_2*
T0*
_output_shapes
:2(
&lstm/while/lstm_cell/ones_like_1/Shape?
&lstm/while/lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2(
&lstm/while/lstm_cell/ones_like_1/Const?
 lstm/while/lstm_cell/ones_like_1Fill/lstm/while/lstm_cell/ones_like_1/Shape:output:0/lstm/while/lstm_cell/ones_like_1/Const:output:0*
T0*(
_output_shapes
:??????????2"
 lstm/while/lstm_cell/ones_like_1?
$lstm/while/lstm_cell/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2&
$lstm/while/lstm_cell/dropout_4/Const?
"lstm/while/lstm_cell/dropout_4/MulMul)lstm/while/lstm_cell/ones_like_1:output:0-lstm/while/lstm_cell/dropout_4/Const:output:0*
T0*(
_output_shapes
:??????????2$
"lstm/while/lstm_cell/dropout_4/Mul?
$lstm/while/lstm_cell/dropout_4/ShapeShape)lstm/while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
:2&
$lstm/while/lstm_cell/dropout_4/Shape?
;lstm/while/lstm_cell/dropout_4/random_uniform/RandomUniformRandomUniform-lstm/while/lstm_cell/dropout_4/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2Ŀ?2=
;lstm/while/lstm_cell/dropout_4/random_uniform/RandomUniform?
-lstm/while/lstm_cell/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2/
-lstm/while/lstm_cell/dropout_4/GreaterEqual/y?
+lstm/while/lstm_cell/dropout_4/GreaterEqualGreaterEqualDlstm/while/lstm_cell/dropout_4/random_uniform/RandomUniform:output:06lstm/while/lstm_cell/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2-
+lstm/while/lstm_cell/dropout_4/GreaterEqual?
#lstm/while/lstm_cell/dropout_4/CastCast/lstm/while/lstm_cell/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2%
#lstm/while/lstm_cell/dropout_4/Cast?
$lstm/while/lstm_cell/dropout_4/Mul_1Mul&lstm/while/lstm_cell/dropout_4/Mul:z:0'lstm/while/lstm_cell/dropout_4/Cast:y:0*
T0*(
_output_shapes
:??????????2&
$lstm/while/lstm_cell/dropout_4/Mul_1?
$lstm/while/lstm_cell/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2&
$lstm/while/lstm_cell/dropout_5/Const?
"lstm/while/lstm_cell/dropout_5/MulMul)lstm/while/lstm_cell/ones_like_1:output:0-lstm/while/lstm_cell/dropout_5/Const:output:0*
T0*(
_output_shapes
:??????????2$
"lstm/while/lstm_cell/dropout_5/Mul?
$lstm/while/lstm_cell/dropout_5/ShapeShape)lstm/while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
:2&
$lstm/while/lstm_cell/dropout_5/Shape?
;lstm/while/lstm_cell/dropout_5/random_uniform/RandomUniformRandomUniform-lstm/while/lstm_cell/dropout_5/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2ƞ?2=
;lstm/while/lstm_cell/dropout_5/random_uniform/RandomUniform?
-lstm/while/lstm_cell/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2/
-lstm/while/lstm_cell/dropout_5/GreaterEqual/y?
+lstm/while/lstm_cell/dropout_5/GreaterEqualGreaterEqualDlstm/while/lstm_cell/dropout_5/random_uniform/RandomUniform:output:06lstm/while/lstm_cell/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2-
+lstm/while/lstm_cell/dropout_5/GreaterEqual?
#lstm/while/lstm_cell/dropout_5/CastCast/lstm/while/lstm_cell/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2%
#lstm/while/lstm_cell/dropout_5/Cast?
$lstm/while/lstm_cell/dropout_5/Mul_1Mul&lstm/while/lstm_cell/dropout_5/Mul:z:0'lstm/while/lstm_cell/dropout_5/Cast:y:0*
T0*(
_output_shapes
:??????????2&
$lstm/while/lstm_cell/dropout_5/Mul_1?
$lstm/while/lstm_cell/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2&
$lstm/while/lstm_cell/dropout_6/Const?
"lstm/while/lstm_cell/dropout_6/MulMul)lstm/while/lstm_cell/ones_like_1:output:0-lstm/while/lstm_cell/dropout_6/Const:output:0*
T0*(
_output_shapes
:??????????2$
"lstm/while/lstm_cell/dropout_6/Mul?
$lstm/while/lstm_cell/dropout_6/ShapeShape)lstm/while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
:2&
$lstm/while/lstm_cell/dropout_6/Shape?
;lstm/while/lstm_cell/dropout_6/random_uniform/RandomUniformRandomUniform-lstm/while/lstm_cell/dropout_6/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???2=
;lstm/while/lstm_cell/dropout_6/random_uniform/RandomUniform?
-lstm/while/lstm_cell/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2/
-lstm/while/lstm_cell/dropout_6/GreaterEqual/y?
+lstm/while/lstm_cell/dropout_6/GreaterEqualGreaterEqualDlstm/while/lstm_cell/dropout_6/random_uniform/RandomUniform:output:06lstm/while/lstm_cell/dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2-
+lstm/while/lstm_cell/dropout_6/GreaterEqual?
#lstm/while/lstm_cell/dropout_6/CastCast/lstm/while/lstm_cell/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2%
#lstm/while/lstm_cell/dropout_6/Cast?
$lstm/while/lstm_cell/dropout_6/Mul_1Mul&lstm/while/lstm_cell/dropout_6/Mul:z:0'lstm/while/lstm_cell/dropout_6/Cast:y:0*
T0*(
_output_shapes
:??????????2&
$lstm/while/lstm_cell/dropout_6/Mul_1?
$lstm/while/lstm_cell/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2&
$lstm/while/lstm_cell/dropout_7/Const?
"lstm/while/lstm_cell/dropout_7/MulMul)lstm/while/lstm_cell/ones_like_1:output:0-lstm/while/lstm_cell/dropout_7/Const:output:0*
T0*(
_output_shapes
:??????????2$
"lstm/while/lstm_cell/dropout_7/Mul?
$lstm/while/lstm_cell/dropout_7/ShapeShape)lstm/while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
:2&
$lstm/while/lstm_cell/dropout_7/Shape?
;lstm/while/lstm_cell/dropout_7/random_uniform/RandomUniformRandomUniform-lstm/while/lstm_cell/dropout_7/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???2=
;lstm/while/lstm_cell/dropout_7/random_uniform/RandomUniform?
-lstm/while/lstm_cell/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2/
-lstm/while/lstm_cell/dropout_7/GreaterEqual/y?
+lstm/while/lstm_cell/dropout_7/GreaterEqualGreaterEqualDlstm/while/lstm_cell/dropout_7/random_uniform/RandomUniform:output:06lstm/while/lstm_cell/dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2-
+lstm/while/lstm_cell/dropout_7/GreaterEqual?
#lstm/while/lstm_cell/dropout_7/CastCast/lstm/while/lstm_cell/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2%
#lstm/while/lstm_cell/dropout_7/Cast?
$lstm/while/lstm_cell/dropout_7/Mul_1Mul&lstm/while/lstm_cell/dropout_7/Mul:z:0'lstm/while/lstm_cell/dropout_7/Cast:y:0*
T0*(
_output_shapes
:??????????2&
$lstm/while/lstm_cell/dropout_7/Mul_1?
lstm/while/lstm_cell/mulMul5lstm/while/TensorArrayV2Read/TensorListGetItem:item:0&lstm/while/lstm_cell/dropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm/while/lstm_cell/mul?
lstm/while/lstm_cell/mul_1Mul5lstm/while/TensorArrayV2Read/TensorListGetItem:item:0(lstm/while/lstm_cell/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm/while/lstm_cell/mul_1?
lstm/while/lstm_cell/mul_2Mul5lstm/while/TensorArrayV2Read/TensorListGetItem:item:0(lstm/while/lstm_cell/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm/while/lstm_cell/mul_2?
lstm/while/lstm_cell/mul_3Mul5lstm/while/TensorArrayV2Read/TensorListGetItem:item:0(lstm/while/lstm_cell/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm/while/lstm_cell/mul_3?
$lstm/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm/while/lstm_cell/split/split_dim?
)lstm/while/lstm_cell/split/ReadVariableOpReadVariableOp4lstm_while_lstm_cell_split_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02+
)lstm/while/lstm_cell/split/ReadVariableOp?
lstm/while/lstm_cell/splitSplit-lstm/while/lstm_cell/split/split_dim:output:01lstm/while/lstm_cell/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	 ?:	 ?:	 ?:	 ?*
	num_split2
lstm/while/lstm_cell/split?
lstm/while/lstm_cell/MatMulMatMullstm/while/lstm_cell/mul:z:0#lstm/while/lstm_cell/split:output:0*
T0*(
_output_shapes
:??????????2
lstm/while/lstm_cell/MatMul?
lstm/while/lstm_cell/MatMul_1MatMullstm/while/lstm_cell/mul_1:z:0#lstm/while/lstm_cell/split:output:1*
T0*(
_output_shapes
:??????????2
lstm/while/lstm_cell/MatMul_1?
lstm/while/lstm_cell/MatMul_2MatMullstm/while/lstm_cell/mul_2:z:0#lstm/while/lstm_cell/split:output:2*
T0*(
_output_shapes
:??????????2
lstm/while/lstm_cell/MatMul_2?
lstm/while/lstm_cell/MatMul_3MatMullstm/while/lstm_cell/mul_3:z:0#lstm/while/lstm_cell/split:output:3*
T0*(
_output_shapes
:??????????2
lstm/while/lstm_cell/MatMul_3?
&lstm/while/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2(
&lstm/while/lstm_cell/split_1/split_dim?
+lstm/while/lstm_cell/split_1/ReadVariableOpReadVariableOp6lstm_while_lstm_cell_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype02-
+lstm/while/lstm_cell/split_1/ReadVariableOp?
lstm/while/lstm_cell/split_1Split/lstm/while/lstm_cell/split_1/split_dim:output:03lstm/while/lstm_cell/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:?:?:?:?*
	num_split2
lstm/while/lstm_cell/split_1?
lstm/while/lstm_cell/BiasAddBiasAdd%lstm/while/lstm_cell/MatMul:product:0%lstm/while/lstm_cell/split_1:output:0*
T0*(
_output_shapes
:??????????2
lstm/while/lstm_cell/BiasAdd?
lstm/while/lstm_cell/BiasAdd_1BiasAdd'lstm/while/lstm_cell/MatMul_1:product:0%lstm/while/lstm_cell/split_1:output:1*
T0*(
_output_shapes
:??????????2 
lstm/while/lstm_cell/BiasAdd_1?
lstm/while/lstm_cell/BiasAdd_2BiasAdd'lstm/while/lstm_cell/MatMul_2:product:0%lstm/while/lstm_cell/split_1:output:2*
T0*(
_output_shapes
:??????????2 
lstm/while/lstm_cell/BiasAdd_2?
lstm/while/lstm_cell/BiasAdd_3BiasAdd'lstm/while/lstm_cell/MatMul_3:product:0%lstm/while/lstm_cell/split_1:output:3*
T0*(
_output_shapes
:??????????2 
lstm/while/lstm_cell/BiasAdd_3?
lstm/while/lstm_cell/mul_4Mullstm_while_placeholder_2(lstm/while/lstm_cell/dropout_4/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm/while/lstm_cell/mul_4?
lstm/while/lstm_cell/mul_5Mullstm_while_placeholder_2(lstm/while/lstm_cell/dropout_5/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm/while/lstm_cell/mul_5?
lstm/while/lstm_cell/mul_6Mullstm_while_placeholder_2(lstm/while/lstm_cell/dropout_6/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm/while/lstm_cell/mul_6?
lstm/while/lstm_cell/mul_7Mullstm_while_placeholder_2(lstm/while/lstm_cell/dropout_7/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm/while/lstm_cell/mul_7?
#lstm/while/lstm_cell/ReadVariableOpReadVariableOp.lstm_while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02%
#lstm/while/lstm_cell/ReadVariableOp?
(lstm/while/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(lstm/while/lstm_cell/strided_slice/stack?
*lstm/while/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2,
*lstm/while/lstm_cell/strided_slice/stack_1?
*lstm/while/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*lstm/while/lstm_cell/strided_slice/stack_2?
"lstm/while/lstm_cell/strided_sliceStridedSlice+lstm/while/lstm_cell/ReadVariableOp:value:01lstm/while/lstm_cell/strided_slice/stack:output:03lstm/while/lstm_cell/strided_slice/stack_1:output:03lstm/while/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2$
"lstm/while/lstm_cell/strided_slice?
lstm/while/lstm_cell/MatMul_4MatMullstm/while/lstm_cell/mul_4:z:0+lstm/while/lstm_cell/strided_slice:output:0*
T0*(
_output_shapes
:??????????2
lstm/while/lstm_cell/MatMul_4?
lstm/while/lstm_cell/addAddV2%lstm/while/lstm_cell/BiasAdd:output:0'lstm/while/lstm_cell/MatMul_4:product:0*
T0*(
_output_shapes
:??????????2
lstm/while/lstm_cell/add?
lstm/while/lstm_cell/SigmoidSigmoidlstm/while/lstm_cell/add:z:0*
T0*(
_output_shapes
:??????????2
lstm/while/lstm_cell/Sigmoid?
%lstm/while/lstm_cell/ReadVariableOp_1ReadVariableOp.lstm_while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02'
%lstm/while/lstm_cell/ReadVariableOp_1?
*lstm/while/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2,
*lstm/while/lstm_cell/strided_slice_1/stack?
,lstm/while/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2.
,lstm/while/lstm_cell/strided_slice_1/stack_1?
,lstm/while/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,lstm/while/lstm_cell/strided_slice_1/stack_2?
$lstm/while/lstm_cell/strided_slice_1StridedSlice-lstm/while/lstm_cell/ReadVariableOp_1:value:03lstm/while/lstm_cell/strided_slice_1/stack:output:05lstm/while/lstm_cell/strided_slice_1/stack_1:output:05lstm/while/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2&
$lstm/while/lstm_cell/strided_slice_1?
lstm/while/lstm_cell/MatMul_5MatMullstm/while/lstm_cell/mul_5:z:0-lstm/while/lstm_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:??????????2
lstm/while/lstm_cell/MatMul_5?
lstm/while/lstm_cell/add_1AddV2'lstm/while/lstm_cell/BiasAdd_1:output:0'lstm/while/lstm_cell/MatMul_5:product:0*
T0*(
_output_shapes
:??????????2
lstm/while/lstm_cell/add_1?
lstm/while/lstm_cell/Sigmoid_1Sigmoidlstm/while/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:??????????2 
lstm/while/lstm_cell/Sigmoid_1?
lstm/while/lstm_cell/mul_8Mul"lstm/while/lstm_cell/Sigmoid_1:y:0lstm_while_placeholder_3*
T0*(
_output_shapes
:??????????2
lstm/while/lstm_cell/mul_8?
%lstm/while/lstm_cell/ReadVariableOp_2ReadVariableOp.lstm_while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02'
%lstm/while/lstm_cell/ReadVariableOp_2?
*lstm/while/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2,
*lstm/while/lstm_cell/strided_slice_2/stack?
,lstm/while/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?  2.
,lstm/while/lstm_cell/strided_slice_2/stack_1?
,lstm/while/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,lstm/while/lstm_cell/strided_slice_2/stack_2?
$lstm/while/lstm_cell/strided_slice_2StridedSlice-lstm/while/lstm_cell/ReadVariableOp_2:value:03lstm/while/lstm_cell/strided_slice_2/stack:output:05lstm/while/lstm_cell/strided_slice_2/stack_1:output:05lstm/while/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2&
$lstm/while/lstm_cell/strided_slice_2?
lstm/while/lstm_cell/MatMul_6MatMullstm/while/lstm_cell/mul_6:z:0-lstm/while/lstm_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:??????????2
lstm/while/lstm_cell/MatMul_6?
lstm/while/lstm_cell/add_2AddV2'lstm/while/lstm_cell/BiasAdd_2:output:0'lstm/while/lstm_cell/MatMul_6:product:0*
T0*(
_output_shapes
:??????????2
lstm/while/lstm_cell/add_2?
lstm/while/lstm_cell/TanhTanhlstm/while/lstm_cell/add_2:z:0*
T0*(
_output_shapes
:??????????2
lstm/while/lstm_cell/Tanh?
lstm/while/lstm_cell/mul_9Mul lstm/while/lstm_cell/Sigmoid:y:0lstm/while/lstm_cell/Tanh:y:0*
T0*(
_output_shapes
:??????????2
lstm/while/lstm_cell/mul_9?
lstm/while/lstm_cell/add_3AddV2lstm/while/lstm_cell/mul_8:z:0lstm/while/lstm_cell/mul_9:z:0*
T0*(
_output_shapes
:??????????2
lstm/while/lstm_cell/add_3?
%lstm/while/lstm_cell/ReadVariableOp_3ReadVariableOp.lstm_while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02'
%lstm/while/lstm_cell/ReadVariableOp_3?
*lstm/while/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?  2,
*lstm/while/lstm_cell/strided_slice_3/stack?
,lstm/while/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2.
,lstm/while/lstm_cell/strided_slice_3/stack_1?
,lstm/while/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,lstm/while/lstm_cell/strided_slice_3/stack_2?
$lstm/while/lstm_cell/strided_slice_3StridedSlice-lstm/while/lstm_cell/ReadVariableOp_3:value:03lstm/while/lstm_cell/strided_slice_3/stack:output:05lstm/while/lstm_cell/strided_slice_3/stack_1:output:05lstm/while/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2&
$lstm/while/lstm_cell/strided_slice_3?
lstm/while/lstm_cell/MatMul_7MatMullstm/while/lstm_cell/mul_7:z:0-lstm/while/lstm_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:??????????2
lstm/while/lstm_cell/MatMul_7?
lstm/while/lstm_cell/add_4AddV2'lstm/while/lstm_cell/BiasAdd_3:output:0'lstm/while/lstm_cell/MatMul_7:product:0*
T0*(
_output_shapes
:??????????2
lstm/while/lstm_cell/add_4?
lstm/while/lstm_cell/Sigmoid_2Sigmoidlstm/while/lstm_cell/add_4:z:0*
T0*(
_output_shapes
:??????????2 
lstm/while/lstm_cell/Sigmoid_2?
lstm/while/lstm_cell/Tanh_1Tanhlstm/while/lstm_cell/add_3:z:0*
T0*(
_output_shapes
:??????????2
lstm/while/lstm_cell/Tanh_1?
lstm/while/lstm_cell/mul_10Mul"lstm/while/lstm_cell/Sigmoid_2:y:0lstm/while/lstm_cell/Tanh_1:y:0*
T0*(
_output_shapes
:??????????2
lstm/while/lstm_cell/mul_10?
/lstm/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_while_placeholder_1lstm_while_placeholderlstm/while/lstm_cell/mul_10:z:0*
_output_shapes
: *
element_dtype021
/lstm/while/TensorArrayV2Write/TensorListSetItemf
lstm/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm/while/add/y}
lstm/while/addAddV2lstm_while_placeholderlstm/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm/while/addj
lstm/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm/while/add_1/y?
lstm/while/add_1AddV2"lstm_while_lstm_while_loop_counterlstm/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm/while/add_1
lstm/while/IdentityIdentitylstm/while/add_1:z:0^lstm/while/NoOp*
T0*
_output_shapes
: 2
lstm/while/Identity?
lstm/while/Identity_1Identity(lstm_while_lstm_while_maximum_iterations^lstm/while/NoOp*
T0*
_output_shapes
: 2
lstm/while/Identity_1?
lstm/while/Identity_2Identitylstm/while/add:z:0^lstm/while/NoOp*
T0*
_output_shapes
: 2
lstm/while/Identity_2?
lstm/while/Identity_3Identity?lstm/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm/while/NoOp*
T0*
_output_shapes
: 2
lstm/while/Identity_3?
lstm/while/Identity_4Identitylstm/while/lstm_cell/mul_10:z:0^lstm/while/NoOp*
T0*(
_output_shapes
:??????????2
lstm/while/Identity_4?
lstm/while/Identity_5Identitylstm/while/lstm_cell/add_3:z:0^lstm/while/NoOp*
T0*(
_output_shapes
:??????????2
lstm/while/Identity_5?
lstm/while/NoOpNoOp$^lstm/while/lstm_cell/ReadVariableOp&^lstm/while/lstm_cell/ReadVariableOp_1&^lstm/while/lstm_cell/ReadVariableOp_2&^lstm/while/lstm_cell/ReadVariableOp_3*^lstm/while/lstm_cell/split/ReadVariableOp,^lstm/while/lstm_cell/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm/while/NoOp"3
lstm_while_identitylstm/while/Identity:output:0"7
lstm_while_identity_1lstm/while/Identity_1:output:0"7
lstm_while_identity_2lstm/while/Identity_2:output:0"7
lstm_while_identity_3lstm/while/Identity_3:output:0"7
lstm_while_identity_4lstm/while/Identity_4:output:0"7
lstm_while_identity_5lstm/while/Identity_5:output:0"^
,lstm_while_lstm_cell_readvariableop_resource.lstm_while_lstm_cell_readvariableop_resource_0"n
4lstm_while_lstm_cell_split_1_readvariableop_resource6lstm_while_lstm_cell_split_1_readvariableop_resource_0"j
2lstm_while_lstm_cell_split_readvariableop_resource4lstm_while_lstm_cell_split_readvariableop_resource_0"D
lstm_while_lstm_strided_slice_1!lstm_while_lstm_strided_slice_1_0"?
[lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2J
#lstm/while/lstm_cell/ReadVariableOp#lstm/while/lstm_cell/ReadVariableOp2N
%lstm/while/lstm_cell/ReadVariableOp_1%lstm/while/lstm_cell/ReadVariableOp_12N
%lstm/while/lstm_cell/ReadVariableOp_2%lstm/while/lstm_cell/ReadVariableOp_22N
%lstm/while/lstm_cell/ReadVariableOp_3%lstm/while/lstm_cell/ReadVariableOp_32V
)lstm/while/lstm_cell/split/ReadVariableOp)lstm/while/lstm_cell/split/ReadVariableOp2Z
+lstm/while/lstm_cell/split_1/ReadVariableOp+lstm/while/lstm_cell/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
*__inference_model_LSTM_layer_call_fn_15652
input_1
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:
?? 
	unknown_4:? 
	unknown_5: 
	unknown_6:	 ?
	unknown_7:	?
	unknown_8:
??
	unknown_9:	?

unknown_10:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_model_LSTM_layer_call_and_return_conditional_losses_155962
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
$__inference_lstm_layer_call_fn_16823

inputs
unknown:	 ?
	unknown_0:	?
	unknown_1:
??
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_150052
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:????????? : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
)__inference_lstm_cell_layer_call_fn_18148

inputs
states_0
states_1
unknown:	 ?
	unknown_0:	?
	unknown_1:
??
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_142472
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:??????????2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:??????????2

Identity_2h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:????????? :??????????:??????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/0:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/1
?
?
B__inference_dense_2_layer_call_and_return_conditional_losses_18114

inputs1
matmul_readvariableop_resource:	?-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Softmaxl
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?

E__inference_model_LSTM_layer_call_and_return_conditional_losses_16675

inputsO
Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handleP
Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value	,
(text_vectorization_string_lookup_equal_y/
+text_vectorization_string_lookup_selectv2_t	4
 embedding_embedding_lookup_16271:
??I
2conv1d_conv1d_expanddims_1_readvariableop_resource:? 4
&conv1d_biasadd_readvariableop_resource: ?
,lstm_lstm_cell_split_readvariableop_resource:	 ?=
.lstm_lstm_cell_split_1_readvariableop_resource:	?:
&lstm_lstm_cell_readvariableop_resource:
??9
&dense_2_matmul_readvariableop_resource:	?5
'dense_2_biasadd_readvariableop_resource:
identity??conv1d/BiasAdd/ReadVariableOp?)conv1d/conv1d/ExpandDims_1/ReadVariableOp?dense_2/BiasAdd/ReadVariableOp?dense_2/MatMul/ReadVariableOp?embedding/embedding_lookup?lstm/lstm_cell/ReadVariableOp?lstm/lstm_cell/ReadVariableOp_1?lstm/lstm_cell/ReadVariableOp_2?lstm/lstm_cell/ReadVariableOp_3?#lstm/lstm_cell/split/ReadVariableOp?%lstm/lstm_cell/split_1/ReadVariableOp?
lstm/while?>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2?
text_vectorization/StringLowerStringLowerinputs*'
_output_shapes
:?????????2 
text_vectorization/StringLower?
%text_vectorization/StaticRegexReplaceStaticRegexReplace'text_vectorization/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite 2'
%text_vectorization/StaticRegexReplace?
text_vectorization/SqueezeSqueeze.text_vectorization/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????2
text_vectorization/Squeeze?
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B 2&
$text_vectorization/StringSplit/Const?
,text_vectorization/StringSplit/StringSplitV2StringSplitV2#text_vectorization/Squeeze:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:2.
,text_vectorization/StringSplit/StringSplitV2?
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        24
2text_vectorization/StringSplit/strided_slice/stack?
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       26
4text_vectorization/StringSplit/strided_slice/stack_1?
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      26
4text_vectorization/StringSplit/strided_slice/stack_2?
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2.
,text_vectorization/StringSplit/strided_slice?
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 26
4text_vectorization/StringSplit/strided_slice_1/stack?
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6text_vectorization/StringSplit/strided_slice_1/stack_1?
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6text_vectorization/StringSplit/strided_slice_1/stack_2?
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask20
.text_vectorization/StringSplit/strided_slice_1?
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:?????????2W
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2Y
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:2a
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2a
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: 2`
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod?
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : 2e
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: 2`
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: 2_
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :2a
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: 2_
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: 2_
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2?
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:?????????2d
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : 2^
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:?????????2Y
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum?
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R 2b
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2^
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:?????????2Y
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat?
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????2@
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2?
&text_vectorization/string_lookup/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0(text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:?????????2(
&text_vectorization/string_lookup/Equal?
)text_vectorization/string_lookup/SelectV2SelectV2*text_vectorization/string_lookup/Equal:z:0+text_vectorization_string_lookup_selectv2_tGtext_vectorization/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:?????????2+
)text_vectorization/string_lookup/SelectV2?
)text_vectorization/string_lookup/IdentityIdentity2text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:?????????2+
)text_vectorization/string_lookup/Identity?
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 21
/text_vectorization/RaggedToTensor/default_value?
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"????????!       2)
'text_vectorization/RaggedToTensor/Const?
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:02text_vectorization/string_lookup/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:0`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:?????????!*
num_row_partition_tensors*%
row_partition_types

ROW_SPLITS28
6text_vectorization/RaggedToTensor/RaggedTensorToTensor?
embedding/embedding_lookupResourceGather embedding_embedding_lookup_16271?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0",/job:localhost/replica:0/task:0/device:GPU:0*
Tindices0	*3
_class)
'%loc:@embedding/embedding_lookup/16271*,
_output_shapes
:?????????!?*
dtype02
embedding/embedding_lookup?
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*3
_class)
'%loc:@embedding/embedding_lookup/16271*,
_output_shapes
:?????????!?2%
#embedding/embedding_lookup/Identity?
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:?????????!?2'
%embedding/embedding_lookup/Identity_1?
conv1d/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
conv1d/conv1d/ExpandDims/dim?
conv1d/conv1d/ExpandDims
ExpandDims.embedding/embedding_lookup/Identity_1:output:0%conv1d/conv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:?????????!?2
conv1d/conv1d/ExpandDims?
)conv1d/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp2conv1d_conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:? *
dtype02+
)conv1d/conv1d/ExpandDims_1/ReadVariableOp?
conv1d/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
conv1d/conv1d/ExpandDims_1/dim?
conv1d/conv1d/ExpandDims_1
ExpandDims1conv1d/conv1d/ExpandDims_1/ReadVariableOp:value:0'conv1d/conv1d/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:? 2
conv1d/conv1d/ExpandDims_1?
conv1d/conv1dConv2D!conv1d/conv1d/ExpandDims:output:0#conv1d/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:?????????! *
paddingSAME*
strides
2
conv1d/conv1d?
conv1d/conv1d/SqueezeSqueezeconv1d/conv1d:output:0*
T0*+
_output_shapes
:?????????! *
squeeze_dims

?????????2
conv1d/conv1d/Squeeze?
conv1d/BiasAdd/ReadVariableOpReadVariableOp&conv1d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
conv1d/BiasAdd/ReadVariableOp?
conv1d/BiasAddBiasAddconv1d/conv1d/Squeeze:output:0%conv1d/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????! 2
conv1d/BiasAddq
conv1d/ReluReluconv1d/BiasAdd:output:0*
T0*+
_output_shapes
:?????????! 2
conv1d/Relu~
max_pooling1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
max_pooling1d/ExpandDims/dim?
max_pooling1d/ExpandDims
ExpandDimsconv1d/Relu:activations:0%max_pooling1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????! 2
max_pooling1d/ExpandDims?
max_pooling1d/MaxPoolMaxPool!max_pooling1d/ExpandDims:output:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2
max_pooling1d/MaxPool?
max_pooling1d/SqueezeSqueezemax_pooling1d/MaxPool:output:0*
T0*+
_output_shapes
:????????? *
squeeze_dims
2
max_pooling1d/Squeezef

lstm/ShapeShapemax_pooling1d/Squeeze:output:0*
T0*
_output_shapes
:2

lstm/Shape~
lstm/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm/strided_slice/stack?
lstm/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm/strided_slice/stack_1?
lstm/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm/strided_slice/stack_2?
lstm/strided_sliceStridedSlicelstm/Shape:output:0!lstm/strided_slice/stack:output:0#lstm/strided_slice/stack_1:output:0#lstm/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm/strided_sliceg
lstm/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm/zeros/mul/y?
lstm/zeros/mulMullstm/strided_slice:output:0lstm/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm/zeros/muli
lstm/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm/zeros/Less/y{
lstm/zeros/LessLesslstm/zeros/mul:z:0lstm/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm/zeros/Lessm
lstm/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
lstm/zeros/packed/1?
lstm/zeros/packedPacklstm/strided_slice:output:0lstm/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm/zeros/packedi
lstm/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm/zeros/Const?

lstm/zerosFilllstm/zeros/packed:output:0lstm/zeros/Const:output:0*
T0*(
_output_shapes
:??????????2

lstm/zerosk
lstm/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm/zeros_1/mul/y?
lstm/zeros_1/mulMullstm/strided_slice:output:0lstm/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm/zeros_1/mulm
lstm/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm/zeros_1/Less/y?
lstm/zeros_1/LessLesslstm/zeros_1/mul:z:0lstm/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm/zeros_1/Lessq
lstm/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
lstm/zeros_1/packed/1?
lstm/zeros_1/packedPacklstm/strided_slice:output:0lstm/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm/zeros_1/packedm
lstm/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm/zeros_1/Const?
lstm/zeros_1Filllstm/zeros_1/packed:output:0lstm/zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm/zeros_1
lstm/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm/transpose/perm?
lstm/transpose	Transposemax_pooling1d/Squeeze:output:0lstm/transpose/perm:output:0*
T0*+
_output_shapes
:????????? 2
lstm/transpose^
lstm/Shape_1Shapelstm/transpose:y:0*
T0*
_output_shapes
:2
lstm/Shape_1?
lstm/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm/strided_slice_1/stack?
lstm/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm/strided_slice_1/stack_1?
lstm/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm/strided_slice_1/stack_2?
lstm/strided_slice_1StridedSlicelstm/Shape_1:output:0#lstm/strided_slice_1/stack:output:0%lstm/strided_slice_1/stack_1:output:0%lstm/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm/strided_slice_1?
 lstm/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 lstm/TensorArrayV2/element_shape?
lstm/TensorArrayV2TensorListReserve)lstm/TensorArrayV2/element_shape:output:0lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm/TensorArrayV2?
:lstm/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2<
:lstm/TensorArrayUnstack/TensorListFromTensor/element_shape?
,lstm/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm/transpose:y:0Clstm/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02.
,lstm/TensorArrayUnstack/TensorListFromTensor?
lstm/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm/strided_slice_2/stack?
lstm/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm/strided_slice_2/stack_1?
lstm/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm/strided_slice_2/stack_2?
lstm/strided_slice_2StridedSlicelstm/transpose:y:0#lstm/strided_slice_2/stack:output:0%lstm/strided_slice_2/stack_1:output:0%lstm/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
lstm/strided_slice_2?
lstm/lstm_cell/ones_like/ShapeShapelstm/strided_slice_2:output:0*
T0*
_output_shapes
:2 
lstm/lstm_cell/ones_like/Shape?
lstm/lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2 
lstm/lstm_cell/ones_like/Const?
lstm/lstm_cell/ones_likeFill'lstm/lstm_cell/ones_like/Shape:output:0'lstm/lstm_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm/lstm_cell/ones_like?
lstm/lstm_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm/lstm_cell/dropout/Const?
lstm/lstm_cell/dropout/MulMul!lstm/lstm_cell/ones_like:output:0%lstm/lstm_cell/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm/lstm_cell/dropout/Mul?
lstm/lstm_cell/dropout/ShapeShape!lstm/lstm_cell/ones_like:output:0*
T0*
_output_shapes
:2
lstm/lstm_cell/dropout/Shape?
3lstm/lstm_cell/dropout/random_uniform/RandomUniformRandomUniform%lstm/lstm_cell/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???25
3lstm/lstm_cell/dropout/random_uniform/RandomUniform?
%lstm/lstm_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2'
%lstm/lstm_cell/dropout/GreaterEqual/y?
#lstm/lstm_cell/dropout/GreaterEqualGreaterEqual<lstm/lstm_cell/dropout/random_uniform/RandomUniform:output:0.lstm/lstm_cell/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2%
#lstm/lstm_cell/dropout/GreaterEqual?
lstm/lstm_cell/dropout/CastCast'lstm/lstm_cell/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm/lstm_cell/dropout/Cast?
lstm/lstm_cell/dropout/Mul_1Mullstm/lstm_cell/dropout/Mul:z:0lstm/lstm_cell/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm/lstm_cell/dropout/Mul_1?
lstm/lstm_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2 
lstm/lstm_cell/dropout_1/Const?
lstm/lstm_cell/dropout_1/MulMul!lstm/lstm_cell/ones_like:output:0'lstm/lstm_cell/dropout_1/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm/lstm_cell/dropout_1/Mul?
lstm/lstm_cell/dropout_1/ShapeShape!lstm/lstm_cell/ones_like:output:0*
T0*
_output_shapes
:2 
lstm/lstm_cell/dropout_1/Shape?
5lstm/lstm_cell/dropout_1/random_uniform/RandomUniformRandomUniform'lstm/lstm_cell/dropout_1/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???27
5lstm/lstm_cell/dropout_1/random_uniform/RandomUniform?
'lstm/lstm_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2)
'lstm/lstm_cell/dropout_1/GreaterEqual/y?
%lstm/lstm_cell/dropout_1/GreaterEqualGreaterEqual>lstm/lstm_cell/dropout_1/random_uniform/RandomUniform:output:00lstm/lstm_cell/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2'
%lstm/lstm_cell/dropout_1/GreaterEqual?
lstm/lstm_cell/dropout_1/CastCast)lstm/lstm_cell/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm/lstm_cell/dropout_1/Cast?
lstm/lstm_cell/dropout_1/Mul_1Mul lstm/lstm_cell/dropout_1/Mul:z:0!lstm/lstm_cell/dropout_1/Cast:y:0*
T0*'
_output_shapes
:????????? 2 
lstm/lstm_cell/dropout_1/Mul_1?
lstm/lstm_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2 
lstm/lstm_cell/dropout_2/Const?
lstm/lstm_cell/dropout_2/MulMul!lstm/lstm_cell/ones_like:output:0'lstm/lstm_cell/dropout_2/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm/lstm_cell/dropout_2/Mul?
lstm/lstm_cell/dropout_2/ShapeShape!lstm/lstm_cell/ones_like:output:0*
T0*
_output_shapes
:2 
lstm/lstm_cell/dropout_2/Shape?
5lstm/lstm_cell/dropout_2/random_uniform/RandomUniformRandomUniform'lstm/lstm_cell/dropout_2/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???27
5lstm/lstm_cell/dropout_2/random_uniform/RandomUniform?
'lstm/lstm_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2)
'lstm/lstm_cell/dropout_2/GreaterEqual/y?
%lstm/lstm_cell/dropout_2/GreaterEqualGreaterEqual>lstm/lstm_cell/dropout_2/random_uniform/RandomUniform:output:00lstm/lstm_cell/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2'
%lstm/lstm_cell/dropout_2/GreaterEqual?
lstm/lstm_cell/dropout_2/CastCast)lstm/lstm_cell/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm/lstm_cell/dropout_2/Cast?
lstm/lstm_cell/dropout_2/Mul_1Mul lstm/lstm_cell/dropout_2/Mul:z:0!lstm/lstm_cell/dropout_2/Cast:y:0*
T0*'
_output_shapes
:????????? 2 
lstm/lstm_cell/dropout_2/Mul_1?
lstm/lstm_cell/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2 
lstm/lstm_cell/dropout_3/Const?
lstm/lstm_cell/dropout_3/MulMul!lstm/lstm_cell/ones_like:output:0'lstm/lstm_cell/dropout_3/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm/lstm_cell/dropout_3/Mul?
lstm/lstm_cell/dropout_3/ShapeShape!lstm/lstm_cell/ones_like:output:0*
T0*
_output_shapes
:2 
lstm/lstm_cell/dropout_3/Shape?
5lstm/lstm_cell/dropout_3/random_uniform/RandomUniformRandomUniform'lstm/lstm_cell/dropout_3/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2?Ǩ27
5lstm/lstm_cell/dropout_3/random_uniform/RandomUniform?
'lstm/lstm_cell/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2)
'lstm/lstm_cell/dropout_3/GreaterEqual/y?
%lstm/lstm_cell/dropout_3/GreaterEqualGreaterEqual>lstm/lstm_cell/dropout_3/random_uniform/RandomUniform:output:00lstm/lstm_cell/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2'
%lstm/lstm_cell/dropout_3/GreaterEqual?
lstm/lstm_cell/dropout_3/CastCast)lstm/lstm_cell/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm/lstm_cell/dropout_3/Cast?
lstm/lstm_cell/dropout_3/Mul_1Mul lstm/lstm_cell/dropout_3/Mul:z:0!lstm/lstm_cell/dropout_3/Cast:y:0*
T0*'
_output_shapes
:????????? 2 
lstm/lstm_cell/dropout_3/Mul_1?
 lstm/lstm_cell/ones_like_1/ShapeShapelstm/zeros:output:0*
T0*
_output_shapes
:2"
 lstm/lstm_cell/ones_like_1/Shape?
 lstm/lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2"
 lstm/lstm_cell/ones_like_1/Const?
lstm/lstm_cell/ones_like_1Fill)lstm/lstm_cell/ones_like_1/Shape:output:0)lstm/lstm_cell/ones_like_1/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell/ones_like_1?
lstm/lstm_cell/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2 
lstm/lstm_cell/dropout_4/Const?
lstm/lstm_cell/dropout_4/MulMul#lstm/lstm_cell/ones_like_1:output:0'lstm/lstm_cell/dropout_4/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell/dropout_4/Mul?
lstm/lstm_cell/dropout_4/ShapeShape#lstm/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
:2 
lstm/lstm_cell/dropout_4/Shape?
5lstm/lstm_cell/dropout_4/random_uniform/RandomUniformRandomUniform'lstm/lstm_cell/dropout_4/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2??h27
5lstm/lstm_cell/dropout_4/random_uniform/RandomUniform?
'lstm/lstm_cell/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2)
'lstm/lstm_cell/dropout_4/GreaterEqual/y?
%lstm/lstm_cell/dropout_4/GreaterEqualGreaterEqual>lstm/lstm_cell/dropout_4/random_uniform/RandomUniform:output:00lstm/lstm_cell/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2'
%lstm/lstm_cell/dropout_4/GreaterEqual?
lstm/lstm_cell/dropout_4/CastCast)lstm/lstm_cell/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
lstm/lstm_cell/dropout_4/Cast?
lstm/lstm_cell/dropout_4/Mul_1Mul lstm/lstm_cell/dropout_4/Mul:z:0!lstm/lstm_cell/dropout_4/Cast:y:0*
T0*(
_output_shapes
:??????????2 
lstm/lstm_cell/dropout_4/Mul_1?
lstm/lstm_cell/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2 
lstm/lstm_cell/dropout_5/Const?
lstm/lstm_cell/dropout_5/MulMul#lstm/lstm_cell/ones_like_1:output:0'lstm/lstm_cell/dropout_5/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell/dropout_5/Mul?
lstm/lstm_cell/dropout_5/ShapeShape#lstm/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
:2 
lstm/lstm_cell/dropout_5/Shape?
5lstm/lstm_cell/dropout_5/random_uniform/RandomUniformRandomUniform'lstm/lstm_cell/dropout_5/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2?ִ27
5lstm/lstm_cell/dropout_5/random_uniform/RandomUniform?
'lstm/lstm_cell/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2)
'lstm/lstm_cell/dropout_5/GreaterEqual/y?
%lstm/lstm_cell/dropout_5/GreaterEqualGreaterEqual>lstm/lstm_cell/dropout_5/random_uniform/RandomUniform:output:00lstm/lstm_cell/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2'
%lstm/lstm_cell/dropout_5/GreaterEqual?
lstm/lstm_cell/dropout_5/CastCast)lstm/lstm_cell/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
lstm/lstm_cell/dropout_5/Cast?
lstm/lstm_cell/dropout_5/Mul_1Mul lstm/lstm_cell/dropout_5/Mul:z:0!lstm/lstm_cell/dropout_5/Cast:y:0*
T0*(
_output_shapes
:??????????2 
lstm/lstm_cell/dropout_5/Mul_1?
lstm/lstm_cell/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2 
lstm/lstm_cell/dropout_6/Const?
lstm/lstm_cell/dropout_6/MulMul#lstm/lstm_cell/ones_like_1:output:0'lstm/lstm_cell/dropout_6/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell/dropout_6/Mul?
lstm/lstm_cell/dropout_6/ShapeShape#lstm/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
:2 
lstm/lstm_cell/dropout_6/Shape?
5lstm/lstm_cell/dropout_6/random_uniform/RandomUniformRandomUniform'lstm/lstm_cell/dropout_6/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???27
5lstm/lstm_cell/dropout_6/random_uniform/RandomUniform?
'lstm/lstm_cell/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2)
'lstm/lstm_cell/dropout_6/GreaterEqual/y?
%lstm/lstm_cell/dropout_6/GreaterEqualGreaterEqual>lstm/lstm_cell/dropout_6/random_uniform/RandomUniform:output:00lstm/lstm_cell/dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2'
%lstm/lstm_cell/dropout_6/GreaterEqual?
lstm/lstm_cell/dropout_6/CastCast)lstm/lstm_cell/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
lstm/lstm_cell/dropout_6/Cast?
lstm/lstm_cell/dropout_6/Mul_1Mul lstm/lstm_cell/dropout_6/Mul:z:0!lstm/lstm_cell/dropout_6/Cast:y:0*
T0*(
_output_shapes
:??????????2 
lstm/lstm_cell/dropout_6/Mul_1?
lstm/lstm_cell/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2 
lstm/lstm_cell/dropout_7/Const?
lstm/lstm_cell/dropout_7/MulMul#lstm/lstm_cell/ones_like_1:output:0'lstm/lstm_cell/dropout_7/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell/dropout_7/Mul?
lstm/lstm_cell/dropout_7/ShapeShape#lstm/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
:2 
lstm/lstm_cell/dropout_7/Shape?
5lstm/lstm_cell/dropout_7/random_uniform/RandomUniformRandomUniform'lstm/lstm_cell/dropout_7/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???27
5lstm/lstm_cell/dropout_7/random_uniform/RandomUniform?
'lstm/lstm_cell/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2)
'lstm/lstm_cell/dropout_7/GreaterEqual/y?
%lstm/lstm_cell/dropout_7/GreaterEqualGreaterEqual>lstm/lstm_cell/dropout_7/random_uniform/RandomUniform:output:00lstm/lstm_cell/dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2'
%lstm/lstm_cell/dropout_7/GreaterEqual?
lstm/lstm_cell/dropout_7/CastCast)lstm/lstm_cell/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
lstm/lstm_cell/dropout_7/Cast?
lstm/lstm_cell/dropout_7/Mul_1Mul lstm/lstm_cell/dropout_7/Mul:z:0!lstm/lstm_cell/dropout_7/Cast:y:0*
T0*(
_output_shapes
:??????????2 
lstm/lstm_cell/dropout_7/Mul_1?
lstm/lstm_cell/mulMullstm/strided_slice_2:output:0 lstm/lstm_cell/dropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm/lstm_cell/mul?
lstm/lstm_cell/mul_1Mullstm/strided_slice_2:output:0"lstm/lstm_cell/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm/lstm_cell/mul_1?
lstm/lstm_cell/mul_2Mullstm/strided_slice_2:output:0"lstm/lstm_cell/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm/lstm_cell/mul_2?
lstm/lstm_cell/mul_3Mullstm/strided_slice_2:output:0"lstm/lstm_cell/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm/lstm_cell/mul_3?
lstm/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2 
lstm/lstm_cell/split/split_dim?
#lstm/lstm_cell/split/ReadVariableOpReadVariableOp,lstm_lstm_cell_split_readvariableop_resource*
_output_shapes
:	 ?*
dtype02%
#lstm/lstm_cell/split/ReadVariableOp?
lstm/lstm_cell/splitSplit'lstm/lstm_cell/split/split_dim:output:0+lstm/lstm_cell/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	 ?:	 ?:	 ?:	 ?*
	num_split2
lstm/lstm_cell/split?
lstm/lstm_cell/MatMulMatMullstm/lstm_cell/mul:z:0lstm/lstm_cell/split:output:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell/MatMul?
lstm/lstm_cell/MatMul_1MatMullstm/lstm_cell/mul_1:z:0lstm/lstm_cell/split:output:1*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell/MatMul_1?
lstm/lstm_cell/MatMul_2MatMullstm/lstm_cell/mul_2:z:0lstm/lstm_cell/split:output:2*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell/MatMul_2?
lstm/lstm_cell/MatMul_3MatMullstm/lstm_cell/mul_3:z:0lstm/lstm_cell/split:output:3*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell/MatMul_3?
 lstm/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2"
 lstm/lstm_cell/split_1/split_dim?
%lstm/lstm_cell/split_1/ReadVariableOpReadVariableOp.lstm_lstm_cell_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02'
%lstm/lstm_cell/split_1/ReadVariableOp?
lstm/lstm_cell/split_1Split)lstm/lstm_cell/split_1/split_dim:output:0-lstm/lstm_cell/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:?:?:?:?*
	num_split2
lstm/lstm_cell/split_1?
lstm/lstm_cell/BiasAddBiasAddlstm/lstm_cell/MatMul:product:0lstm/lstm_cell/split_1:output:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell/BiasAdd?
lstm/lstm_cell/BiasAdd_1BiasAdd!lstm/lstm_cell/MatMul_1:product:0lstm/lstm_cell/split_1:output:1*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell/BiasAdd_1?
lstm/lstm_cell/BiasAdd_2BiasAdd!lstm/lstm_cell/MatMul_2:product:0lstm/lstm_cell/split_1:output:2*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell/BiasAdd_2?
lstm/lstm_cell/BiasAdd_3BiasAdd!lstm/lstm_cell/MatMul_3:product:0lstm/lstm_cell/split_1:output:3*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell/BiasAdd_3?
lstm/lstm_cell/mul_4Mullstm/zeros:output:0"lstm/lstm_cell/dropout_4/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell/mul_4?
lstm/lstm_cell/mul_5Mullstm/zeros:output:0"lstm/lstm_cell/dropout_5/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell/mul_5?
lstm/lstm_cell/mul_6Mullstm/zeros:output:0"lstm/lstm_cell/dropout_6/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell/mul_6?
lstm/lstm_cell/mul_7Mullstm/zeros:output:0"lstm/lstm_cell/dropout_7/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell/mul_7?
lstm/lstm_cell/ReadVariableOpReadVariableOp&lstm_lstm_cell_readvariableop_resource* 
_output_shapes
:
??*
dtype02
lstm/lstm_cell/ReadVariableOp?
"lstm/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm/lstm_cell/strided_slice/stack?
$lstm/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2&
$lstm/lstm_cell/strided_slice/stack_1?
$lstm/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm/lstm_cell/strided_slice/stack_2?
lstm/lstm_cell/strided_sliceStridedSlice%lstm/lstm_cell/ReadVariableOp:value:0+lstm/lstm_cell/strided_slice/stack:output:0-lstm/lstm_cell/strided_slice/stack_1:output:0-lstm/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
lstm/lstm_cell/strided_slice?
lstm/lstm_cell/MatMul_4MatMullstm/lstm_cell/mul_4:z:0%lstm/lstm_cell/strided_slice:output:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell/MatMul_4?
lstm/lstm_cell/addAddV2lstm/lstm_cell/BiasAdd:output:0!lstm/lstm_cell/MatMul_4:product:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell/add?
lstm/lstm_cell/SigmoidSigmoidlstm/lstm_cell/add:z:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell/Sigmoid?
lstm/lstm_cell/ReadVariableOp_1ReadVariableOp&lstm_lstm_cell_readvariableop_resource* 
_output_shapes
:
??*
dtype02!
lstm/lstm_cell/ReadVariableOp_1?
$lstm/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2&
$lstm/lstm_cell/strided_slice_1/stack?
&lstm/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2(
&lstm/lstm_cell/strided_slice_1/stack_1?
&lstm/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&lstm/lstm_cell/strided_slice_1/stack_2?
lstm/lstm_cell/strided_slice_1StridedSlice'lstm/lstm_cell/ReadVariableOp_1:value:0-lstm/lstm_cell/strided_slice_1/stack:output:0/lstm/lstm_cell/strided_slice_1/stack_1:output:0/lstm/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2 
lstm/lstm_cell/strided_slice_1?
lstm/lstm_cell/MatMul_5MatMullstm/lstm_cell/mul_5:z:0'lstm/lstm_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell/MatMul_5?
lstm/lstm_cell/add_1AddV2!lstm/lstm_cell/BiasAdd_1:output:0!lstm/lstm_cell/MatMul_5:product:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell/add_1?
lstm/lstm_cell/Sigmoid_1Sigmoidlstm/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell/Sigmoid_1?
lstm/lstm_cell/mul_8Mullstm/lstm_cell/Sigmoid_1:y:0lstm/zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell/mul_8?
lstm/lstm_cell/ReadVariableOp_2ReadVariableOp&lstm_lstm_cell_readvariableop_resource* 
_output_shapes
:
??*
dtype02!
lstm/lstm_cell/ReadVariableOp_2?
$lstm/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2&
$lstm/lstm_cell/strided_slice_2/stack?
&lstm/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?  2(
&lstm/lstm_cell/strided_slice_2/stack_1?
&lstm/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&lstm/lstm_cell/strided_slice_2/stack_2?
lstm/lstm_cell/strided_slice_2StridedSlice'lstm/lstm_cell/ReadVariableOp_2:value:0-lstm/lstm_cell/strided_slice_2/stack:output:0/lstm/lstm_cell/strided_slice_2/stack_1:output:0/lstm/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2 
lstm/lstm_cell/strided_slice_2?
lstm/lstm_cell/MatMul_6MatMullstm/lstm_cell/mul_6:z:0'lstm/lstm_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell/MatMul_6?
lstm/lstm_cell/add_2AddV2!lstm/lstm_cell/BiasAdd_2:output:0!lstm/lstm_cell/MatMul_6:product:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell/add_2
lstm/lstm_cell/TanhTanhlstm/lstm_cell/add_2:z:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell/Tanh?
lstm/lstm_cell/mul_9Mullstm/lstm_cell/Sigmoid:y:0lstm/lstm_cell/Tanh:y:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell/mul_9?
lstm/lstm_cell/add_3AddV2lstm/lstm_cell/mul_8:z:0lstm/lstm_cell/mul_9:z:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell/add_3?
lstm/lstm_cell/ReadVariableOp_3ReadVariableOp&lstm_lstm_cell_readvariableop_resource* 
_output_shapes
:
??*
dtype02!
lstm/lstm_cell/ReadVariableOp_3?
$lstm/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?  2&
$lstm/lstm_cell/strided_slice_3/stack?
&lstm/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2(
&lstm/lstm_cell/strided_slice_3/stack_1?
&lstm/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&lstm/lstm_cell/strided_slice_3/stack_2?
lstm/lstm_cell/strided_slice_3StridedSlice'lstm/lstm_cell/ReadVariableOp_3:value:0-lstm/lstm_cell/strided_slice_3/stack:output:0/lstm/lstm_cell/strided_slice_3/stack_1:output:0/lstm/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2 
lstm/lstm_cell/strided_slice_3?
lstm/lstm_cell/MatMul_7MatMullstm/lstm_cell/mul_7:z:0'lstm/lstm_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell/MatMul_7?
lstm/lstm_cell/add_4AddV2!lstm/lstm_cell/BiasAdd_3:output:0!lstm/lstm_cell/MatMul_7:product:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell/add_4?
lstm/lstm_cell/Sigmoid_2Sigmoidlstm/lstm_cell/add_4:z:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell/Sigmoid_2?
lstm/lstm_cell/Tanh_1Tanhlstm/lstm_cell/add_3:z:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell/Tanh_1?
lstm/lstm_cell/mul_10Mullstm/lstm_cell/Sigmoid_2:y:0lstm/lstm_cell/Tanh_1:y:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell/mul_10?
"lstm/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2$
"lstm/TensorArrayV2_1/element_shape?
lstm/TensorArrayV2_1TensorListReserve+lstm/TensorArrayV2_1/element_shape:output:0lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm/TensorArrayV2_1X
	lstm/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
	lstm/time?
lstm/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
lstm/while/maximum_iterationst
lstm/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm/while/loop_counter?

lstm/whileWhile lstm/while/loop_counter:output:0&lstm/while/maximum_iterations:output:0lstm/time:output:0lstm/TensorArrayV2_1:handle:0lstm/zeros:output:0lstm/zeros_1:output:0lstm/strided_slice_1:output:0<lstm/TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_lstm_cell_split_readvariableop_resource.lstm_lstm_cell_split_1_readvariableop_resource&lstm_lstm_cell_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *!
bodyR
lstm_while_body_16470*!
condR
lstm_while_cond_16469*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2

lstm/while?
5lstm/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   27
5lstm/TensorArrayV2Stack/TensorListStack/element_shape?
'lstm/TensorArrayV2Stack/TensorListStackTensorListStacklstm/while:output:3>lstm/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02)
'lstm/TensorArrayV2Stack/TensorListStack?
lstm/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
lstm/strided_slice_3/stack?
lstm/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
lstm/strided_slice_3/stack_1?
lstm/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm/strided_slice_3/stack_2?
lstm/strided_slice_3StridedSlice0lstm/TensorArrayV2Stack/TensorListStack:tensor:0#lstm/strided_slice_3/stack:output:0%lstm/strided_slice_3/stack_1:output:0%lstm/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
lstm/strided_slice_3?
lstm/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm/transpose_1/perm?
lstm/transpose_1	Transpose0lstm/TensorArrayV2Stack/TensorListStack:tensor:0lstm/transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
lstm/transpose_1p
lstm/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm/runtime?
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
dense_2/MatMul/ReadVariableOp?
dense_2/MatMulMatMullstm/strided_slice_3:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_2/MatMul?
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_2/BiasAdd/ReadVariableOp?
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_2/BiasAddy
dense_2/SoftmaxSoftmaxdense_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_2/Softmaxt
IdentityIdentitydense_2/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp^conv1d/BiasAdd/ReadVariableOp*^conv1d/conv1d/ExpandDims_1/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^embedding/embedding_lookup^lstm/lstm_cell/ReadVariableOp ^lstm/lstm_cell/ReadVariableOp_1 ^lstm/lstm_cell/ReadVariableOp_2 ^lstm/lstm_cell/ReadVariableOp_3$^lstm/lstm_cell/split/ReadVariableOp&^lstm/lstm_cell/split_1/ReadVariableOp^lstm/while?^text_vectorization/string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : : : : : 2>
conv1d/BiasAdd/ReadVariableOpconv1d/BiasAdd/ReadVariableOp2V
)conv1d/conv1d/ExpandDims_1/ReadVariableOp)conv1d/conv1d/ExpandDims_1/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp28
embedding/embedding_lookupembedding/embedding_lookup2>
lstm/lstm_cell/ReadVariableOplstm/lstm_cell/ReadVariableOp2B
lstm/lstm_cell/ReadVariableOp_1lstm/lstm_cell/ReadVariableOp_12B
lstm/lstm_cell/ReadVariableOp_2lstm/lstm_cell/ReadVariableOp_22B
lstm/lstm_cell/ReadVariableOp_3lstm/lstm_cell/ReadVariableOp_32J
#lstm/lstm_cell/split/ReadVariableOp#lstm/lstm_cell/split/ReadVariableOp2N
%lstm/lstm_cell/split_1/ReadVariableOp%lstm/lstm_cell/split_1/ReadVariableOp2

lstm/while
lstm/while2?
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
I
-__inference_max_pooling1d_layer_call_fn_16774

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_max_pooling1d_layer_call_and_return_conditional_losses_147532
PartitionedCallp
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????! :S O
+
_output_shapes
:?????????! 
 
_user_specified_nameinputs
ل
?	
while_body_14871
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0B
/while_lstm_cell_split_readvariableop_resource_0:	 ?@
1while_lstm_cell_split_1_readvariableop_resource_0:	?=
)while_lstm_cell_readvariableop_resource_0:
??
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor@
-while_lstm_cell_split_readvariableop_resource:	 ?>
/while_lstm_cell_split_1_readvariableop_resource:	?;
'while_lstm_cell_readvariableop_resource:
????while/lstm_cell/ReadVariableOp? while/lstm_cell/ReadVariableOp_1? while/lstm_cell/ReadVariableOp_2? while/lstm_cell/ReadVariableOp_3?$while/lstm_cell/split/ReadVariableOp?&while/lstm_cell/split_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:????????? *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
while/lstm_cell/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2!
while/lstm_cell/ones_like/Shape?
while/lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/lstm_cell/ones_like/Const?
while/lstm_cell/ones_likeFill(while/lstm_cell/ones_like/Shape:output:0(while/lstm_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell/ones_like?
!while/lstm_cell/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2#
!while/lstm_cell/ones_like_1/Shape?
!while/lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!while/lstm_cell/ones_like_1/Const?
while/lstm_cell/ones_like_1Fill*while/lstm_cell/ones_like_1/Shape:output:0*while/lstm_cell/ones_like_1/Const:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/ones_like_1?
while/lstm_cell/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell/mul?
while/lstm_cell/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell/mul_1?
while/lstm_cell/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell/mul_2?
while/lstm_cell/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell/mul_3?
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2!
while/lstm_cell/split/split_dim?
$while/lstm_cell/split/ReadVariableOpReadVariableOp/while_lstm_cell_split_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02&
$while/lstm_cell/split/ReadVariableOp?
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0,while/lstm_cell/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	 ?:	 ?:	 ?:	 ?*
	num_split2
while/lstm_cell/split?
while/lstm_cell/MatMulMatMulwhile/lstm_cell/mul:z:0while/lstm_cell/split:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/MatMul?
while/lstm_cell/MatMul_1MatMulwhile/lstm_cell/mul_1:z:0while/lstm_cell/split:output:1*
T0*(
_output_shapes
:??????????2
while/lstm_cell/MatMul_1?
while/lstm_cell/MatMul_2MatMulwhile/lstm_cell/mul_2:z:0while/lstm_cell/split:output:2*
T0*(
_output_shapes
:??????????2
while/lstm_cell/MatMul_2?
while/lstm_cell/MatMul_3MatMulwhile/lstm_cell/mul_3:z:0while/lstm_cell/split:output:3*
T0*(
_output_shapes
:??????????2
while/lstm_cell/MatMul_3?
!while/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2#
!while/lstm_cell/split_1/split_dim?
&while/lstm_cell/split_1/ReadVariableOpReadVariableOp1while_lstm_cell_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype02(
&while/lstm_cell/split_1/ReadVariableOp?
while/lstm_cell/split_1Split*while/lstm_cell/split_1/split_dim:output:0.while/lstm_cell/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:?:?:?:?*
	num_split2
while/lstm_cell/split_1?
while/lstm_cell/BiasAddBiasAdd while/lstm_cell/MatMul:product:0 while/lstm_cell/split_1:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/BiasAdd?
while/lstm_cell/BiasAdd_1BiasAdd"while/lstm_cell/MatMul_1:product:0 while/lstm_cell/split_1:output:1*
T0*(
_output_shapes
:??????????2
while/lstm_cell/BiasAdd_1?
while/lstm_cell/BiasAdd_2BiasAdd"while/lstm_cell/MatMul_2:product:0 while/lstm_cell/split_1:output:2*
T0*(
_output_shapes
:??????????2
while/lstm_cell/BiasAdd_2?
while/lstm_cell/BiasAdd_3BiasAdd"while/lstm_cell/MatMul_3:product:0 while/lstm_cell/split_1:output:3*
T0*(
_output_shapes
:??????????2
while/lstm_cell/BiasAdd_3?
while/lstm_cell/mul_4Mulwhile_placeholder_2$while/lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul_4?
while/lstm_cell/mul_5Mulwhile_placeholder_2$while/lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul_5?
while/lstm_cell/mul_6Mulwhile_placeholder_2$while/lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul_6?
while/lstm_cell/mul_7Mulwhile_placeholder_2$while/lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul_7?
while/lstm_cell/ReadVariableOpReadVariableOp)while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02 
while/lstm_cell/ReadVariableOp?
#while/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2%
#while/lstm_cell/strided_slice/stack?
%while/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2'
%while/lstm_cell/strided_slice/stack_1?
%while/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2'
%while/lstm_cell/strided_slice/stack_2?
while/lstm_cell/strided_sliceStridedSlice&while/lstm_cell/ReadVariableOp:value:0,while/lstm_cell/strided_slice/stack:output:0.while/lstm_cell/strided_slice/stack_1:output:0.while/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
while/lstm_cell/strided_slice?
while/lstm_cell/MatMul_4MatMulwhile/lstm_cell/mul_4:z:0&while/lstm_cell/strided_slice:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/MatMul_4?
while/lstm_cell/addAddV2 while/lstm_cell/BiasAdd:output:0"while/lstm_cell/MatMul_4:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/add?
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/add:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/Sigmoid?
 while/lstm_cell/ReadVariableOp_1ReadVariableOp)while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02"
 while/lstm_cell/ReadVariableOp_1?
%while/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2'
%while/lstm_cell/strided_slice_1/stack?
'while/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2)
'while/lstm_cell/strided_slice_1/stack_1?
'while/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell/strided_slice_1/stack_2?
while/lstm_cell/strided_slice_1StridedSlice(while/lstm_cell/ReadVariableOp_1:value:0.while/lstm_cell/strided_slice_1/stack:output:00while/lstm_cell/strided_slice_1/stack_1:output:00while/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2!
while/lstm_cell/strided_slice_1?
while/lstm_cell/MatMul_5MatMulwhile/lstm_cell/mul_5:z:0(while/lstm_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/MatMul_5?
while/lstm_cell/add_1AddV2"while/lstm_cell/BiasAdd_1:output:0"while/lstm_cell/MatMul_5:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/add_1?
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/Sigmoid_1?
while/lstm_cell/mul_8Mulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul_8?
 while/lstm_cell/ReadVariableOp_2ReadVariableOp)while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02"
 while/lstm_cell/ReadVariableOp_2?
%while/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2'
%while/lstm_cell/strided_slice_2/stack?
'while/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?  2)
'while/lstm_cell/strided_slice_2/stack_1?
'while/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell/strided_slice_2/stack_2?
while/lstm_cell/strided_slice_2StridedSlice(while/lstm_cell/ReadVariableOp_2:value:0.while/lstm_cell/strided_slice_2/stack:output:00while/lstm_cell/strided_slice_2/stack_1:output:00while/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2!
while/lstm_cell/strided_slice_2?
while/lstm_cell/MatMul_6MatMulwhile/lstm_cell/mul_6:z:0(while/lstm_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/MatMul_6?
while/lstm_cell/add_2AddV2"while/lstm_cell/BiasAdd_2:output:0"while/lstm_cell/MatMul_6:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/add_2?
while/lstm_cell/TanhTanhwhile/lstm_cell/add_2:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/Tanh?
while/lstm_cell/mul_9Mulwhile/lstm_cell/Sigmoid:y:0while/lstm_cell/Tanh:y:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul_9?
while/lstm_cell/add_3AddV2while/lstm_cell/mul_8:z:0while/lstm_cell/mul_9:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/add_3?
 while/lstm_cell/ReadVariableOp_3ReadVariableOp)while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02"
 while/lstm_cell/ReadVariableOp_3?
%while/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?  2'
%while/lstm_cell/strided_slice_3/stack?
'while/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2)
'while/lstm_cell/strided_slice_3/stack_1?
'while/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell/strided_slice_3/stack_2?
while/lstm_cell/strided_slice_3StridedSlice(while/lstm_cell/ReadVariableOp_3:value:0.while/lstm_cell/strided_slice_3/stack:output:00while/lstm_cell/strided_slice_3/stack_1:output:00while/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2!
while/lstm_cell/strided_slice_3?
while/lstm_cell/MatMul_7MatMulwhile/lstm_cell/mul_7:z:0(while/lstm_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/MatMul_7?
while/lstm_cell/add_4AddV2"while/lstm_cell/BiasAdd_3:output:0"while/lstm_cell/MatMul_7:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/add_4?
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/add_4:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/Sigmoid_2?
while/lstm_cell/Tanh_1Tanhwhile/lstm_cell/add_3:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/Tanh_1?
while/lstm_cell/mul_10Mulwhile/lstm_cell/Sigmoid_2:y:0while/lstm_cell/Tanh_1:y:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul_10?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_10:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell/mul_10:z:0^while/NoOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell/add_3:z:0^while/NoOp*
T0*(
_output_shapes
:??????????2
while/Identity_5?

while/NoOpNoOp^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"T
'while_lstm_cell_readvariableop_resource)while_lstm_cell_readvariableop_resource_0"d
/while_lstm_cell_split_1_readvariableop_resource1while_lstm_cell_split_1_readvariableop_resource_0"`
-while_lstm_cell_split_readvariableop_resource/while_lstm_cell_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2@
while/lstm_cell/ReadVariableOpwhile/lstm_cell/ReadVariableOp2D
 while/lstm_cell/ReadVariableOp_1 while/lstm_cell/ReadVariableOp_12D
 while/lstm_cell/ReadVariableOp_2 while/lstm_cell/ReadVariableOp_22D
 while/lstm_cell/ReadVariableOp_3 while/lstm_cell/ReadVariableOp_32L
$while/lstm_cell/split/ReadVariableOp$while/lstm_cell/split/ReadVariableOp2P
&while/lstm_cell/split_1/ReadVariableOp&while/lstm_cell/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?E
?
?__inference_lstm_layer_call_and_return_conditional_losses_14394

inputs"
lstm_cell_14312:	 ?
lstm_cell_14314:	?#
lstm_cell_14316:
??
identity??!lstm_cell/StatefulPartitionedCall?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :?????????????????? 2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_2?
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_14312lstm_cell_14314lstm_cell_14316*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_142472#
!lstm_cell/StatefulPartitionedCall?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_14312lstm_cell_14314lstm_cell_14316*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_14325*
condR
while_cond_14324*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:???????????????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimet
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityz
NoOpNoOp"^lstm_cell/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:?????????????????? : : : 2F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :?????????????????? 
 
_user_specified_nameinputs
?
?
)__inference_lstm_cell_layer_call_fn_18131

inputs
states_0
states_1
unknown:	 ?
	unknown_0:	?
	unknown_1:
??
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_139872
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:??????????2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:??????????2

Identity_2h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:????????? :??????????:??????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/0:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/1
?%
?
while_body_14001
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*
while_lstm_cell_14025_0:	 ?&
while_lstm_cell_14027_0:	?+
while_lstm_cell_14029_0:
??
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor(
while_lstm_cell_14025:	 ?$
while_lstm_cell_14027:	?)
while_lstm_cell_14029:
????'while/lstm_cell/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:????????? *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
'while/lstm_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_14025_0while_lstm_cell_14027_0while_lstm_cell_14029_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_139872)
'while/lstm_cell/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder0while/lstm_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity0while/lstm_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identity0while/lstm_cell/StatefulPartitionedCall:output:2^while/NoOp*
T0*(
_output_shapes
:??????????2
while/Identity_5?

while/NoOpNoOp(^while/lstm_cell/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"0
while_lstm_cell_14025while_lstm_cell_14025_0"0
while_lstm_cell_14027while_lstm_cell_14027_0"0
while_lstm_cell_14029while_lstm_cell_14029_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2R
'while/lstm_cell/StatefulPartitionedCall'while/lstm_cell/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
*
__inference_<lambda>_18449
identityS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
ConstQ
IdentityIdentityConst:output:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
?
A__inference_conv1d_layer_call_and_return_conditional_losses_16764

inputsB
+conv1d_expanddims_1_readvariableop_resource:? -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?"conv1d/ExpandDims_1/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
conv1d/ExpandDims/dim?
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:?????????!?2
conv1d/ExpandDims?
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:? *
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim?
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:? 2
conv1d/ExpandDims_1?
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:?????????! *
paddingSAME*
strides
2
conv1d?
conv1d/SqueezeSqueezeconv1d:output:0*
T0*+
_output_shapes
:?????????! *
squeeze_dims

?????????2
conv1d/Squeeze?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????! 2	
BiasAdd\
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:?????????! 2
Reluq
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:?????????! 2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????!?: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:T P
,
_output_shapes
:?????????!?
 
_user_specified_nameinputs
?

?
D__inference_embedding_layer_call_and_return_conditional_losses_14720

inputs	*
embedding_lookup_14714:
??
identity??embedding_lookup?
embedding_lookupResourceGatherembedding_lookup_14714inputs",/job:localhost/replica:0/task:0/device:GPU:0*
Tindices0	*)
_class
loc:@embedding_lookup/14714*,
_output_shapes
:?????????!?*
dtype02
embedding_lookup?
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*)
_class
loc:@embedding_lookup/14714*,
_output_shapes
:?????????!?2
embedding_lookup/Identity?
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:?????????!?2
embedding_lookup/Identity_1?
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*,
_output_shapes
:?????????!?2

Identitya
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????!: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:?????????!
 
_user_specified_nameinputs
??
?
?__inference_lstm_layer_call_and_return_conditional_losses_17464
inputs_0:
'lstm_cell_split_readvariableop_resource:	 ?8
)lstm_cell_split_1_readvariableop_resource:	?5
!lstm_cell_readvariableop_resource:
??
identity??lstm_cell/ReadVariableOp?lstm_cell/ReadVariableOp_1?lstm_cell/ReadVariableOp_2?lstm_cell/ReadVariableOp_3?lstm_cell/split/ReadVariableOp? lstm_cell/split_1/ReadVariableOp?whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :?????????????????? 2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_2~
lstm_cell/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
lstm_cell/ones_like/Shape{
lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell/ones_like/Const?
lstm_cell/ones_likeFill"lstm_cell/ones_like/Shape:output:0"lstm_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell/ones_likew
lstm_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell/dropout/Const?
lstm_cell/dropout/MulMullstm_cell/ones_like:output:0 lstm_cell/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell/dropout/Mul~
lstm_cell/dropout/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell/dropout/Shape?
.lstm_cell/dropout/random_uniform/RandomUniformRandomUniform lstm_cell/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???20
.lstm_cell/dropout/random_uniform/RandomUniform?
 lstm_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2"
 lstm_cell/dropout/GreaterEqual/y?
lstm_cell/dropout/GreaterEqualGreaterEqual7lstm_cell/dropout/random_uniform/RandomUniform:output:0)lstm_cell/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2 
lstm_cell/dropout/GreaterEqual?
lstm_cell/dropout/CastCast"lstm_cell/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell/dropout/Cast?
lstm_cell/dropout/Mul_1Mullstm_cell/dropout/Mul:z:0lstm_cell/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell/dropout/Mul_1{
lstm_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell/dropout_1/Const?
lstm_cell/dropout_1/MulMullstm_cell/ones_like:output:0"lstm_cell/dropout_1/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell/dropout_1/Mul?
lstm_cell/dropout_1/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell/dropout_1/Shape?
0lstm_cell/dropout_1/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_1/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2?ǵ22
0lstm_cell/dropout_1/random_uniform/RandomUniform?
"lstm_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2$
"lstm_cell/dropout_1/GreaterEqual/y?
 lstm_cell/dropout_1/GreaterEqualGreaterEqual9lstm_cell/dropout_1/random_uniform/RandomUniform:output:0+lstm_cell/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2"
 lstm_cell/dropout_1/GreaterEqual?
lstm_cell/dropout_1/CastCast$lstm_cell/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell/dropout_1/Cast?
lstm_cell/dropout_1/Mul_1Mullstm_cell/dropout_1/Mul:z:0lstm_cell/dropout_1/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell/dropout_1/Mul_1{
lstm_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell/dropout_2/Const?
lstm_cell/dropout_2/MulMullstm_cell/ones_like:output:0"lstm_cell/dropout_2/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell/dropout_2/Mul?
lstm_cell/dropout_2/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell/dropout_2/Shape?
0lstm_cell/dropout_2/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_2/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2??/22
0lstm_cell/dropout_2/random_uniform/RandomUniform?
"lstm_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2$
"lstm_cell/dropout_2/GreaterEqual/y?
 lstm_cell/dropout_2/GreaterEqualGreaterEqual9lstm_cell/dropout_2/random_uniform/RandomUniform:output:0+lstm_cell/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2"
 lstm_cell/dropout_2/GreaterEqual?
lstm_cell/dropout_2/CastCast$lstm_cell/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell/dropout_2/Cast?
lstm_cell/dropout_2/Mul_1Mullstm_cell/dropout_2/Mul:z:0lstm_cell/dropout_2/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell/dropout_2/Mul_1{
lstm_cell/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell/dropout_3/Const?
lstm_cell/dropout_3/MulMullstm_cell/ones_like:output:0"lstm_cell/dropout_3/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell/dropout_3/Mul?
lstm_cell/dropout_3/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell/dropout_3/Shape?
0lstm_cell/dropout_3/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_3/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???22
0lstm_cell/dropout_3/random_uniform/RandomUniform?
"lstm_cell/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2$
"lstm_cell/dropout_3/GreaterEqual/y?
 lstm_cell/dropout_3/GreaterEqualGreaterEqual9lstm_cell/dropout_3/random_uniform/RandomUniform:output:0+lstm_cell/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2"
 lstm_cell/dropout_3/GreaterEqual?
lstm_cell/dropout_3/CastCast$lstm_cell/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell/dropout_3/Cast?
lstm_cell/dropout_3/Mul_1Mullstm_cell/dropout_3/Mul:z:0lstm_cell/dropout_3/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell/dropout_3/Mul_1x
lstm_cell/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell/ones_like_1/Shape
lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell/ones_like_1/Const?
lstm_cell/ones_like_1Fill$lstm_cell/ones_like_1/Shape:output:0$lstm_cell/ones_like_1/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/ones_like_1{
lstm_cell/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell/dropout_4/Const?
lstm_cell/dropout_4/MulMullstm_cell/ones_like_1:output:0"lstm_cell/dropout_4/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/dropout_4/Mul?
lstm_cell/dropout_4/ShapeShapelstm_cell/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell/dropout_4/Shape?
0lstm_cell/dropout_4/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_4/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???22
0lstm_cell/dropout_4/random_uniform/RandomUniform?
"lstm_cell/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2$
"lstm_cell/dropout_4/GreaterEqual/y?
 lstm_cell/dropout_4/GreaterEqualGreaterEqual9lstm_cell/dropout_4/random_uniform/RandomUniform:output:0+lstm_cell/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2"
 lstm_cell/dropout_4/GreaterEqual?
lstm_cell/dropout_4/CastCast$lstm_cell/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
lstm_cell/dropout_4/Cast?
lstm_cell/dropout_4/Mul_1Mullstm_cell/dropout_4/Mul:z:0lstm_cell/dropout_4/Cast:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell/dropout_4/Mul_1{
lstm_cell/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell/dropout_5/Const?
lstm_cell/dropout_5/MulMullstm_cell/ones_like_1:output:0"lstm_cell/dropout_5/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/dropout_5/Mul?
lstm_cell/dropout_5/ShapeShapelstm_cell/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell/dropout_5/Shape?
0lstm_cell/dropout_5/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_5/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2?ϡ22
0lstm_cell/dropout_5/random_uniform/RandomUniform?
"lstm_cell/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2$
"lstm_cell/dropout_5/GreaterEqual/y?
 lstm_cell/dropout_5/GreaterEqualGreaterEqual9lstm_cell/dropout_5/random_uniform/RandomUniform:output:0+lstm_cell/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2"
 lstm_cell/dropout_5/GreaterEqual?
lstm_cell/dropout_5/CastCast$lstm_cell/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
lstm_cell/dropout_5/Cast?
lstm_cell/dropout_5/Mul_1Mullstm_cell/dropout_5/Mul:z:0lstm_cell/dropout_5/Cast:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell/dropout_5/Mul_1{
lstm_cell/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell/dropout_6/Const?
lstm_cell/dropout_6/MulMullstm_cell/ones_like_1:output:0"lstm_cell/dropout_6/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/dropout_6/Mul?
lstm_cell/dropout_6/ShapeShapelstm_cell/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell/dropout_6/Shape?
0lstm_cell/dropout_6/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_6/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2Š?22
0lstm_cell/dropout_6/random_uniform/RandomUniform?
"lstm_cell/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2$
"lstm_cell/dropout_6/GreaterEqual/y?
 lstm_cell/dropout_6/GreaterEqualGreaterEqual9lstm_cell/dropout_6/random_uniform/RandomUniform:output:0+lstm_cell/dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2"
 lstm_cell/dropout_6/GreaterEqual?
lstm_cell/dropout_6/CastCast$lstm_cell/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
lstm_cell/dropout_6/Cast?
lstm_cell/dropout_6/Mul_1Mullstm_cell/dropout_6/Mul:z:0lstm_cell/dropout_6/Cast:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell/dropout_6/Mul_1{
lstm_cell/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell/dropout_7/Const?
lstm_cell/dropout_7/MulMullstm_cell/ones_like_1:output:0"lstm_cell/dropout_7/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/dropout_7/Mul?
lstm_cell/dropout_7/ShapeShapelstm_cell/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell/dropout_7/Shape?
0lstm_cell/dropout_7/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_7/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2?ǣ22
0lstm_cell/dropout_7/random_uniform/RandomUniform?
"lstm_cell/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2$
"lstm_cell/dropout_7/GreaterEqual/y?
 lstm_cell/dropout_7/GreaterEqualGreaterEqual9lstm_cell/dropout_7/random_uniform/RandomUniform:output:0+lstm_cell/dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2"
 lstm_cell/dropout_7/GreaterEqual?
lstm_cell/dropout_7/CastCast$lstm_cell/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
lstm_cell/dropout_7/Cast?
lstm_cell/dropout_7/Mul_1Mullstm_cell/dropout_7/Mul:z:0lstm_cell/dropout_7/Cast:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell/dropout_7/Mul_1?
lstm_cell/mulMulstrided_slice_2:output:0lstm_cell/dropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell/mul?
lstm_cell/mul_1Mulstrided_slice_2:output:0lstm_cell/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell/mul_1?
lstm_cell/mul_2Mulstrided_slice_2:output:0lstm_cell/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell/mul_2?
lstm_cell/mul_3Mulstrided_slice_2:output:0lstm_cell/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell/mul_3x
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell/split/split_dim?
lstm_cell/split/ReadVariableOpReadVariableOp'lstm_cell_split_readvariableop_resource*
_output_shapes
:	 ?*
dtype02 
lstm_cell/split/ReadVariableOp?
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0&lstm_cell/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	 ?:	 ?:	 ?:	 ?*
	num_split2
lstm_cell/split?
lstm_cell/MatMulMatMullstm_cell/mul:z:0lstm_cell/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/MatMul?
lstm_cell/MatMul_1MatMullstm_cell/mul_1:z:0lstm_cell/split:output:1*
T0*(
_output_shapes
:??????????2
lstm_cell/MatMul_1?
lstm_cell/MatMul_2MatMullstm_cell/mul_2:z:0lstm_cell/split:output:2*
T0*(
_output_shapes
:??????????2
lstm_cell/MatMul_2?
lstm_cell/MatMul_3MatMullstm_cell/mul_3:z:0lstm_cell/split:output:3*
T0*(
_output_shapes
:??????????2
lstm_cell/MatMul_3|
lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_cell/split_1/split_dim?
 lstm_cell/split_1/ReadVariableOpReadVariableOp)lstm_cell_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 lstm_cell/split_1/ReadVariableOp?
lstm_cell/split_1Split$lstm_cell/split_1/split_dim:output:0(lstm_cell/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:?:?:?:?*
	num_split2
lstm_cell/split_1?
lstm_cell/BiasAddBiasAddlstm_cell/MatMul:product:0lstm_cell/split_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/BiasAdd?
lstm_cell/BiasAdd_1BiasAddlstm_cell/MatMul_1:product:0lstm_cell/split_1:output:1*
T0*(
_output_shapes
:??????????2
lstm_cell/BiasAdd_1?
lstm_cell/BiasAdd_2BiasAddlstm_cell/MatMul_2:product:0lstm_cell/split_1:output:2*
T0*(
_output_shapes
:??????????2
lstm_cell/BiasAdd_2?
lstm_cell/BiasAdd_3BiasAddlstm_cell/MatMul_3:product:0lstm_cell/split_1:output:3*
T0*(
_output_shapes
:??????????2
lstm_cell/BiasAdd_3?
lstm_cell/mul_4Mulzeros:output:0lstm_cell/dropout_4/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul_4?
lstm_cell/mul_5Mulzeros:output:0lstm_cell/dropout_5/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul_5?
lstm_cell/mul_6Mulzeros:output:0lstm_cell/dropout_6/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul_6?
lstm_cell/mul_7Mulzeros:output:0lstm_cell/dropout_7/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul_7?
lstm_cell/ReadVariableOpReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
??*
dtype02
lstm_cell/ReadVariableOp?
lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
lstm_cell/strided_slice/stack?
lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2!
lstm_cell/strided_slice/stack_1?
lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2!
lstm_cell/strided_slice/stack_2?
lstm_cell/strided_sliceStridedSlice lstm_cell/ReadVariableOp:value:0&lstm_cell/strided_slice/stack:output:0(lstm_cell/strided_slice/stack_1:output:0(lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
lstm_cell/strided_slice?
lstm_cell/MatMul_4MatMullstm_cell/mul_4:z:0 lstm_cell/strided_slice:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/MatMul_4?
lstm_cell/addAddV2lstm_cell/BiasAdd:output:0lstm_cell/MatMul_4:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell/addw
lstm_cell/SigmoidSigmoidlstm_cell/add:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell/Sigmoid?
lstm_cell/ReadVariableOp_1ReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
??*
dtype02
lstm_cell/ReadVariableOp_1?
lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2!
lstm_cell/strided_slice_1/stack?
!lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2#
!lstm_cell/strided_slice_1/stack_1?
!lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell/strided_slice_1/stack_2?
lstm_cell/strided_slice_1StridedSlice"lstm_cell/ReadVariableOp_1:value:0(lstm_cell/strided_slice_1/stack:output:0*lstm_cell/strided_slice_1/stack_1:output:0*lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
lstm_cell/strided_slice_1?
lstm_cell/MatMul_5MatMullstm_cell/mul_5:z:0"lstm_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/MatMul_5?
lstm_cell/add_1AddV2lstm_cell/BiasAdd_1:output:0lstm_cell/MatMul_5:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell/add_1}
lstm_cell/Sigmoid_1Sigmoidlstm_cell/add_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell/Sigmoid_1?
lstm_cell/mul_8Mullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul_8?
lstm_cell/ReadVariableOp_2ReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
??*
dtype02
lstm_cell/ReadVariableOp_2?
lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2!
lstm_cell/strided_slice_2/stack?
!lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?  2#
!lstm_cell/strided_slice_2/stack_1?
!lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell/strided_slice_2/stack_2?
lstm_cell/strided_slice_2StridedSlice"lstm_cell/ReadVariableOp_2:value:0(lstm_cell/strided_slice_2/stack:output:0*lstm_cell/strided_slice_2/stack_1:output:0*lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
lstm_cell/strided_slice_2?
lstm_cell/MatMul_6MatMullstm_cell/mul_6:z:0"lstm_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/MatMul_6?
lstm_cell/add_2AddV2lstm_cell/BiasAdd_2:output:0lstm_cell/MatMul_6:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell/add_2p
lstm_cell/TanhTanhlstm_cell/add_2:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell/Tanh?
lstm_cell/mul_9Mullstm_cell/Sigmoid:y:0lstm_cell/Tanh:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul_9?
lstm_cell/add_3AddV2lstm_cell/mul_8:z:0lstm_cell/mul_9:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell/add_3?
lstm_cell/ReadVariableOp_3ReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
??*
dtype02
lstm_cell/ReadVariableOp_3?
lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?  2!
lstm_cell/strided_slice_3/stack?
!lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2#
!lstm_cell/strided_slice_3/stack_1?
!lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell/strided_slice_3/stack_2?
lstm_cell/strided_slice_3StridedSlice"lstm_cell/ReadVariableOp_3:value:0(lstm_cell/strided_slice_3/stack:output:0*lstm_cell/strided_slice_3/stack_1:output:0*lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
lstm_cell/strided_slice_3?
lstm_cell/MatMul_7MatMullstm_cell/mul_7:z:0"lstm_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/MatMul_7?
lstm_cell/add_4AddV2lstm_cell/BiasAdd_3:output:0lstm_cell/MatMul_7:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell/add_4}
lstm_cell/Sigmoid_2Sigmoidlstm_cell/add_4:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell/Sigmoid_2t
lstm_cell/Tanh_1Tanhlstm_cell/add_3:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell/Tanh_1?
lstm_cell/mul_10Mullstm_cell/Sigmoid_2:y:0lstm_cell/Tanh_1:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul_10?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0'lstm_cell_split_readvariableop_resource)lstm_cell_split_1_readvariableop_resource!lstm_cell_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_17266*
condR
while_cond_17265*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:???????????????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimet
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp^lstm_cell/ReadVariableOp^lstm_cell/ReadVariableOp_1^lstm_cell/ReadVariableOp_2^lstm_cell/ReadVariableOp_3^lstm_cell/split/ReadVariableOp!^lstm_cell/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:?????????????????? : : : 24
lstm_cell/ReadVariableOplstm_cell/ReadVariableOp28
lstm_cell/ReadVariableOp_1lstm_cell/ReadVariableOp_128
lstm_cell/ReadVariableOp_2lstm_cell/ReadVariableOp_228
lstm_cell/ReadVariableOp_3lstm_cell/ReadVariableOp_32@
lstm_cell/split/ReadVariableOplstm_cell/split/ReadVariableOp2D
 lstm_cell/split_1/ReadVariableOp lstm_cell/split_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :?????????????????? 
"
_user_specified_name
inputs/0
?
?
while_cond_16950
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_16950___redundant_placeholder03
/while_while_cond_16950___redundant_placeholder13
/while_while_cond_16950___redundant_placeholder23
/while_while_cond_16950___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?
?
__inference__initializer_183898
4key_value_init13373_lookuptableimportv2_table_handle0
,key_value_init13373_lookuptableimportv2_keys2
.key_value_init13373_lookuptableimportv2_values	
identity??'key_value_init13373/LookupTableImportV2?
'key_value_init13373/LookupTableImportV2LookupTableImportV24key_value_init13373_lookuptableimportv2_table_handle,key_value_init13373_lookuptableimportv2_keys.key_value_init13373_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 2)
'key_value_init13373/LookupTableImportV2P
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
ConstX
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: 2

Identityx
NoOpNoOp(^key_value_init13373/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
: :?:?2R
'key_value_init13373/LookupTableImportV2'key_value_init13373/LookupTableImportV2:!

_output_shapes	
:?:!

_output_shapes	
:?
?
?
while_cond_14870
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_14870___redundant_placeholder03
/while_while_cond_14870___redundant_placeholder13
/while_while_cond_14870___redundant_placeholder23
/while_while_cond_14870___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?
?
while_cond_17580
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_17580___redundant_placeholder03
/while_while_cond_17580___redundant_placeholder13
/while_while_cond_17580___redundant_placeholder23
/while_while_cond_17580___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?
?
*__inference_model_LSTM_layer_call_fn_15893

inputs
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:
?? 
	unknown_4:? 
	unknown_5: 
	unknown_6:	 ?
	unknown_7:	?
	unknown_8:
??
	unknown_9:	?

unknown_10:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_model_LSTM_layer_call_and_return_conditional_losses_155962
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_14000
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_14000___redundant_placeholder03
/while_while_cond_14000___redundant_placeholder13
/while_while_cond_14000___redundant_placeholder23
/while_while_cond_14000___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?
?
while_cond_17895
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_17895___redundant_placeholder03
/while_while_cond_17895___redundant_placeholder13
/while_while_cond_17895___redundant_placeholder23
/while_while_cond_17895___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?E
?
?__inference_lstm_layer_call_and_return_conditional_losses_14070

inputs"
lstm_cell_13988:	 ?
lstm_cell_13990:	?#
lstm_cell_13992:
??
identity??!lstm_cell/StatefulPartitionedCall?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :?????????????????? 2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_2?
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_13988lstm_cell_13990lstm_cell_13992*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_139872#
!lstm_cell/StatefulPartitionedCall?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_13988lstm_cell_13990lstm_cell_13992*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_14001*
condR
while_cond_14000*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:???????????????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimet
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityz
NoOpNoOp"^lstm_cell/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:?????????????????? : : : 2F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :?????????????????? 
 
_user_specified_nameinputs
??
?
?__inference_lstm_layer_call_and_return_conditional_losses_15005

inputs:
'lstm_cell_split_readvariableop_resource:	 ?8
)lstm_cell_split_1_readvariableop_resource:	?5
!lstm_cell_readvariableop_resource:
??
identity??lstm_cell/ReadVariableOp?lstm_cell/ReadVariableOp_1?lstm_cell/ReadVariableOp_2?lstm_cell/ReadVariableOp_3?lstm_cell/split/ReadVariableOp? lstm_cell/split_1/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:????????? 2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_2~
lstm_cell/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
lstm_cell/ones_like/Shape{
lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell/ones_like/Const?
lstm_cell/ones_likeFill"lstm_cell/ones_like/Shape:output:0"lstm_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell/ones_likex
lstm_cell/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell/ones_like_1/Shape
lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell/ones_like_1/Const?
lstm_cell/ones_like_1Fill$lstm_cell/ones_like_1/Shape:output:0$lstm_cell/ones_like_1/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/ones_like_1?
lstm_cell/mulMulstrided_slice_2:output:0lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell/mul?
lstm_cell/mul_1Mulstrided_slice_2:output:0lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell/mul_1?
lstm_cell/mul_2Mulstrided_slice_2:output:0lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell/mul_2?
lstm_cell/mul_3Mulstrided_slice_2:output:0lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell/mul_3x
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell/split/split_dim?
lstm_cell/split/ReadVariableOpReadVariableOp'lstm_cell_split_readvariableop_resource*
_output_shapes
:	 ?*
dtype02 
lstm_cell/split/ReadVariableOp?
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0&lstm_cell/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	 ?:	 ?:	 ?:	 ?*
	num_split2
lstm_cell/split?
lstm_cell/MatMulMatMullstm_cell/mul:z:0lstm_cell/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/MatMul?
lstm_cell/MatMul_1MatMullstm_cell/mul_1:z:0lstm_cell/split:output:1*
T0*(
_output_shapes
:??????????2
lstm_cell/MatMul_1?
lstm_cell/MatMul_2MatMullstm_cell/mul_2:z:0lstm_cell/split:output:2*
T0*(
_output_shapes
:??????????2
lstm_cell/MatMul_2?
lstm_cell/MatMul_3MatMullstm_cell/mul_3:z:0lstm_cell/split:output:3*
T0*(
_output_shapes
:??????????2
lstm_cell/MatMul_3|
lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_cell/split_1/split_dim?
 lstm_cell/split_1/ReadVariableOpReadVariableOp)lstm_cell_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 lstm_cell/split_1/ReadVariableOp?
lstm_cell/split_1Split$lstm_cell/split_1/split_dim:output:0(lstm_cell/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:?:?:?:?*
	num_split2
lstm_cell/split_1?
lstm_cell/BiasAddBiasAddlstm_cell/MatMul:product:0lstm_cell/split_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/BiasAdd?
lstm_cell/BiasAdd_1BiasAddlstm_cell/MatMul_1:product:0lstm_cell/split_1:output:1*
T0*(
_output_shapes
:??????????2
lstm_cell/BiasAdd_1?
lstm_cell/BiasAdd_2BiasAddlstm_cell/MatMul_2:product:0lstm_cell/split_1:output:2*
T0*(
_output_shapes
:??????????2
lstm_cell/BiasAdd_2?
lstm_cell/BiasAdd_3BiasAddlstm_cell/MatMul_3:product:0lstm_cell/split_1:output:3*
T0*(
_output_shapes
:??????????2
lstm_cell/BiasAdd_3?
lstm_cell/mul_4Mulzeros:output:0lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul_4?
lstm_cell/mul_5Mulzeros:output:0lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul_5?
lstm_cell/mul_6Mulzeros:output:0lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul_6?
lstm_cell/mul_7Mulzeros:output:0lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul_7?
lstm_cell/ReadVariableOpReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
??*
dtype02
lstm_cell/ReadVariableOp?
lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
lstm_cell/strided_slice/stack?
lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2!
lstm_cell/strided_slice/stack_1?
lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2!
lstm_cell/strided_slice/stack_2?
lstm_cell/strided_sliceStridedSlice lstm_cell/ReadVariableOp:value:0&lstm_cell/strided_slice/stack:output:0(lstm_cell/strided_slice/stack_1:output:0(lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
lstm_cell/strided_slice?
lstm_cell/MatMul_4MatMullstm_cell/mul_4:z:0 lstm_cell/strided_slice:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/MatMul_4?
lstm_cell/addAddV2lstm_cell/BiasAdd:output:0lstm_cell/MatMul_4:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell/addw
lstm_cell/SigmoidSigmoidlstm_cell/add:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell/Sigmoid?
lstm_cell/ReadVariableOp_1ReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
??*
dtype02
lstm_cell/ReadVariableOp_1?
lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2!
lstm_cell/strided_slice_1/stack?
!lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2#
!lstm_cell/strided_slice_1/stack_1?
!lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell/strided_slice_1/stack_2?
lstm_cell/strided_slice_1StridedSlice"lstm_cell/ReadVariableOp_1:value:0(lstm_cell/strided_slice_1/stack:output:0*lstm_cell/strided_slice_1/stack_1:output:0*lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
lstm_cell/strided_slice_1?
lstm_cell/MatMul_5MatMullstm_cell/mul_5:z:0"lstm_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/MatMul_5?
lstm_cell/add_1AddV2lstm_cell/BiasAdd_1:output:0lstm_cell/MatMul_5:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell/add_1}
lstm_cell/Sigmoid_1Sigmoidlstm_cell/add_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell/Sigmoid_1?
lstm_cell/mul_8Mullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul_8?
lstm_cell/ReadVariableOp_2ReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
??*
dtype02
lstm_cell/ReadVariableOp_2?
lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2!
lstm_cell/strided_slice_2/stack?
!lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?  2#
!lstm_cell/strided_slice_2/stack_1?
!lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell/strided_slice_2/stack_2?
lstm_cell/strided_slice_2StridedSlice"lstm_cell/ReadVariableOp_2:value:0(lstm_cell/strided_slice_2/stack:output:0*lstm_cell/strided_slice_2/stack_1:output:0*lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
lstm_cell/strided_slice_2?
lstm_cell/MatMul_6MatMullstm_cell/mul_6:z:0"lstm_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/MatMul_6?
lstm_cell/add_2AddV2lstm_cell/BiasAdd_2:output:0lstm_cell/MatMul_6:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell/add_2p
lstm_cell/TanhTanhlstm_cell/add_2:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell/Tanh?
lstm_cell/mul_9Mullstm_cell/Sigmoid:y:0lstm_cell/Tanh:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul_9?
lstm_cell/add_3AddV2lstm_cell/mul_8:z:0lstm_cell/mul_9:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell/add_3?
lstm_cell/ReadVariableOp_3ReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
??*
dtype02
lstm_cell/ReadVariableOp_3?
lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?  2!
lstm_cell/strided_slice_3/stack?
!lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2#
!lstm_cell/strided_slice_3/stack_1?
!lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell/strided_slice_3/stack_2?
lstm_cell/strided_slice_3StridedSlice"lstm_cell/ReadVariableOp_3:value:0(lstm_cell/strided_slice_3/stack:output:0*lstm_cell/strided_slice_3/stack_1:output:0*lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
lstm_cell/strided_slice_3?
lstm_cell/MatMul_7MatMullstm_cell/mul_7:z:0"lstm_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/MatMul_7?
lstm_cell/add_4AddV2lstm_cell/BiasAdd_3:output:0lstm_cell/MatMul_7:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell/add_4}
lstm_cell/Sigmoid_2Sigmoidlstm_cell/add_4:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell/Sigmoid_2t
lstm_cell/Tanh_1Tanhlstm_cell/add_3:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell/Tanh_1?
lstm_cell/mul_10Mullstm_cell/Sigmoid_2:y:0lstm_cell/Tanh_1:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul_10?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0'lstm_cell_split_readvariableop_resource)lstm_cell_split_1_readvariableop_resource!lstm_cell_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_14871*
condR
while_cond_14870*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimet
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp^lstm_cell/ReadVariableOp^lstm_cell/ReadVariableOp_1^lstm_cell/ReadVariableOp_2^lstm_cell/ReadVariableOp_3^lstm_cell/split/ReadVariableOp!^lstm_cell/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:????????? : : : 24
lstm_cell/ReadVariableOplstm_cell/ReadVariableOp28
lstm_cell/ReadVariableOp_1lstm_cell/ReadVariableOp_128
lstm_cell/ReadVariableOp_2lstm_cell/ReadVariableOp_228
lstm_cell/ReadVariableOp_3lstm_cell/ReadVariableOp_32@
lstm_cell/split/ReadVariableOplstm_cell/split/ReadVariableOp2D
 lstm_cell/split_1/ReadVariableOp lstm_cell/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:????????? 
 
_user_specified_nameinputs
??
?
?__inference_lstm_layer_call_and_return_conditional_losses_15460

inputs:
'lstm_cell_split_readvariableop_resource:	 ?8
)lstm_cell_split_1_readvariableop_resource:	?5
!lstm_cell_readvariableop_resource:
??
identity??lstm_cell/ReadVariableOp?lstm_cell/ReadVariableOp_1?lstm_cell/ReadVariableOp_2?lstm_cell/ReadVariableOp_3?lstm_cell/split/ReadVariableOp? lstm_cell/split_1/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:????????? 2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_2~
lstm_cell/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
lstm_cell/ones_like/Shape{
lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell/ones_like/Const?
lstm_cell/ones_likeFill"lstm_cell/ones_like/Shape:output:0"lstm_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell/ones_likew
lstm_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell/dropout/Const?
lstm_cell/dropout/MulMullstm_cell/ones_like:output:0 lstm_cell/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell/dropout/Mul~
lstm_cell/dropout/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell/dropout/Shape?
.lstm_cell/dropout/random_uniform/RandomUniformRandomUniform lstm_cell/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2??<20
.lstm_cell/dropout/random_uniform/RandomUniform?
 lstm_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2"
 lstm_cell/dropout/GreaterEqual/y?
lstm_cell/dropout/GreaterEqualGreaterEqual7lstm_cell/dropout/random_uniform/RandomUniform:output:0)lstm_cell/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2 
lstm_cell/dropout/GreaterEqual?
lstm_cell/dropout/CastCast"lstm_cell/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell/dropout/Cast?
lstm_cell/dropout/Mul_1Mullstm_cell/dropout/Mul:z:0lstm_cell/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell/dropout/Mul_1{
lstm_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell/dropout_1/Const?
lstm_cell/dropout_1/MulMullstm_cell/ones_like:output:0"lstm_cell/dropout_1/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell/dropout_1/Mul?
lstm_cell/dropout_1/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell/dropout_1/Shape?
0lstm_cell/dropout_1/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_1/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???22
0lstm_cell/dropout_1/random_uniform/RandomUniform?
"lstm_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2$
"lstm_cell/dropout_1/GreaterEqual/y?
 lstm_cell/dropout_1/GreaterEqualGreaterEqual9lstm_cell/dropout_1/random_uniform/RandomUniform:output:0+lstm_cell/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2"
 lstm_cell/dropout_1/GreaterEqual?
lstm_cell/dropout_1/CastCast$lstm_cell/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell/dropout_1/Cast?
lstm_cell/dropout_1/Mul_1Mullstm_cell/dropout_1/Mul:z:0lstm_cell/dropout_1/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell/dropout_1/Mul_1{
lstm_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell/dropout_2/Const?
lstm_cell/dropout_2/MulMullstm_cell/ones_like:output:0"lstm_cell/dropout_2/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell/dropout_2/Mul?
lstm_cell/dropout_2/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell/dropout_2/Shape?
0lstm_cell/dropout_2/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_2/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2د?22
0lstm_cell/dropout_2/random_uniform/RandomUniform?
"lstm_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2$
"lstm_cell/dropout_2/GreaterEqual/y?
 lstm_cell/dropout_2/GreaterEqualGreaterEqual9lstm_cell/dropout_2/random_uniform/RandomUniform:output:0+lstm_cell/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2"
 lstm_cell/dropout_2/GreaterEqual?
lstm_cell/dropout_2/CastCast$lstm_cell/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell/dropout_2/Cast?
lstm_cell/dropout_2/Mul_1Mullstm_cell/dropout_2/Mul:z:0lstm_cell/dropout_2/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell/dropout_2/Mul_1{
lstm_cell/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell/dropout_3/Const?
lstm_cell/dropout_3/MulMullstm_cell/ones_like:output:0"lstm_cell/dropout_3/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell/dropout_3/Mul?
lstm_cell/dropout_3/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell/dropout_3/Shape?
0lstm_cell/dropout_3/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_3/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2޾?22
0lstm_cell/dropout_3/random_uniform/RandomUniform?
"lstm_cell/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2$
"lstm_cell/dropout_3/GreaterEqual/y?
 lstm_cell/dropout_3/GreaterEqualGreaterEqual9lstm_cell/dropout_3/random_uniform/RandomUniform:output:0+lstm_cell/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2"
 lstm_cell/dropout_3/GreaterEqual?
lstm_cell/dropout_3/CastCast$lstm_cell/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell/dropout_3/Cast?
lstm_cell/dropout_3/Mul_1Mullstm_cell/dropout_3/Mul:z:0lstm_cell/dropout_3/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell/dropout_3/Mul_1x
lstm_cell/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell/ones_like_1/Shape
lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell/ones_like_1/Const?
lstm_cell/ones_like_1Fill$lstm_cell/ones_like_1/Shape:output:0$lstm_cell/ones_like_1/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/ones_like_1{
lstm_cell/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell/dropout_4/Const?
lstm_cell/dropout_4/MulMullstm_cell/ones_like_1:output:0"lstm_cell/dropout_4/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/dropout_4/Mul?
lstm_cell/dropout_4/ShapeShapelstm_cell/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell/dropout_4/Shape?
0lstm_cell/dropout_4/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_4/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2?ֆ22
0lstm_cell/dropout_4/random_uniform/RandomUniform?
"lstm_cell/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2$
"lstm_cell/dropout_4/GreaterEqual/y?
 lstm_cell/dropout_4/GreaterEqualGreaterEqual9lstm_cell/dropout_4/random_uniform/RandomUniform:output:0+lstm_cell/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2"
 lstm_cell/dropout_4/GreaterEqual?
lstm_cell/dropout_4/CastCast$lstm_cell/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
lstm_cell/dropout_4/Cast?
lstm_cell/dropout_4/Mul_1Mullstm_cell/dropout_4/Mul:z:0lstm_cell/dropout_4/Cast:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell/dropout_4/Mul_1{
lstm_cell/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell/dropout_5/Const?
lstm_cell/dropout_5/MulMullstm_cell/ones_like_1:output:0"lstm_cell/dropout_5/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/dropout_5/Mul?
lstm_cell/dropout_5/ShapeShapelstm_cell/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell/dropout_5/Shape?
0lstm_cell/dropout_5/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_5/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???22
0lstm_cell/dropout_5/random_uniform/RandomUniform?
"lstm_cell/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2$
"lstm_cell/dropout_5/GreaterEqual/y?
 lstm_cell/dropout_5/GreaterEqualGreaterEqual9lstm_cell/dropout_5/random_uniform/RandomUniform:output:0+lstm_cell/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2"
 lstm_cell/dropout_5/GreaterEqual?
lstm_cell/dropout_5/CastCast$lstm_cell/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
lstm_cell/dropout_5/Cast?
lstm_cell/dropout_5/Mul_1Mullstm_cell/dropout_5/Mul:z:0lstm_cell/dropout_5/Cast:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell/dropout_5/Mul_1{
lstm_cell/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell/dropout_6/Const?
lstm_cell/dropout_6/MulMullstm_cell/ones_like_1:output:0"lstm_cell/dropout_6/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/dropout_6/Mul?
lstm_cell/dropout_6/ShapeShapelstm_cell/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell/dropout_6/Shape?
0lstm_cell/dropout_6/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_6/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2??722
0lstm_cell/dropout_6/random_uniform/RandomUniform?
"lstm_cell/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2$
"lstm_cell/dropout_6/GreaterEqual/y?
 lstm_cell/dropout_6/GreaterEqualGreaterEqual9lstm_cell/dropout_6/random_uniform/RandomUniform:output:0+lstm_cell/dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2"
 lstm_cell/dropout_6/GreaterEqual?
lstm_cell/dropout_6/CastCast$lstm_cell/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
lstm_cell/dropout_6/Cast?
lstm_cell/dropout_6/Mul_1Mullstm_cell/dropout_6/Mul:z:0lstm_cell/dropout_6/Cast:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell/dropout_6/Mul_1{
lstm_cell/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell/dropout_7/Const?
lstm_cell/dropout_7/MulMullstm_cell/ones_like_1:output:0"lstm_cell/dropout_7/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/dropout_7/Mul?
lstm_cell/dropout_7/ShapeShapelstm_cell/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell/dropout_7/Shape?
0lstm_cell/dropout_7/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_7/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2?Ň22
0lstm_cell/dropout_7/random_uniform/RandomUniform?
"lstm_cell/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2$
"lstm_cell/dropout_7/GreaterEqual/y?
 lstm_cell/dropout_7/GreaterEqualGreaterEqual9lstm_cell/dropout_7/random_uniform/RandomUniform:output:0+lstm_cell/dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2"
 lstm_cell/dropout_7/GreaterEqual?
lstm_cell/dropout_7/CastCast$lstm_cell/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
lstm_cell/dropout_7/Cast?
lstm_cell/dropout_7/Mul_1Mullstm_cell/dropout_7/Mul:z:0lstm_cell/dropout_7/Cast:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell/dropout_7/Mul_1?
lstm_cell/mulMulstrided_slice_2:output:0lstm_cell/dropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell/mul?
lstm_cell/mul_1Mulstrided_slice_2:output:0lstm_cell/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell/mul_1?
lstm_cell/mul_2Mulstrided_slice_2:output:0lstm_cell/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell/mul_2?
lstm_cell/mul_3Mulstrided_slice_2:output:0lstm_cell/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell/mul_3x
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell/split/split_dim?
lstm_cell/split/ReadVariableOpReadVariableOp'lstm_cell_split_readvariableop_resource*
_output_shapes
:	 ?*
dtype02 
lstm_cell/split/ReadVariableOp?
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0&lstm_cell/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	 ?:	 ?:	 ?:	 ?*
	num_split2
lstm_cell/split?
lstm_cell/MatMulMatMullstm_cell/mul:z:0lstm_cell/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/MatMul?
lstm_cell/MatMul_1MatMullstm_cell/mul_1:z:0lstm_cell/split:output:1*
T0*(
_output_shapes
:??????????2
lstm_cell/MatMul_1?
lstm_cell/MatMul_2MatMullstm_cell/mul_2:z:0lstm_cell/split:output:2*
T0*(
_output_shapes
:??????????2
lstm_cell/MatMul_2?
lstm_cell/MatMul_3MatMullstm_cell/mul_3:z:0lstm_cell/split:output:3*
T0*(
_output_shapes
:??????????2
lstm_cell/MatMul_3|
lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_cell/split_1/split_dim?
 lstm_cell/split_1/ReadVariableOpReadVariableOp)lstm_cell_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 lstm_cell/split_1/ReadVariableOp?
lstm_cell/split_1Split$lstm_cell/split_1/split_dim:output:0(lstm_cell/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:?:?:?:?*
	num_split2
lstm_cell/split_1?
lstm_cell/BiasAddBiasAddlstm_cell/MatMul:product:0lstm_cell/split_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/BiasAdd?
lstm_cell/BiasAdd_1BiasAddlstm_cell/MatMul_1:product:0lstm_cell/split_1:output:1*
T0*(
_output_shapes
:??????????2
lstm_cell/BiasAdd_1?
lstm_cell/BiasAdd_2BiasAddlstm_cell/MatMul_2:product:0lstm_cell/split_1:output:2*
T0*(
_output_shapes
:??????????2
lstm_cell/BiasAdd_2?
lstm_cell/BiasAdd_3BiasAddlstm_cell/MatMul_3:product:0lstm_cell/split_1:output:3*
T0*(
_output_shapes
:??????????2
lstm_cell/BiasAdd_3?
lstm_cell/mul_4Mulzeros:output:0lstm_cell/dropout_4/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul_4?
lstm_cell/mul_5Mulzeros:output:0lstm_cell/dropout_5/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul_5?
lstm_cell/mul_6Mulzeros:output:0lstm_cell/dropout_6/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul_6?
lstm_cell/mul_7Mulzeros:output:0lstm_cell/dropout_7/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul_7?
lstm_cell/ReadVariableOpReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
??*
dtype02
lstm_cell/ReadVariableOp?
lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
lstm_cell/strided_slice/stack?
lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2!
lstm_cell/strided_slice/stack_1?
lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2!
lstm_cell/strided_slice/stack_2?
lstm_cell/strided_sliceStridedSlice lstm_cell/ReadVariableOp:value:0&lstm_cell/strided_slice/stack:output:0(lstm_cell/strided_slice/stack_1:output:0(lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
lstm_cell/strided_slice?
lstm_cell/MatMul_4MatMullstm_cell/mul_4:z:0 lstm_cell/strided_slice:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/MatMul_4?
lstm_cell/addAddV2lstm_cell/BiasAdd:output:0lstm_cell/MatMul_4:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell/addw
lstm_cell/SigmoidSigmoidlstm_cell/add:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell/Sigmoid?
lstm_cell/ReadVariableOp_1ReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
??*
dtype02
lstm_cell/ReadVariableOp_1?
lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2!
lstm_cell/strided_slice_1/stack?
!lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2#
!lstm_cell/strided_slice_1/stack_1?
!lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell/strided_slice_1/stack_2?
lstm_cell/strided_slice_1StridedSlice"lstm_cell/ReadVariableOp_1:value:0(lstm_cell/strided_slice_1/stack:output:0*lstm_cell/strided_slice_1/stack_1:output:0*lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
lstm_cell/strided_slice_1?
lstm_cell/MatMul_5MatMullstm_cell/mul_5:z:0"lstm_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/MatMul_5?
lstm_cell/add_1AddV2lstm_cell/BiasAdd_1:output:0lstm_cell/MatMul_5:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell/add_1}
lstm_cell/Sigmoid_1Sigmoidlstm_cell/add_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell/Sigmoid_1?
lstm_cell/mul_8Mullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul_8?
lstm_cell/ReadVariableOp_2ReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
??*
dtype02
lstm_cell/ReadVariableOp_2?
lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2!
lstm_cell/strided_slice_2/stack?
!lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?  2#
!lstm_cell/strided_slice_2/stack_1?
!lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell/strided_slice_2/stack_2?
lstm_cell/strided_slice_2StridedSlice"lstm_cell/ReadVariableOp_2:value:0(lstm_cell/strided_slice_2/stack:output:0*lstm_cell/strided_slice_2/stack_1:output:0*lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
lstm_cell/strided_slice_2?
lstm_cell/MatMul_6MatMullstm_cell/mul_6:z:0"lstm_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/MatMul_6?
lstm_cell/add_2AddV2lstm_cell/BiasAdd_2:output:0lstm_cell/MatMul_6:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell/add_2p
lstm_cell/TanhTanhlstm_cell/add_2:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell/Tanh?
lstm_cell/mul_9Mullstm_cell/Sigmoid:y:0lstm_cell/Tanh:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul_9?
lstm_cell/add_3AddV2lstm_cell/mul_8:z:0lstm_cell/mul_9:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell/add_3?
lstm_cell/ReadVariableOp_3ReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
??*
dtype02
lstm_cell/ReadVariableOp_3?
lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?  2!
lstm_cell/strided_slice_3/stack?
!lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2#
!lstm_cell/strided_slice_3/stack_1?
!lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell/strided_slice_3/stack_2?
lstm_cell/strided_slice_3StridedSlice"lstm_cell/ReadVariableOp_3:value:0(lstm_cell/strided_slice_3/stack:output:0*lstm_cell/strided_slice_3/stack_1:output:0*lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
lstm_cell/strided_slice_3?
lstm_cell/MatMul_7MatMullstm_cell/mul_7:z:0"lstm_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/MatMul_7?
lstm_cell/add_4AddV2lstm_cell/BiasAdd_3:output:0lstm_cell/MatMul_7:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell/add_4}
lstm_cell/Sigmoid_2Sigmoidlstm_cell/add_4:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell/Sigmoid_2t
lstm_cell/Tanh_1Tanhlstm_cell/add_3:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell/Tanh_1?
lstm_cell/mul_10Mullstm_cell/Sigmoid_2:y:0lstm_cell/Tanh_1:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul_10?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0'lstm_cell_split_readvariableop_resource)lstm_cell_split_1_readvariableop_resource!lstm_cell_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_15262*
condR
while_cond_15261*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimet
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp^lstm_cell/ReadVariableOp^lstm_cell/ReadVariableOp_1^lstm_cell/ReadVariableOp_2^lstm_cell/ReadVariableOp_3^lstm_cell/split/ReadVariableOp!^lstm_cell/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:????????? : : : 24
lstm_cell/ReadVariableOplstm_cell/ReadVariableOp28
lstm_cell/ReadVariableOp_1lstm_cell/ReadVariableOp_128
lstm_cell/ReadVariableOp_2lstm_cell/ReadVariableOp_228
lstm_cell/ReadVariableOp_3lstm_cell/ReadVariableOp_32@
lstm_cell/split/ReadVariableOplstm_cell/split/ReadVariableOp2D
 lstm_cell/split_1/ReadVariableOp lstm_cell/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:????????? 
 
_user_specified_nameinputs
??
?
 model_LSTM_lstm_while_body_13693<
8model_lstm_lstm_while_model_lstm_lstm_while_loop_counterB
>model_lstm_lstm_while_model_lstm_lstm_while_maximum_iterations%
!model_lstm_lstm_while_placeholder'
#model_lstm_lstm_while_placeholder_1'
#model_lstm_lstm_while_placeholder_2'
#model_lstm_lstm_while_placeholder_3;
7model_lstm_lstm_while_model_lstm_lstm_strided_slice_1_0w
smodel_lstm_lstm_while_tensorarrayv2read_tensorlistgetitem_model_lstm_lstm_tensorarrayunstack_tensorlistfromtensor_0R
?model_lstm_lstm_while_lstm_cell_split_readvariableop_resource_0:	 ?P
Amodel_lstm_lstm_while_lstm_cell_split_1_readvariableop_resource_0:	?M
9model_lstm_lstm_while_lstm_cell_readvariableop_resource_0:
??"
model_lstm_lstm_while_identity$
 model_lstm_lstm_while_identity_1$
 model_lstm_lstm_while_identity_2$
 model_lstm_lstm_while_identity_3$
 model_lstm_lstm_while_identity_4$
 model_lstm_lstm_while_identity_59
5model_lstm_lstm_while_model_lstm_lstm_strided_slice_1u
qmodel_lstm_lstm_while_tensorarrayv2read_tensorlistgetitem_model_lstm_lstm_tensorarrayunstack_tensorlistfromtensorP
=model_lstm_lstm_while_lstm_cell_split_readvariableop_resource:	 ?N
?model_lstm_lstm_while_lstm_cell_split_1_readvariableop_resource:	?K
7model_lstm_lstm_while_lstm_cell_readvariableop_resource:
????.model_LSTM/lstm/while/lstm_cell/ReadVariableOp?0model_LSTM/lstm/while/lstm_cell/ReadVariableOp_1?0model_LSTM/lstm/while/lstm_cell/ReadVariableOp_2?0model_LSTM/lstm/while/lstm_cell/ReadVariableOp_3?4model_LSTM/lstm/while/lstm_cell/split/ReadVariableOp?6model_LSTM/lstm/while/lstm_cell/split_1/ReadVariableOp?
Gmodel_LSTM/lstm/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2I
Gmodel_LSTM/lstm/while/TensorArrayV2Read/TensorListGetItem/element_shape?
9model_LSTM/lstm/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsmodel_lstm_lstm_while_tensorarrayv2read_tensorlistgetitem_model_lstm_lstm_tensorarrayunstack_tensorlistfromtensor_0!model_lstm_lstm_while_placeholderPmodel_LSTM/lstm/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:????????? *
element_dtype02;
9model_LSTM/lstm/while/TensorArrayV2Read/TensorListGetItem?
/model_LSTM/lstm/while/lstm_cell/ones_like/ShapeShape@model_LSTM/lstm/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:21
/model_LSTM/lstm/while/lstm_cell/ones_like/Shape?
/model_LSTM/lstm/while/lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??21
/model_LSTM/lstm/while/lstm_cell/ones_like/Const?
)model_LSTM/lstm/while/lstm_cell/ones_likeFill8model_LSTM/lstm/while/lstm_cell/ones_like/Shape:output:08model_LSTM/lstm/while/lstm_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2+
)model_LSTM/lstm/while/lstm_cell/ones_like?
1model_LSTM/lstm/while/lstm_cell/ones_like_1/ShapeShape#model_lstm_lstm_while_placeholder_2*
T0*
_output_shapes
:23
1model_LSTM/lstm/while/lstm_cell/ones_like_1/Shape?
1model_LSTM/lstm/while/lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??23
1model_LSTM/lstm/while/lstm_cell/ones_like_1/Const?
+model_LSTM/lstm/while/lstm_cell/ones_like_1Fill:model_LSTM/lstm/while/lstm_cell/ones_like_1/Shape:output:0:model_LSTM/lstm/while/lstm_cell/ones_like_1/Const:output:0*
T0*(
_output_shapes
:??????????2-
+model_LSTM/lstm/while/lstm_cell/ones_like_1?
#model_LSTM/lstm/while/lstm_cell/mulMul@model_LSTM/lstm/while/TensorArrayV2Read/TensorListGetItem:item:02model_LSTM/lstm/while/lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:????????? 2%
#model_LSTM/lstm/while/lstm_cell/mul?
%model_LSTM/lstm/while/lstm_cell/mul_1Mul@model_LSTM/lstm/while/TensorArrayV2Read/TensorListGetItem:item:02model_LSTM/lstm/while/lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:????????? 2'
%model_LSTM/lstm/while/lstm_cell/mul_1?
%model_LSTM/lstm/while/lstm_cell/mul_2Mul@model_LSTM/lstm/while/TensorArrayV2Read/TensorListGetItem:item:02model_LSTM/lstm/while/lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:????????? 2'
%model_LSTM/lstm/while/lstm_cell/mul_2?
%model_LSTM/lstm/while/lstm_cell/mul_3Mul@model_LSTM/lstm/while/TensorArrayV2Read/TensorListGetItem:item:02model_LSTM/lstm/while/lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:????????? 2'
%model_LSTM/lstm/while/lstm_cell/mul_3?
/model_LSTM/lstm/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :21
/model_LSTM/lstm/while/lstm_cell/split/split_dim?
4model_LSTM/lstm/while/lstm_cell/split/ReadVariableOpReadVariableOp?model_lstm_lstm_while_lstm_cell_split_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype026
4model_LSTM/lstm/while/lstm_cell/split/ReadVariableOp?
%model_LSTM/lstm/while/lstm_cell/splitSplit8model_LSTM/lstm/while/lstm_cell/split/split_dim:output:0<model_LSTM/lstm/while/lstm_cell/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	 ?:	 ?:	 ?:	 ?*
	num_split2'
%model_LSTM/lstm/while/lstm_cell/split?
&model_LSTM/lstm/while/lstm_cell/MatMulMatMul'model_LSTM/lstm/while/lstm_cell/mul:z:0.model_LSTM/lstm/while/lstm_cell/split:output:0*
T0*(
_output_shapes
:??????????2(
&model_LSTM/lstm/while/lstm_cell/MatMul?
(model_LSTM/lstm/while/lstm_cell/MatMul_1MatMul)model_LSTM/lstm/while/lstm_cell/mul_1:z:0.model_LSTM/lstm/while/lstm_cell/split:output:1*
T0*(
_output_shapes
:??????????2*
(model_LSTM/lstm/while/lstm_cell/MatMul_1?
(model_LSTM/lstm/while/lstm_cell/MatMul_2MatMul)model_LSTM/lstm/while/lstm_cell/mul_2:z:0.model_LSTM/lstm/while/lstm_cell/split:output:2*
T0*(
_output_shapes
:??????????2*
(model_LSTM/lstm/while/lstm_cell/MatMul_2?
(model_LSTM/lstm/while/lstm_cell/MatMul_3MatMul)model_LSTM/lstm/while/lstm_cell/mul_3:z:0.model_LSTM/lstm/while/lstm_cell/split:output:3*
T0*(
_output_shapes
:??????????2*
(model_LSTM/lstm/while/lstm_cell/MatMul_3?
1model_LSTM/lstm/while/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 23
1model_LSTM/lstm/while/lstm_cell/split_1/split_dim?
6model_LSTM/lstm/while/lstm_cell/split_1/ReadVariableOpReadVariableOpAmodel_lstm_lstm_while_lstm_cell_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype028
6model_LSTM/lstm/while/lstm_cell/split_1/ReadVariableOp?
'model_LSTM/lstm/while/lstm_cell/split_1Split:model_LSTM/lstm/while/lstm_cell/split_1/split_dim:output:0>model_LSTM/lstm/while/lstm_cell/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:?:?:?:?*
	num_split2)
'model_LSTM/lstm/while/lstm_cell/split_1?
'model_LSTM/lstm/while/lstm_cell/BiasAddBiasAdd0model_LSTM/lstm/while/lstm_cell/MatMul:product:00model_LSTM/lstm/while/lstm_cell/split_1:output:0*
T0*(
_output_shapes
:??????????2)
'model_LSTM/lstm/while/lstm_cell/BiasAdd?
)model_LSTM/lstm/while/lstm_cell/BiasAdd_1BiasAdd2model_LSTM/lstm/while/lstm_cell/MatMul_1:product:00model_LSTM/lstm/while/lstm_cell/split_1:output:1*
T0*(
_output_shapes
:??????????2+
)model_LSTM/lstm/while/lstm_cell/BiasAdd_1?
)model_LSTM/lstm/while/lstm_cell/BiasAdd_2BiasAdd2model_LSTM/lstm/while/lstm_cell/MatMul_2:product:00model_LSTM/lstm/while/lstm_cell/split_1:output:2*
T0*(
_output_shapes
:??????????2+
)model_LSTM/lstm/while/lstm_cell/BiasAdd_2?
)model_LSTM/lstm/while/lstm_cell/BiasAdd_3BiasAdd2model_LSTM/lstm/while/lstm_cell/MatMul_3:product:00model_LSTM/lstm/while/lstm_cell/split_1:output:3*
T0*(
_output_shapes
:??????????2+
)model_LSTM/lstm/while/lstm_cell/BiasAdd_3?
%model_LSTM/lstm/while/lstm_cell/mul_4Mul#model_lstm_lstm_while_placeholder_24model_LSTM/lstm/while/lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:??????????2'
%model_LSTM/lstm/while/lstm_cell/mul_4?
%model_LSTM/lstm/while/lstm_cell/mul_5Mul#model_lstm_lstm_while_placeholder_24model_LSTM/lstm/while/lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:??????????2'
%model_LSTM/lstm/while/lstm_cell/mul_5?
%model_LSTM/lstm/while/lstm_cell/mul_6Mul#model_lstm_lstm_while_placeholder_24model_LSTM/lstm/while/lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:??????????2'
%model_LSTM/lstm/while/lstm_cell/mul_6?
%model_LSTM/lstm/while/lstm_cell/mul_7Mul#model_lstm_lstm_while_placeholder_24model_LSTM/lstm/while/lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:??????????2'
%model_LSTM/lstm/while/lstm_cell/mul_7?
.model_LSTM/lstm/while/lstm_cell/ReadVariableOpReadVariableOp9model_lstm_lstm_while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
??*
dtype020
.model_LSTM/lstm/while/lstm_cell/ReadVariableOp?
3model_LSTM/lstm/while/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        25
3model_LSTM/lstm/while/lstm_cell/strided_slice/stack?
5model_LSTM/lstm/while/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   27
5model_LSTM/lstm/while/lstm_cell/strided_slice/stack_1?
5model_LSTM/lstm/while/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      27
5model_LSTM/lstm/while/lstm_cell/strided_slice/stack_2?
-model_LSTM/lstm/while/lstm_cell/strided_sliceStridedSlice6model_LSTM/lstm/while/lstm_cell/ReadVariableOp:value:0<model_LSTM/lstm/while/lstm_cell/strided_slice/stack:output:0>model_LSTM/lstm/while/lstm_cell/strided_slice/stack_1:output:0>model_LSTM/lstm/while/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2/
-model_LSTM/lstm/while/lstm_cell/strided_slice?
(model_LSTM/lstm/while/lstm_cell/MatMul_4MatMul)model_LSTM/lstm/while/lstm_cell/mul_4:z:06model_LSTM/lstm/while/lstm_cell/strided_slice:output:0*
T0*(
_output_shapes
:??????????2*
(model_LSTM/lstm/while/lstm_cell/MatMul_4?
#model_LSTM/lstm/while/lstm_cell/addAddV20model_LSTM/lstm/while/lstm_cell/BiasAdd:output:02model_LSTM/lstm/while/lstm_cell/MatMul_4:product:0*
T0*(
_output_shapes
:??????????2%
#model_LSTM/lstm/while/lstm_cell/add?
'model_LSTM/lstm/while/lstm_cell/SigmoidSigmoid'model_LSTM/lstm/while/lstm_cell/add:z:0*
T0*(
_output_shapes
:??????????2)
'model_LSTM/lstm/while/lstm_cell/Sigmoid?
0model_LSTM/lstm/while/lstm_cell/ReadVariableOp_1ReadVariableOp9model_lstm_lstm_while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
??*
dtype022
0model_LSTM/lstm/while/lstm_cell/ReadVariableOp_1?
5model_LSTM/lstm/while/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   27
5model_LSTM/lstm/while/lstm_cell/strided_slice_1/stack?
7model_LSTM/lstm/while/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       29
7model_LSTM/lstm/while/lstm_cell/strided_slice_1/stack_1?
7model_LSTM/lstm/while/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7model_LSTM/lstm/while/lstm_cell/strided_slice_1/stack_2?
/model_LSTM/lstm/while/lstm_cell/strided_slice_1StridedSlice8model_LSTM/lstm/while/lstm_cell/ReadVariableOp_1:value:0>model_LSTM/lstm/while/lstm_cell/strided_slice_1/stack:output:0@model_LSTM/lstm/while/lstm_cell/strided_slice_1/stack_1:output:0@model_LSTM/lstm/while/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask21
/model_LSTM/lstm/while/lstm_cell/strided_slice_1?
(model_LSTM/lstm/while/lstm_cell/MatMul_5MatMul)model_LSTM/lstm/while/lstm_cell/mul_5:z:08model_LSTM/lstm/while/lstm_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:??????????2*
(model_LSTM/lstm/while/lstm_cell/MatMul_5?
%model_LSTM/lstm/while/lstm_cell/add_1AddV22model_LSTM/lstm/while/lstm_cell/BiasAdd_1:output:02model_LSTM/lstm/while/lstm_cell/MatMul_5:product:0*
T0*(
_output_shapes
:??????????2'
%model_LSTM/lstm/while/lstm_cell/add_1?
)model_LSTM/lstm/while/lstm_cell/Sigmoid_1Sigmoid)model_LSTM/lstm/while/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:??????????2+
)model_LSTM/lstm/while/lstm_cell/Sigmoid_1?
%model_LSTM/lstm/while/lstm_cell/mul_8Mul-model_LSTM/lstm/while/lstm_cell/Sigmoid_1:y:0#model_lstm_lstm_while_placeholder_3*
T0*(
_output_shapes
:??????????2'
%model_LSTM/lstm/while/lstm_cell/mul_8?
0model_LSTM/lstm/while/lstm_cell/ReadVariableOp_2ReadVariableOp9model_lstm_lstm_while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
??*
dtype022
0model_LSTM/lstm/while/lstm_cell/ReadVariableOp_2?
5model_LSTM/lstm/while/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       27
5model_LSTM/lstm/while/lstm_cell/strided_slice_2/stack?
7model_LSTM/lstm/while/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?  29
7model_LSTM/lstm/while/lstm_cell/strided_slice_2/stack_1?
7model_LSTM/lstm/while/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7model_LSTM/lstm/while/lstm_cell/strided_slice_2/stack_2?
/model_LSTM/lstm/while/lstm_cell/strided_slice_2StridedSlice8model_LSTM/lstm/while/lstm_cell/ReadVariableOp_2:value:0>model_LSTM/lstm/while/lstm_cell/strided_slice_2/stack:output:0@model_LSTM/lstm/while/lstm_cell/strided_slice_2/stack_1:output:0@model_LSTM/lstm/while/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask21
/model_LSTM/lstm/while/lstm_cell/strided_slice_2?
(model_LSTM/lstm/while/lstm_cell/MatMul_6MatMul)model_LSTM/lstm/while/lstm_cell/mul_6:z:08model_LSTM/lstm/while/lstm_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:??????????2*
(model_LSTM/lstm/while/lstm_cell/MatMul_6?
%model_LSTM/lstm/while/lstm_cell/add_2AddV22model_LSTM/lstm/while/lstm_cell/BiasAdd_2:output:02model_LSTM/lstm/while/lstm_cell/MatMul_6:product:0*
T0*(
_output_shapes
:??????????2'
%model_LSTM/lstm/while/lstm_cell/add_2?
$model_LSTM/lstm/while/lstm_cell/TanhTanh)model_LSTM/lstm/while/lstm_cell/add_2:z:0*
T0*(
_output_shapes
:??????????2&
$model_LSTM/lstm/while/lstm_cell/Tanh?
%model_LSTM/lstm/while/lstm_cell/mul_9Mul+model_LSTM/lstm/while/lstm_cell/Sigmoid:y:0(model_LSTM/lstm/while/lstm_cell/Tanh:y:0*
T0*(
_output_shapes
:??????????2'
%model_LSTM/lstm/while/lstm_cell/mul_9?
%model_LSTM/lstm/while/lstm_cell/add_3AddV2)model_LSTM/lstm/while/lstm_cell/mul_8:z:0)model_LSTM/lstm/while/lstm_cell/mul_9:z:0*
T0*(
_output_shapes
:??????????2'
%model_LSTM/lstm/while/lstm_cell/add_3?
0model_LSTM/lstm/while/lstm_cell/ReadVariableOp_3ReadVariableOp9model_lstm_lstm_while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
??*
dtype022
0model_LSTM/lstm/while/lstm_cell/ReadVariableOp_3?
5model_LSTM/lstm/while/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?  27
5model_LSTM/lstm/while/lstm_cell/strided_slice_3/stack?
7model_LSTM/lstm/while/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        29
7model_LSTM/lstm/while/lstm_cell/strided_slice_3/stack_1?
7model_LSTM/lstm/while/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7model_LSTM/lstm/while/lstm_cell/strided_slice_3/stack_2?
/model_LSTM/lstm/while/lstm_cell/strided_slice_3StridedSlice8model_LSTM/lstm/while/lstm_cell/ReadVariableOp_3:value:0>model_LSTM/lstm/while/lstm_cell/strided_slice_3/stack:output:0@model_LSTM/lstm/while/lstm_cell/strided_slice_3/stack_1:output:0@model_LSTM/lstm/while/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask21
/model_LSTM/lstm/while/lstm_cell/strided_slice_3?
(model_LSTM/lstm/while/lstm_cell/MatMul_7MatMul)model_LSTM/lstm/while/lstm_cell/mul_7:z:08model_LSTM/lstm/while/lstm_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:??????????2*
(model_LSTM/lstm/while/lstm_cell/MatMul_7?
%model_LSTM/lstm/while/lstm_cell/add_4AddV22model_LSTM/lstm/while/lstm_cell/BiasAdd_3:output:02model_LSTM/lstm/while/lstm_cell/MatMul_7:product:0*
T0*(
_output_shapes
:??????????2'
%model_LSTM/lstm/while/lstm_cell/add_4?
)model_LSTM/lstm/while/lstm_cell/Sigmoid_2Sigmoid)model_LSTM/lstm/while/lstm_cell/add_4:z:0*
T0*(
_output_shapes
:??????????2+
)model_LSTM/lstm/while/lstm_cell/Sigmoid_2?
&model_LSTM/lstm/while/lstm_cell/Tanh_1Tanh)model_LSTM/lstm/while/lstm_cell/add_3:z:0*
T0*(
_output_shapes
:??????????2(
&model_LSTM/lstm/while/lstm_cell/Tanh_1?
&model_LSTM/lstm/while/lstm_cell/mul_10Mul-model_LSTM/lstm/while/lstm_cell/Sigmoid_2:y:0*model_LSTM/lstm/while/lstm_cell/Tanh_1:y:0*
T0*(
_output_shapes
:??????????2(
&model_LSTM/lstm/while/lstm_cell/mul_10?
:model_LSTM/lstm/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem#model_lstm_lstm_while_placeholder_1!model_lstm_lstm_while_placeholder*model_LSTM/lstm/while/lstm_cell/mul_10:z:0*
_output_shapes
: *
element_dtype02<
:model_LSTM/lstm/while/TensorArrayV2Write/TensorListSetItem|
model_LSTM/lstm/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
model_LSTM/lstm/while/add/y?
model_LSTM/lstm/while/addAddV2!model_lstm_lstm_while_placeholder$model_LSTM/lstm/while/add/y:output:0*
T0*
_output_shapes
: 2
model_LSTM/lstm/while/add?
model_LSTM/lstm/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
model_LSTM/lstm/while/add_1/y?
model_LSTM/lstm/while/add_1AddV28model_lstm_lstm_while_model_lstm_lstm_while_loop_counter&model_LSTM/lstm/while/add_1/y:output:0*
T0*
_output_shapes
: 2
model_LSTM/lstm/while/add_1?
model_LSTM/lstm/while/IdentityIdentitymodel_LSTM/lstm/while/add_1:z:0^model_LSTM/lstm/while/NoOp*
T0*
_output_shapes
: 2 
model_LSTM/lstm/while/Identity?
 model_LSTM/lstm/while/Identity_1Identity>model_lstm_lstm_while_model_lstm_lstm_while_maximum_iterations^model_LSTM/lstm/while/NoOp*
T0*
_output_shapes
: 2"
 model_LSTM/lstm/while/Identity_1?
 model_LSTM/lstm/while/Identity_2Identitymodel_LSTM/lstm/while/add:z:0^model_LSTM/lstm/while/NoOp*
T0*
_output_shapes
: 2"
 model_LSTM/lstm/while/Identity_2?
 model_LSTM/lstm/while/Identity_3IdentityJmodel_LSTM/lstm/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^model_LSTM/lstm/while/NoOp*
T0*
_output_shapes
: 2"
 model_LSTM/lstm/while/Identity_3?
 model_LSTM/lstm/while/Identity_4Identity*model_LSTM/lstm/while/lstm_cell/mul_10:z:0^model_LSTM/lstm/while/NoOp*
T0*(
_output_shapes
:??????????2"
 model_LSTM/lstm/while/Identity_4?
 model_LSTM/lstm/while/Identity_5Identity)model_LSTM/lstm/while/lstm_cell/add_3:z:0^model_LSTM/lstm/while/NoOp*
T0*(
_output_shapes
:??????????2"
 model_LSTM/lstm/while/Identity_5?
model_LSTM/lstm/while/NoOpNoOp/^model_LSTM/lstm/while/lstm_cell/ReadVariableOp1^model_LSTM/lstm/while/lstm_cell/ReadVariableOp_11^model_LSTM/lstm/while/lstm_cell/ReadVariableOp_21^model_LSTM/lstm/while/lstm_cell/ReadVariableOp_35^model_LSTM/lstm/while/lstm_cell/split/ReadVariableOp7^model_LSTM/lstm/while/lstm_cell/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
model_LSTM/lstm/while/NoOp"I
model_lstm_lstm_while_identity'model_LSTM/lstm/while/Identity:output:0"M
 model_lstm_lstm_while_identity_1)model_LSTM/lstm/while/Identity_1:output:0"M
 model_lstm_lstm_while_identity_2)model_LSTM/lstm/while/Identity_2:output:0"M
 model_lstm_lstm_while_identity_3)model_LSTM/lstm/while/Identity_3:output:0"M
 model_lstm_lstm_while_identity_4)model_LSTM/lstm/while/Identity_4:output:0"M
 model_lstm_lstm_while_identity_5)model_LSTM/lstm/while/Identity_5:output:0"t
7model_lstm_lstm_while_lstm_cell_readvariableop_resource9model_lstm_lstm_while_lstm_cell_readvariableop_resource_0"?
?model_lstm_lstm_while_lstm_cell_split_1_readvariableop_resourceAmodel_lstm_lstm_while_lstm_cell_split_1_readvariableop_resource_0"?
=model_lstm_lstm_while_lstm_cell_split_readvariableop_resource?model_lstm_lstm_while_lstm_cell_split_readvariableop_resource_0"p
5model_lstm_lstm_while_model_lstm_lstm_strided_slice_17model_lstm_lstm_while_model_lstm_lstm_strided_slice_1_0"?
qmodel_lstm_lstm_while_tensorarrayv2read_tensorlistgetitem_model_lstm_lstm_tensorarrayunstack_tensorlistfromtensorsmodel_lstm_lstm_while_tensorarrayv2read_tensorlistgetitem_model_lstm_lstm_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2`
.model_LSTM/lstm/while/lstm_cell/ReadVariableOp.model_LSTM/lstm/while/lstm_cell/ReadVariableOp2d
0model_LSTM/lstm/while/lstm_cell/ReadVariableOp_10model_LSTM/lstm/while/lstm_cell/ReadVariableOp_12d
0model_LSTM/lstm/while/lstm_cell/ReadVariableOp_20model_LSTM/lstm/while/lstm_cell/ReadVariableOp_22d
0model_LSTM/lstm/while/lstm_cell/ReadVariableOp_30model_LSTM/lstm/while/lstm_cell/ReadVariableOp_32l
4model_LSTM/lstm/while/lstm_cell/split/ReadVariableOp4model_LSTM/lstm/while/lstm_cell/split/ReadVariableOp2p
6model_LSTM/lstm/while/lstm_cell/split_1/ReadVariableOp6model_LSTM/lstm/while/lstm_cell/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
??
?
D__inference_lstm_cell_layer_call_and_return_conditional_losses_18376

inputs
states_0
states_10
split_readvariableop_resource:	 ?.
split_1_readvariableop_resource:	?+
readvariableop_resource:
??
identity

identity_1

identity_2??ReadVariableOp?ReadVariableOp_1?ReadVariableOp_2?ReadVariableOp_3?split/ReadVariableOp?split_1/ReadVariableOpX
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
ones_like/Const?
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
	ones_likec
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Const
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2
dropout/Mul`
dropout/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2
dropout/Mul_1g
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout_1/Const?
dropout_1/MulMulones_like:output:0dropout_1/Const:output:0*
T0*'
_output_shapes
:????????? 2
dropout_1/Muld
dropout_1/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_1/Shape?
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2??2(
&dropout_1/random_uniform/RandomUniformy
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout_1/GreaterEqual/y?
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2
dropout_1/GreaterEqual?
dropout_1/CastCastdropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
dropout_1/Cast?
dropout_1/Mul_1Muldropout_1/Mul:z:0dropout_1/Cast:y:0*
T0*'
_output_shapes
:????????? 2
dropout_1/Mul_1g
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout_2/Const?
dropout_2/MulMulones_like:output:0dropout_2/Const:output:0*
T0*'
_output_shapes
:????????? 2
dropout_2/Muld
dropout_2/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_2/Shape?
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???2(
&dropout_2/random_uniform/RandomUniformy
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout_2/GreaterEqual/y?
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2
dropout_2/GreaterEqual?
dropout_2/CastCastdropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
dropout_2/Cast?
dropout_2/Mul_1Muldropout_2/Mul:z:0dropout_2/Cast:y:0*
T0*'
_output_shapes
:????????? 2
dropout_2/Mul_1g
dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout_3/Const?
dropout_3/MulMulones_like:output:0dropout_3/Const:output:0*
T0*'
_output_shapes
:????????? 2
dropout_3/Muld
dropout_3/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_3/Shape?
&dropout_3/random_uniform/RandomUniformRandomUniformdropout_3/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2?ު2(
&dropout_3/random_uniform/RandomUniformy
dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout_3/GreaterEqual/y?
dropout_3/GreaterEqualGreaterEqual/dropout_3/random_uniform/RandomUniform:output:0!dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2
dropout_3/GreaterEqual?
dropout_3/CastCastdropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
dropout_3/Cast?
dropout_3/Mul_1Muldropout_3/Mul:z:0dropout_3/Cast:y:0*
T0*'
_output_shapes
:????????? 2
dropout_3/Mul_1^
ones_like_1/ShapeShapestates_0*
T0*
_output_shapes
:2
ones_like_1/Shapek
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
ones_like_1/Const?
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*(
_output_shapes
:??????????2
ones_like_1g
dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout_4/Const?
dropout_4/MulMulones_like_1:output:0dropout_4/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout_4/Mulf
dropout_4/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_4/Shape?
&dropout_4/random_uniform/RandomUniformRandomUniformdropout_4/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???2(
&dropout_4/random_uniform/RandomUniformy
dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout_4/GreaterEqual/y?
dropout_4/GreaterEqualGreaterEqual/dropout_4/random_uniform/RandomUniform:output:0!dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout_4/GreaterEqual?
dropout_4/CastCastdropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout_4/Cast?
dropout_4/Mul_1Muldropout_4/Mul:z:0dropout_4/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout_4/Mul_1g
dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout_5/Const?
dropout_5/MulMulones_like_1:output:0dropout_5/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout_5/Mulf
dropout_5/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_5/Shape?
&dropout_5/random_uniform/RandomUniformRandomUniformdropout_5/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???2(
&dropout_5/random_uniform/RandomUniformy
dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout_5/GreaterEqual/y?
dropout_5/GreaterEqualGreaterEqual/dropout_5/random_uniform/RandomUniform:output:0!dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout_5/GreaterEqual?
dropout_5/CastCastdropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout_5/Cast?
dropout_5/Mul_1Muldropout_5/Mul:z:0dropout_5/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout_5/Mul_1g
dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout_6/Const?
dropout_6/MulMulones_like_1:output:0dropout_6/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout_6/Mulf
dropout_6/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_6/Shape?
&dropout_6/random_uniform/RandomUniformRandomUniformdropout_6/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2??2(
&dropout_6/random_uniform/RandomUniformy
dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout_6/GreaterEqual/y?
dropout_6/GreaterEqualGreaterEqual/dropout_6/random_uniform/RandomUniform:output:0!dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout_6/GreaterEqual?
dropout_6/CastCastdropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout_6/Cast?
dropout_6/Mul_1Muldropout_6/Mul:z:0dropout_6/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout_6/Mul_1g
dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout_7/Const?
dropout_7/MulMulones_like_1:output:0dropout_7/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout_7/Mulf
dropout_7/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_7/Shape?
&dropout_7/random_uniform/RandomUniformRandomUniformdropout_7/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???2(
&dropout_7/random_uniform/RandomUniformy
dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout_7/GreaterEqual/y?
dropout_7/GreaterEqualGreaterEqual/dropout_7/random_uniform/RandomUniform:output:0!dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout_7/GreaterEqual?
dropout_7/CastCastdropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout_7/Cast?
dropout_7/Mul_1Muldropout_7/Mul:z:0dropout_7/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout_7/Mul_1^
mulMulinputsdropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
muld
mul_1Mulinputsdropout_1/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
mul_1d
mul_2Mulinputsdropout_2/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
mul_2d
mul_3Mulinputsdropout_3/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
mul_3d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
split/ReadVariableOp?
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	 ?:	 ?:	 ?:	 ?*
	num_split2
splitf
MatMulMatMulmul:z:0split:output:0*
T0*(
_output_shapes
:??????????2
MatMull
MatMul_1MatMul	mul_1:z:0split:output:1*
T0*(
_output_shapes
:??????????2

MatMul_1l
MatMul_2MatMul	mul_2:z:0split:output:2*
T0*(
_output_shapes
:??????????2

MatMul_2l
MatMul_3MatMul	mul_3:z:0split:output:3*
T0*(
_output_shapes
:??????????2

MatMul_3h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_1/split_dim?
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:?*
dtype02
split_1/ReadVariableOp?
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:?:?:?:?*
	num_split2	
split_1t
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*(
_output_shapes
:??????????2	
BiasAddz
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*(
_output_shapes
:??????????2
	BiasAdd_1z
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*(
_output_shapes
:??????????2
	BiasAdd_2z
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*(
_output_shapes
:??????????2
	BiasAdd_3g
mul_4Mulstates_0dropout_4/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
mul_4g
mul_5Mulstates_0dropout_5/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
mul_5g
mul_6Mulstates_0dropout_6/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
mul_6g
mul_7Mulstates_0dropout_7/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
mul_7z
ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
??*
dtype02
ReadVariableOp{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2?
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
strided_slicet
MatMul_4MatMul	mul_4:z:0strided_slice:output:0*
T0*(
_output_shapes
:??????????2

MatMul_4l
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*(
_output_shapes
:??????????2
addY
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:??????????2	
Sigmoid~
ReadVariableOp_1ReadVariableOpreadvariableop_resource* 
_output_shapes
:
??*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2
strided_slice_1/stack?
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_1/stack_1?
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2?
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
strided_slice_1v
MatMul_5MatMul	mul_5:z:0strided_slice_1:output:0*
T0*(
_output_shapes
:??????????2

MatMul_5r
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*(
_output_shapes
:??????????2
add_1_
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:??????????2
	Sigmoid_1a
mul_8MulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:??????????2
mul_8~
ReadVariableOp_2ReadVariableOpreadvariableop_resource* 
_output_shapes
:
??*
dtype02
ReadVariableOp_2
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_2/stack?
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?  2
strided_slice_2/stack_1?
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2?
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
strided_slice_2v
MatMul_6MatMul	mul_6:z:0strided_slice_2:output:0*
T0*(
_output_shapes
:??????????2

MatMul_6r
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*(
_output_shapes
:??????????2
add_2R
TanhTanh	add_2:z:0*
T0*(
_output_shapes
:??????????2
Tanh_
mul_9MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:??????????2
mul_9`
add_3AddV2	mul_8:z:0	mul_9:z:0*
T0*(
_output_shapes
:??????????2
add_3~
ReadVariableOp_3ReadVariableOpreadvariableop_resource* 
_output_shapes
:
??*
dtype02
ReadVariableOp_3
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?  2
strided_slice_3/stack?
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stack_1?
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack_2?
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
strided_slice_3v
MatMul_7MatMul	mul_7:z:0strided_slice_3:output:0*
T0*(
_output_shapes
:??????????2

MatMul_7r
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*(
_output_shapes
:??????????2
add_4_
	Sigmoid_2Sigmoid	add_4:z:0*
T0*(
_output_shapes
:??????????2
	Sigmoid_2V
Tanh_1Tanh	add_3:z:0*
T0*(
_output_shapes
:??????????2
Tanh_1e
mul_10MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:??????????2
mul_10f
IdentityIdentity
mul_10:z:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityj

Identity_1Identity
mul_10:z:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity_1i

Identity_2Identity	add_3:z:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity_2?
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:????????? :??????????:??????????: : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/0:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/1
?
?
*__inference_model_LSTM_layer_call_fn_15058
input_1
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:
?? 
	unknown_4:? 
	unknown_5: 
	unknown_6:	 ?
	unknown_7:	?
	unknown_8:
??
	unknown_9:	?

unknown_10:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_model_LSTM_layer_call_and_return_conditional_losses_150312
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: "?L
saver_filename:0StatefulPartitionedCall_2:0StatefulPartitionedCall_38"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
;
input_10
serving_default_input_1:0?????????=
dense_22
StatefulPartitionedCall_1:0?????????tensorflow/serving/predict:??
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer-4
layer_with_weights-3
layer-5
layer_with_weights-4
layer-6
	optimizer
	trainable_variables

	variables
regularization_losses
	keras_api

signatures
?_default_save_signature
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_network
"
_tf_keras_input_layer
W
_index_lookup_layer
	keras_api
?_adapt_function"
_tf_keras_layer
?

embeddings
trainable_variables
regularization_losses
	variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
trainable_variables
regularization_losses
	variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
cell
 
state_spec
!trainable_variables
"	variables
#regularization_losses
$	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
?

%kernel
&bias
'trainable_variables
(regularization_losses
)	variables
*	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
+iter

,beta_1

-beta_2
	.decay
/learning_ratem?m?m?%m?&m?0m?1m?2m?v?v?v?%v?&v?0v?1v?2v?"
	optimizer
X
0
1
2
03
14
25
%6
&7"
trackable_list_wrapper
X
1
2
3
04
15
26
%7
&8"
trackable_list_wrapper
 "
trackable_list_wrapper
?
	trainable_variables
3layer_metrics
4non_trainable_variables
5layer_regularization_losses

6layers

	variables
regularization_losses
7metrics
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
L
8lookup_table
9token_counts
:	keras_api"
_tf_keras_layer
"
_generic_user_object
(:&
??2embedding/embeddings
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
?
trainable_variables
regularization_losses
;layer_metrics
<non_trainable_variables
=layer_regularization_losses

>layers
	variables
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
$:"? 2conv1d/kernel
: 2conv1d/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
trainable_variables
regularization_losses
@layer_metrics
Anon_trainable_variables
Blayer_regularization_losses

Clayers
	variables
Dmetrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
trainable_variables
regularization_losses
Elayer_metrics
Fnon_trainable_variables
Glayer_regularization_losses

Hlayers
	variables
Imetrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
J
state_size

0kernel
1recurrent_kernel
2bias
Ktrainable_variables
Lregularization_losses
M	variables
N	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
00
11
22"
trackable_list_wrapper
5
00
11
22"
trackable_list_wrapper
 "
trackable_list_wrapper
?
!trainable_variables
Olayer_metrics
Pnon_trainable_variables
Qlayer_regularization_losses

Rlayers

Sstates
"	variables
#regularization_losses
Tmetrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
!:	?2dense_2/kernel
:2dense_2/bias
.
%0
&1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
%0
&1"
trackable_list_wrapper
?
'trainable_variables
(regularization_losses
Ulayer_metrics
Vnon_trainable_variables
Wlayer_regularization_losses

Xlayers
)	variables
Ymetrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
(:&	 ?2lstm/lstm_cell/kernel
3:1
??2lstm/lstm_cell/recurrent_kernel
": ?2lstm/lstm_cell/bias
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Q
0
1
2
3
4
5
6"
trackable_list_wrapper
f
Z0
[1
\2
]3
^4
_5
`6
a7
b8
c9"
trackable_list_wrapper
U
d_initializer
?_create_resource
?_initialize
?_destroy_resourceR 
T
?_create_resource
?_initialize
?_destroy_resourceR Z
table??
"
_generic_user_object
 "
trackable_dict_wrapper
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
5
00
11
22"
trackable_list_wrapper
 "
trackable_list_wrapper
5
00
11
22"
trackable_list_wrapper
?
Ktrainable_variables
Lregularization_losses
elayer_metrics
fnon_trainable_variables
glayer_regularization_losses

hlayers
M	variables
imetrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
N
	jtotal
	kcount
l	variables
m	keras_api"
_tf_keras_metric
Y
n
thresholds
oaccumulator
p	variables
q	keras_api"
_tf_keras_metric
Y
r
thresholds
saccumulator
t	variables
u	keras_api"
_tf_keras_metric
Y
v
thresholds
waccumulator
x	variables
y	keras_api"
_tf_keras_metric
Y
z
thresholds
{accumulator
|	variables
}	keras_api"
_tf_keras_metric
a
	~total
	count
?
_fn_kwargs
?	variables
?	keras_api"
_tf_keras_metric
v
?
thresholds
?true_positives
?false_positives
?	variables
?	keras_api"
_tf_keras_metric
v
?
thresholds
?true_positives
?false_negatives
?	variables
?	keras_api"
_tf_keras_metric
?
?true_positives
?true_negatives
?false_positives
?false_negatives
?	variables
?	keras_api"
_tf_keras_metric
c

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"
_tf_keras_metric
"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
:  (2total
:  (2count
.
j0
k1"
trackable_list_wrapper
-
l	variables"
_generic_user_object
 "
trackable_list_wrapper
: (2accumulator
'
o0"
trackable_list_wrapper
-
p	variables"
_generic_user_object
 "
trackable_list_wrapper
: (2accumulator
'
s0"
trackable_list_wrapper
-
t	variables"
_generic_user_object
 "
trackable_list_wrapper
: (2accumulator
'
w0"
trackable_list_wrapper
-
x	variables"
_generic_user_object
 "
trackable_list_wrapper
: (2accumulator
'
{0"
trackable_list_wrapper
-
|	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
~0
1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
 "
trackable_list_wrapper
: (2true_positives
: (2false_positives
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
 "
trackable_list_wrapper
: (2true_positives
: (2false_negatives
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:? (2true_positives
:? (2true_negatives
 :? (2false_positives
 :? (2false_negatives
@
?0
?1
?2
?3"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
-:+
??2Adam/embedding/embeddings/m
):'? 2Adam/conv1d/kernel/m
: 2Adam/conv1d/bias/m
&:$	?2Adam/dense_2/kernel/m
:2Adam/dense_2/bias/m
-:+	 ?2Adam/lstm/lstm_cell/kernel/m
8:6
??2&Adam/lstm/lstm_cell/recurrent_kernel/m
':%?2Adam/lstm/lstm_cell/bias/m
-:+
??2Adam/embedding/embeddings/v
):'? 2Adam/conv1d/kernel/v
: 2Adam/conv1d/bias/v
&:$	?2Adam/dense_2/kernel/v
:2Adam/dense_2/bias/v
-:+	 ?2Adam/lstm/lstm_cell/kernel/v
8:6
??2&Adam/lstm/lstm_cell/recurrent_kernel/v
':%?2Adam/lstm/lstm_cell/bias/v
?B?
 __inference__wrapped_model_13834input_1"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_model_LSTM_layer_call_fn_15058
*__inference_model_LSTM_layer_call_fn_15864
*__inference_model_LSTM_layer_call_fn_15893
*__inference_model_LSTM_layer_call_fn_15652?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
E__inference_model_LSTM_layer_call_and_return_conditional_losses_16220
E__inference_model_LSTM_layer_call_and_return_conditional_losses_16675
E__inference_model_LSTM_layer_call_and_return_conditional_losses_15725
E__inference_model_LSTM_layer_call_and_return_conditional_losses_15798?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
__inference_adapt_step_16723?
???
FullArgSpec
args?

jiterator
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_embedding_layer_call_fn_16730?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_embedding_layer_call_and_return_conditional_losses_16739?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
&__inference_conv1d_layer_call_fn_16748?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
A__inference_conv1d_layer_call_and_return_conditional_losses_16764?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
-__inference_max_pooling1d_layer_call_fn_16769
-__inference_max_pooling1d_layer_call_fn_16774?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
H__inference_max_pooling1d_layer_call_and_return_conditional_losses_16782
H__inference_max_pooling1d_layer_call_and_return_conditional_losses_16790?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
$__inference_lstm_layer_call_fn_16801
$__inference_lstm_layer_call_fn_16812
$__inference_lstm_layer_call_fn_16823
$__inference_lstm_layer_call_fn_16834?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
?__inference_lstm_layer_call_and_return_conditional_losses_17085
?__inference_lstm_layer_call_and_return_conditional_losses_17464
?__inference_lstm_layer_call_and_return_conditional_losses_17715
?__inference_lstm_layer_call_and_return_conditional_losses_18094?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
'__inference_dense_2_layer_call_fn_18103?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
B__inference_dense_2_layer_call_and_return_conditional_losses_18114?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
#__inference_signature_wrapper_15835input_1"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_lstm_cell_layer_call_fn_18131
)__inference_lstm_cell_layer_call_fn_18148?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
D__inference_lstm_cell_layer_call_and_return_conditional_losses_18230
D__inference_lstm_cell_layer_call_and_return_conditional_losses_18376?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
__inference__creator_18381?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__initializer_18389?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__destroyer_18394?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__creator_18399?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__initializer_18404?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__destroyer_18409?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?B?
__inference_save_fn_18428checkpoint_key"?
???
FullArgSpec
args?
jcheckpoint_key
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *?	
? 
?B?
__inference_restore_fn_18436restored_tensors_0restored_tensors_1"?
???
FullArgSpec
args? 
varargsjrestored_tensors
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *?
	?
	?	
	J
Const
J	
Const_1
J	
Const_2
J	
Const_3
J	
Const_4
J	
Const_56
__inference__creator_18381?

? 
? "? 6
__inference__creator_18399?

? 
? "? 8
__inference__destroyer_18394?

? 
? "? 8
__inference__destroyer_18409?

? 
? "? A
__inference__initializer_183898???

? 
? "? :
__inference__initializer_18404?

? 
? "? ?
 __inference__wrapped_model_13834v8???021%&0?-
&?#
!?
input_1?????????
? "1?.
,
dense_2!?
dense_2?????????h
__inference_adapt_step_16723H9?=?:
3?0
.?+?
??????????IteratorSpec
? "
 ?
A__inference_conv1d_layer_call_and_return_conditional_losses_16764e4?1
*?'
%?"
inputs?????????!?
? ")?&
?
0?????????! 
? ?
&__inference_conv1d_layer_call_fn_16748X4?1
*?'
%?"
inputs?????????!?
? "??????????! ?
B__inference_dense_2_layer_call_and_return_conditional_losses_18114]%&0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????
? {
'__inference_dense_2_layer_call_fn_18103P%&0?-
&?#
!?
inputs??????????
? "???????????
D__inference_embedding_layer_call_and_return_conditional_losses_16739`/?,
%?"
 ?
inputs?????????!	
? "*?'
 ?
0?????????!?
? ?
)__inference_embedding_layer_call_fn_16730S/?,
%?"
 ?
inputs?????????!	
? "??????????!??
D__inference_lstm_cell_layer_call_and_return_conditional_losses_18230?021??
x?u
 ?
inputs????????? 
M?J
#? 
states/0??????????
#? 
states/1??????????
p 
? "v?s
l?i
?
0/0??????????
G?D
 ?
0/1/0??????????
 ?
0/1/1??????????
? ?
D__inference_lstm_cell_layer_call_and_return_conditional_losses_18376?021??
x?u
 ?
inputs????????? 
M?J
#? 
states/0??????????
#? 
states/1??????????
p
? "v?s
l?i
?
0/0??????????
G?D
 ?
0/1/0??????????
 ?
0/1/1??????????
? ?
)__inference_lstm_cell_layer_call_fn_18131?021??
x?u
 ?
inputs????????? 
M?J
#? 
states/0??????????
#? 
states/1??????????
p 
? "f?c
?
0??????????
C?@
?
1/0??????????
?
1/1???????????
)__inference_lstm_cell_layer_call_fn_18148?021??
x?u
 ?
inputs????????? 
M?J
#? 
states/0??????????
#? 
states/1??????????
p
? "f?c
?
0??????????
C?@
?
1/0??????????
?
1/1???????????
?__inference_lstm_layer_call_and_return_conditional_losses_17085~021O?L
E?B
4?1
/?,
inputs/0?????????????????? 

 
p 

 
? "&?#
?
0??????????
? ?
?__inference_lstm_layer_call_and_return_conditional_losses_17464~021O?L
E?B
4?1
/?,
inputs/0?????????????????? 

 
p

 
? "&?#
?
0??????????
? ?
?__inference_lstm_layer_call_and_return_conditional_losses_17715n021??<
5?2
$?!
inputs????????? 

 
p 

 
? "&?#
?
0??????????
? ?
?__inference_lstm_layer_call_and_return_conditional_losses_18094n021??<
5?2
$?!
inputs????????? 

 
p

 
? "&?#
?
0??????????
? ?
$__inference_lstm_layer_call_fn_16801q021O?L
E?B
4?1
/?,
inputs/0?????????????????? 

 
p 

 
? "????????????
$__inference_lstm_layer_call_fn_16812q021O?L
E?B
4?1
/?,
inputs/0?????????????????? 

 
p

 
? "????????????
$__inference_lstm_layer_call_fn_16823a021??<
5?2
$?!
inputs????????? 

 
p 

 
? "????????????
$__inference_lstm_layer_call_fn_16834a021??<
5?2
$?!
inputs????????? 

 
p

 
? "????????????
H__inference_max_pooling1d_layer_call_and_return_conditional_losses_16782?E?B
;?8
6?3
inputs'???????????????????????????
? ";?8
1?.
0'???????????????????????????
? ?
H__inference_max_pooling1d_layer_call_and_return_conditional_losses_16790`3?0
)?&
$?!
inputs?????????! 
? ")?&
?
0????????? 
? ?
-__inference_max_pooling1d_layer_call_fn_16769wE?B
;?8
6?3
inputs'???????????????????????????
? ".?+'????????????????????????????
-__inference_max_pooling1d_layer_call_fn_16774S3?0
)?&
$?!
inputs?????????! 
? "?????????? ?
E__inference_model_LSTM_layer_call_and_return_conditional_losses_15725r8???021%&8?5
.?+
!?
input_1?????????
p 

 
? "%?"
?
0?????????
? ?
E__inference_model_LSTM_layer_call_and_return_conditional_losses_15798r8???021%&8?5
.?+
!?
input_1?????????
p

 
? "%?"
?
0?????????
? ?
E__inference_model_LSTM_layer_call_and_return_conditional_losses_16220q8???021%&7?4
-?*
 ?
inputs?????????
p 

 
? "%?"
?
0?????????
? ?
E__inference_model_LSTM_layer_call_and_return_conditional_losses_16675q8???021%&7?4
-?*
 ?
inputs?????????
p

 
? "%?"
?
0?????????
? ?
*__inference_model_LSTM_layer_call_fn_15058e8???021%&8?5
.?+
!?
input_1?????????
p 

 
? "???????????
*__inference_model_LSTM_layer_call_fn_15652e8???021%&8?5
.?+
!?
input_1?????????
p

 
? "???????????
*__inference_model_LSTM_layer_call_fn_15864d8???021%&7?4
-?*
 ?
inputs?????????
p 

 
? "???????????
*__inference_model_LSTM_layer_call_fn_15893d8???021%&7?4
-?*
 ?
inputs?????????
p

 
? "??????????y
__inference_restore_fn_18436Y9K?H
A?>
?
restored_tensors_0
?
restored_tensors_1	
? "? ?
__inference_save_fn_18428?9&?#
?
?
checkpoint_key 
? "???
`?]

name?
0/name 
#

slice_spec?
0/slice_spec 

tensor?
0/tensor
`?]

name?
1/name 
#

slice_spec?
1/slice_spec 

tensor?
1/tensor	?
#__inference_signature_wrapper_15835?8???021%&;?8
? 
1?.
,
input_1!?
input_1?????????"1?.
,
dense_2!?
dense_2?????????